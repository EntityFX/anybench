/*
 * Copyright (C) 2010 Kostas Petrikas, All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer
 *    in this position and unchanged.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. The name(s) of the author(s) may not be used to endorse or promote
 *    products derived from this software without specific prior written
 *    permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR(S) ``AS IS'' AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL THE AUTHOR(S) BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */

#include <sys/types.h>
#include <sys/param.h>
#include <sys/sysctl.h>
#include <sys/user.h>
#include <sys/sysctl.h>

#include <limits.h>
#include <kvm.h>
#include <string.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>

#include "sys/sysinfo.h"

#define NLOADS 3
#define UNIT_S 1024 /*Kb*/
#define R_IGNORE -1

/*the macros*/
#define R_ERROR(_EC) {if(_EC > R_IGNORE)errno = _EC; return -1;}
#define GETSYSCTL(name, var) getsysctl(name, &(var), sizeof(var))
#define PAGE_2_UNIT(_PAGE) (((double)_PAGE * page_s) / UNIT_S)

/*sysctl wrapper*/
static int getsysctl(char *name, void *ptr, size_t len){   
	size_t nlen = len;
	if (sysctlbyname(name, ptr, &nlen, NULL, 0) == -1)
		return -1;
	
	if (nlen != len)
		return -1;

	return 0;
}

int sysinfo(struct sysinfo *info){
	kvm_t *kvmh;
	double load_avg[NLOADS];
	int page_s = getpagesize();
	
	if (info == NULL)
		R_ERROR(EFAULT);

	memset(info, 0, sizeof(struct sysinfo));	
	info -> mem_unit = UNIT_S;
	
	/*kvm init*/
	if ((kvmh = kvm_open(NULL, "/dev/null", "/dev/null",
	O_RDONLY, "kvm_open")) == NULL)
		R_ERROR(0);
	
	/*load averages*/
	if (kvm_getloadavg(kvmh, load_avg, NLOADS) == -1)
		R_ERROR(0);
	
	info -> loads[0] = (u_long)((float)load_avg[0] * USHRT_MAX);
	info -> loads[1] = (u_long)((float)load_avg[1] * USHRT_MAX);
	info -> loads[2] = (u_long)((float)load_avg[2] * USHRT_MAX);
	
	/*swap space*/
	struct kvm_swap k_swap;

	if (kvm_getswapinfo(kvmh, &k_swap, 1, 0) == -1)
		R_ERROR(0);

	info -> totalswap = 
	(u_long)PAGE_2_UNIT(k_swap.ksw_total);
	info -> freeswap = info -> totalswap -
	(u_long)PAGE_2_UNIT(k_swap.ksw_used);
	
	/*processes*/
	int n_procs;	
	
	if (kvm_getprocs(kvmh, KERN_PROC_ALL, 0, &n_procs) == NULL)
		R_ERROR(0);
		
	info -> procs = (u_short)n_procs;
	
	/*end of kvm session*/
	if (kvm_close(kvmh) == -1)
		R_ERROR(0);
	
	/*uptime*/
	struct timespec ts;
	
	if (clock_gettime(CLOCK_UPTIME, &ts) == -1)
		R_ERROR(R_IGNORE);
		
	info -> uptime = (long)ts.tv_sec;	
	
	/*ram*/
	int total_pages,
	    free_pages,
	    active_pages,
	    inactive_pages;
	u_long shmmax;
	
	if (GETSYSCTL("vm.stats.vm.v_page_count", total_pages) == -1)
		R_ERROR(R_IGNORE);	
	if (GETSYSCTL("vm.stats.vm.v_free_count", free_pages) == -1)
		R_ERROR(R_IGNORE);		
	if (GETSYSCTL("vm.stats.vm.v_active_count", active_pages) == -1)
		R_ERROR(R_IGNORE);		
	if (GETSYSCTL("vm.stats.vm.v_inactive_count", inactive_pages) == -1)
		R_ERROR(R_IGNORE);
	if (GETSYSCTL("kern.ipc.shmmax", shmmax) == -1)
		R_ERROR(R_IGNORE);
	
	info -> totalram = (u_long)PAGE_2_UNIT(total_pages);
	info -> freeram = (u_long)PAGE_2_UNIT(free_pages);
	info -> bufferram = (u_long)PAGE_2_UNIT(active_pages);
	info -> sharedram = shmmax / UNIT_S;
	
	/*high mem (todo)*/
	info -> totalhigh = 0; /*Does this supose to refer to HMA or reserved ram?*/
	info -> freehigh = 0;
	
	return 0;
}
