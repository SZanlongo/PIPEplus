#define rand	pan_rand
#if defined(HAS_CODE) && defined(VERBOSE)
	cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC :init: */
	case 3: /* STATE 1 - /Users/liusu1011/FIU/FIU12Spring/Energid/PIPE+/proModel.pml:66 - [P0.P0_field1 = 0] (0:3:2 - 1) */
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->_8_P0.P0_field1;
		((P1 *)this)->_8_P0.P0_field1 = 0;
#ifdef VAR_RANGES
		logval(":init::P0.P0_field1", ((P1 *)this)->_8_P0.P0_field1);
#endif
		;
		/* merge: P0.P0_field2 = 2(3, 2, 3) */
		reached[1][2] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->_8_P0.P0_field2;
		((P1 *)this)->_8_P0.P0_field2 = 2;
#ifdef VAR_RANGES
		logval(":init::P0.P0_field2", ((P1 *)this)->_8_P0.P0_field2);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 4: /* STATE 3 - /Users/liusu1011/FIU/FIU12Spring/Energid/PIPE+/proModel.pml:68 - [place_P0!P0.P0_field1,P0.P0_field2] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][3] = 1;
		if (q_len(now.place_P0))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d!", now.place_P0);
		sprintf(simtmp, "%d", ((P1 *)this)->_8_P0.P0_field1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)this)->_8_P0.P0_field2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.place_P0, 0, ((P1 *)this)->_8_P0.P0_field1, ((P1 *)this)->_8_P0.P0_field2, 2);
		{ boq = now.place_P0; };
		_m = 2; goto P999; /* 0 */
	case 5: /* STATE 4 - /Users/liusu1011/FIU/FIU12Spring/Energid/PIPE+/proModel.pml:69 - [P0.P0_field1 = 1] (0:6:2 - 1) */
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->_8_P0.P0_field1;
		((P1 *)this)->_8_P0.P0_field1 = 1;
#ifdef VAR_RANGES
		logval(":init::P0.P0_field1", ((P1 *)this)->_8_P0.P0_field1);
#endif
		;
		/* merge: P0.P0_field2 = 5(6, 5, 6) */
		reached[1][5] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->_8_P0.P0_field2;
		((P1 *)this)->_8_P0.P0_field2 = 5;
#ifdef VAR_RANGES
		logval(":init::P0.P0_field2", ((P1 *)this)->_8_P0.P0_field2);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 6: /* STATE 6 - /Users/liusu1011/FIU/FIU12Spring/Energid/PIPE+/proModel.pml:71 - [place_P0!P0.P0_field1,P0.P0_field2] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][6] = 1;
		if (q_len(now.place_P0))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d!", now.place_P0);
		sprintf(simtmp, "%d", ((P1 *)this)->_8_P0.P0_field1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)this)->_8_P0.P0_field2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.place_P0, 0, ((P1 *)this)->_8_P0.P0_field1, ((P1 *)this)->_8_P0.P0_field2, 2);
		{ boq = now.place_P0; };
		_m = 2; goto P999; /* 0 */
	case 7: /* STATE 7 - /Users/liusu1011/FIU/FIU12Spring/Energid/PIPE+/proModel.pml:74 - [P2.P2_field1 = 2] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][7] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->_8_P2.P2_field1;
		((P1 *)this)->_8_P2.P2_field1 = 2;
#ifdef VAR_RANGES
		logval(":init::P2.P2_field1", ((P1 *)this)->_8_P2.P2_field1);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: /* STATE 8 - /Users/liusu1011/FIU/FIU12Spring/Energid/PIPE+/proModel.pml:75 - [place_P2!P2.P2_field1] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][8] = 1;
		if (q_len(now.place_P2))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d!", now.place_P2);
		sprintf(simtmp, "%d", ((P1 *)this)->_8_P2.P2_field1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.place_P2, 0, ((P1 *)this)->_8_P2.P2_field1, 0, 1);
		{ boq = now.place_P2; };
		_m = 2; goto P999; /* 0 */
	case 9: /* STATE 9 - /Users/liusu1011/FIU/FIU12Spring/Energid/PIPE+/proModel.pml:76 - [P2.P2_field1 = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][9] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->_8_P2.P2_field1;
		((P1 *)this)->_8_P2.P2_field1 = 0;
#ifdef VAR_RANGES
		logval(":init::P2.P2_field1", ((P1 *)this)->_8_P2.P2_field1);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: /* STATE 10 - /Users/liusu1011/FIU/FIU12Spring/Energid/PIPE+/proModel.pml:77 - [place_P2!P2.P2_field1] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][10] = 1;
		if (q_len(now.place_P2))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d!", now.place_P2);
		sprintf(simtmp, "%d", ((P1 *)this)->_8_P2.P2_field1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.place_P2, 0, ((P1 *)this)->_8_P2.P2_field1, 0, 1);
		{ boq = now.place_P2; };
		_m = 2; goto P999; /* 0 */
	case 11: /* STATE 11 - /Users/liusu1011/FIU/FIU12Spring/Energid/PIPE+/proModel.pml:78 - [(run Main())] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][11] = 1;
		if (!(addproc(II, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: /* STATE 12 - /Users/liusu1011/FIU/FIU12Spring/Energid/PIPE+/proModel.pml:79 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][12] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Main */
	case 13: /* STATE 1 - /Users/liusu1011/FIU/FIU12Spring/Energid/PIPE+/proModel.pml:35 - [(place_P0?[P0.P0_field1,P0.P0_field2])] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][1] = 1;
		if (!(not_RV(now.place_P0) && \
		(q_len(now.place_P0) > 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: /* STATE 2 - /Users/liusu1011/FIU/FIU12Spring/Energid/PIPE+/proModel.pml:37 - [place_P0?P0.P0_field1,P0.P0_field2] (0:0:2 - 1) */
		reached[0][2] = 1;
		if (boq != now.place_P0) continue;
		if (q_len(now.place_P0) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->_7_P0.P0_field1;
		(trpt+1)->bup.ovals[1] = ((P0 *)this)->_7_P0.P0_field2;
		;
		((P0 *)this)->_7_P0.P0_field1 = qrecv(now.place_P0, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("Main:P0.P0_field1", ((P0 *)this)->_7_P0.P0_field1);
#endif
		;
		((P0 *)this)->_7_P0.P0_field2 = qrecv(now.place_P0, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("Main:P0.P0_field2", ((P0 *)this)->_7_P0.P0_field2);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.place_P0);
		sprintf(simtmp, "%d", ((P0 *)this)->_7_P0.P0_field1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)this)->_7_P0.P0_field2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.place_P0))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 15: /* STATE 3 - /Users/liusu1011/FIU/FIU12Spring/Energid/PIPE+/proModel.pml:39 - [(1)] (18:0:1 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		if (!(1))
			continue;
		/* merge: T0_is_enabled = 1(0, 4, 18) */
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->_7_T0_is_enabled);
		((P0 *)this)->_7_T0_is_enabled = 1;
