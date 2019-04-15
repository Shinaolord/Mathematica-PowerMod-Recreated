(* ::Package:: *)

(* ::Input:: *)
(*pmod::basenonpos="`1` is not a positive integer.";*)
(*pmod::expnonpos="`1` is not a positive integer.";*)
(*pmod::modnonpos="`1` is not a positive integer.";*)
(**)
(**)
(*pmod[a_Integer, b_Integer, mod_Integer]/;Which [a<=0,Message[pmod::basenonpos,a];False,b<=0,Message[pmod::expnonpos];False,mod<=0,Message[pmod::modnonpos];False,True,True]:= *)
(*Module[{l, z, binarylist = IntegerDigits[b, 2], val = 1},*)
(*  l = Length[binarylist];*)
(*  Clear[z];*)
(*  z[1] = a;*)
(*  z[j_]:=z[j]= Mod[z[j - 1]^2, mod];*)
(*If[l>=1024,Do[z[k],{k,1000,l}],z[l]];*)
(*  Do[*)
(*   	If[*)
(*      	binarylist[[j]] == 1,*)
(*           val *= z[l-j+1]; val = Mod[val, mod]],*)
(*  {j, 1, l}]; (* l-j+1, because we want when j=1, if binarylist[[j]]=1, val*=z[j], when j=2, want val*=z[j-1],... j=l, val*=z[1]. *)
(*    	 This is a consequence of mathematica lists starting at 1, not 0 *)*)
(*val]*)