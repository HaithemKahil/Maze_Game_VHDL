/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "F:/ProjectsDirectory/Embedded_Systems/Detecteurquence/encodeurP.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_3235881038_2034350609_p_0(char *t0)
{
    char t19[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    int t9;
    int t10;
    int t11;
    int t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned char t17;
    unsigned char t18;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(20, ng0);
    t1 = (t0 + 3032);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(21, ng0);
    t1 = xsi_get_transient_memory(2U);
    memset(t1, 0, 2U);
    t2 = t1;
    memset(t2, (unsigned char)8, 2U);
    t3 = (t0 + 3096);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(22, ng0);
    t8 = xsi_vhdl_pow(2, 2);
    t9 = (t8 - 1);
    t1 = (t0 + 4932);
    *((int *)t1) = t9;
    t2 = (t0 + 4936);
    *((int *)t2) = 0;
    t10 = t9;
    t11 = 0;

LAB2:    if (t10 >= t11)
        goto LAB3;

LAB5:    t1 = (t0 + 2952);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(23, ng0);
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t3 = (t0 + 4932);
    t12 = *((int *)t3);
    t13 = (t12 - 3);
    t14 = (t13 * -1);
    xsi_vhdl_check_range_of_index(3, 0, -1, *((int *)t3));
    t15 = (1U * t14);
    t16 = (0 + t15);
    t5 = (t4 + t16);
    t17 = *((unsigned char *)t5);
    t18 = (t17 == (unsigned char)3);
    if (t18 != 0)
        goto LAB6;

LAB8:
LAB7:
LAB4:    t1 = (t0 + 4932);
    t10 = *((int *)t1);
    t2 = (t0 + 4936);
    t11 = *((int *)t2);
    if (t10 == t11)
        goto LAB5;

LAB10:    t8 = (t10 + -1);
    t10 = t8;
    t3 = (t0 + 4932);
    *((int *)t3) = t10;
    goto LAB2;

LAB6:    xsi_set_current_line(24, ng0);
    t6 = (t0 + 4932);
    t7 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t19, *((int *)t6), 2);
    t20 = (t0 + 3096);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t7, 2U);
    xsi_driver_first_trans_fast_port(t20);
    xsi_set_current_line(25, ng0);
    t1 = (t0 + 3032);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(26, ng0);
    goto LAB5;

LAB9:    goto LAB7;

}


extern void work_a_3235881038_2034350609_init()
{
	static char *pe[] = {(void *)work_a_3235881038_2034350609_p_0};
	xsi_register_didat("work_a_3235881038_2034350609", "isim/didact_top_isim_beh.exe.sim/work/a_3235881038_2034350609.didat");
	xsi_register_executes(pe);
}
