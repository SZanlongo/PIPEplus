	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: /* STATE 2 */
		;
		((P1 *)this)->_8_P0.P0_field2 = trpt->bup.ovals[1];
		((P1 *)this)->_8_P0.P0_field1 = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 4: /* STATE 3 */
		;
		_m = unsend(now.place_P0);
		;
		goto R999;

	case 5: /* STATE 5 */
		;
		((P1 *)this)->_8_P0.P0_field2 = trpt->bup.ovals[1];
		((P1 *)this)->_8_P0.P0_field1 = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 6: /* STATE 6 */
		;
		_m = unsend(now.place_P0);
		;
		goto R999;

	case 7: /* STATE 7 */
		;
		((P1 *)this)->_8_P2.P2_field1 = trpt->bup.oval;
		;
		goto R999;

	case 8: /* STATE 8 */
		;
		_m = unsend(now.place_P2);
		;
		goto R999;

	case 9: /* STATE 9 */
		;
		((P1 *)this)->_8_P2.P2_field1 = trpt->bup.oval;
		;
		goto R999;

	case 10: /* STATE 10 */
		;
		_m = unsend(now.place_P2);
		;
		goto R999;

	case 11: /* STATE 11 */
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 12: /* STATE 12 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Main */
;
		;
		
	case 14: /* STATE 2 */
		;
		XX = 1;
		unrecv(now.place_P0, XX-1, 0, ((P0 *)this)->_7_P0.P0_field1, 1);
		unrecv(now.place_P0, XX-1, 1, ((P0 *)this)->_7_P0.P0_field2, 0);
		((P0 *)this)->_7_P0.P0_field1 = trpt->bup.ovals[0];
		((P0 *)this)->_7_P0.P0_field2 = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 15: /* STATE 4 */
		;
		((P0 *)this)->_7_T0_is_enabled = trpt->bup.oval;
		;
		goto R999;

	case 16: /* STATE 6 */
		;
		_m = unsend(now.place_P0);
		;
		goto R999;

	case 17: /* STATE 11 */
		;
	/* 0 */	((P0 *)this)->_7_T0_is_enabled = trpt->bup.oval;
		;
		;
		goto R999;

	case 18: /* STATE 12 */
		;
		_m = unsend(now.place_P1);
		;
		goto R999;

	case 19: /* STATE 13 */
		;
		((P0 *)this)->_7_T0_is_enabled = trpt->bup.oval;
		;
		goto R999;
;
		
	case 20: /* STATE 19 */
		goto R999;
;
		
	case 21: /* STATE 17 */
		goto R999;

	case 22: /* STATE 25 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

