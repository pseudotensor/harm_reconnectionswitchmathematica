(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



fuckit:=Module[
{foo},
checkreturn=Check[FindRoot[x^2+x+1,{x,4,10}],err];
Print[checkreturn];
errormessage=MessageList[-1];
errorroot=0;
If[errormessage=={\!\(\*
TagBox[
RowBox[{"FindRoot", "::", "\"\<cvmit\>\""}],
HoldForm]\)},errorroot=1;];
If[errormessage=={FindRoot::"lstol"},errorroot=2;];
errorroot
];
dogshit:=Module[
{foo},
error=fuckit;
Evaluate[errormessage=MessageList[-1]];
Print["Error=",error];
Print[errormessage];
];


dogshit
errormessage=MessageList[-1];
Print[errormessage];



