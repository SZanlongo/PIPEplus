#define Bound_P0 0
#define Bound_P1 0
#define Bound_P2 0

#define apple 0
#define dfa 1
#define fdf 2
typedef type_P0 {
  short P0_field1;
  int P0_field2
};

typedef type_P1 {
  short P1_field1;
  int P1_field2
};

typedef type_P2 {
  short P2_field1
};

chan place_P0 = [Bound_P0] of {type_P0};
chan place_P1 = [Bound_P1] of {type_P1};
chan place_P2 = [Bound_P2] of {type_P2};

inline pick(var, place_chan, msg){
	var = 1;
	select(var:1..len(place_chan));
	do
	::(var > 1) -> place_chan?msg; place_chan!msg; var--
	::(var == 1) -> break
	od
}
inline is_enabled_T0() {
  place_P0?[P0]
	->
  place_P0?P0;
	if
	:: true ->T0_is_enabled = true
	:: else -> { place_P0!P0}
	fi
}
inline fire_T0() {
  place_P1!P1;
  T0_is_enabled = false
}
inline T0() {
  is_enabled_T0();
  if
  ::  T0_is_enabled -> atomic{fire_T0()}
  ::  else -> skip
  fi
}
proctype Main() {
  bool T0_is_enabled = false;
  type_P0 P0;
  type_P1 P1;
  type_P2 P2;

  do
  :: atomic{ T0() }
  od
}
init {
  type_P0 P0;
  P0.P0_field1=apple;
  P0.P0_field2=2;
  place_P0!P0;
  P0.P0_field1=dfa;
  P0.P0_field2=5;
  place_P0!P0;
  type_P1 P1;
  type_P2 P2;
  P2.P2_field1=fdf;
  place_P2!P2;
  P2.P2_field1=apple;
  place_P2!P2;
run Main()
}
ltl f{}