#ifdef VAR_RANGES
		logval("Main:T0_is_enabled", ((int)((P0 *)this)->_7_T0_is_enabled));
#endif
		;
		/* merge: .(goto)(0, 9, 18) */
		reached[0][9] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 16: /* STATE 6 - /Users/liusu1011/FIU/FIU12Spring/Energid/PIPE+/proModel.pml:40 - [place_P0!P0.P0_field1,P0.P0_field2] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][6] = 1;
		if (q_len(now.place_P0))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d!", now.place_P0);
		sprintf(simtmp, "%d", ((P0 *)this)->_7_P0.P0_field1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)this)->_7_P0.P0_field2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.place_P0, 0, ((P0 *)this)->_7_P0.P0_field1, ((P0 *)this)->_7_P0.P0_field2, 2);
		{ boq = now.place_P0; };
		_m = 2; goto P999; /* 0 */
	case 17: /* STATE 11 - /Users/liusu1011/FIU/FIU12Spring/Energid/PIPE+/proModel.pml:50 - [(T0_is_enabled)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][11] = 1;
		if (!(((int)((P0 *)this)->_7_T0_is_enabled)))
			continue;
		/* dead 1: _7_T0_is_enabled */  (trpt+1)->bup.oval = ((P0 *)this)->_7_T0_is_enabled;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->_7_T0_is_enabled = 0;
		_m = 3; goto P999; /* 0 */
	case 18: /* STATE 12 - /Users/liusu1011/FIU/FIU12Spring/Energid/PIPE+/proModel.pml:44 - [place_P1!P1.P1_field1,P1.P1_field2] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][12] = 1;
		if (q_len(now.place_P1))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d!", now.place_P1);
		sprintf(simtmp, "%d", ((P0 *)this)->_7_P1.P1_field1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)this)->_7_P1.P1_field2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.place_P1, 0, ((P0 *)this)->_7_P1.P1_field1, ((P0 *)this)->_7_P1.P1_field2, 2);
		{ boq = now.place_P1; };
		_m = 2; goto P999; /* 0 */
	case 19: /* STATE 13 - /Users/liusu1011/FIU/FIU12Spring/Energid/PIPE+/proModel.pml:45 - [T0_is_enabled = 0] (0:22:1 - 1) */
		IfNotBlocked
		reached[0][13] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->_7_T0_is_enabled);
		((P0 *)this)->_7_T0_is_enabled = 0;
#ifdef VAR_RANGES
		logval("Main:T0_is_enabled", ((int)((P0 *)this)->_7_T0_is_enabled));
#endif
		;
		/* merge: .(goto)(22, 19, 22) */
		reached[0][19] = 1;
		;
		/* merge: .(goto)(0, 23, 22) */
		reached[0][23] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 20: /* STATE 19 - /Users/liusu1011/FIU/FIU12Spring/Energid/PIPE+/proModel.pml:53 - [.(goto)] (0:22:0 - 2) */
		IfNotBlocked
		reached[0][19] = 1;
		;
		/* merge: .(goto)(0, 23, 22) */
		reached[0][23] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 21: /* STATE 17 - /Users/liusu1011/FIU/FIU12Spring/Energid/PIPE+/proModel.pml:51 - [(1)] (22:0:0 - 1) */
		IfNotBlocked
		reached[0][17] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(22, 19, 22) */
		reached[0][19] = 1;
		;
		/* merge: .(goto)(0, 23, 22) */
		reached[0][23] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 22: /* STATE 25 - /Users/liusu1011/FIU/FIU12Spring/Energid/PIPE+/proModel.pml:63 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][25] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

