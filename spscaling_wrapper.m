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



Remove["Global`*"]



(* copy as plain text *)
(*windows laptop:*)
(*
"C:\Program Files\Wolfram Research\Mathematica\7.0\math.exe" < "d:\\Super Documents\\math\\private\\spscaling_wrapper.m" > mystdout.dat
*)
(*windows home:*)
(*
"C:\\Program Files\Wolfram Research\Mathematica\7.0\math.exe"<"c:\\Users\\jon\\Documents\\Super Documents\\math\\private\\spscaling_wrapper.m">mystdout.dat
*)
(*windows ki-rh42:*)
(*
"D:\\Program Files\Wolfram Research\Mathematica\7.0\math.exe"<"c:\\Users\\jon\\Documents\\Super Documents\\math\\private\\spscaling_wrapper.m">mystdout.dat
*)


(* 1 = laptop 2=home 3=ki-rh42 *)


whichsystem=1;


 AutoGeneratedPackage->Button[Automatic, Inherited, BaseStyle -> "Link", ButtonData -> "paclet:ref/Automatic"];


Off[General::stop];
Off[NSolve::precw];
Off[FindRoot::precw];
Off[FrontEndObject::notavail];
(* can't put semi-colons on end of << things *)
If[whichsystem==1,
<<"C:\\Users\\jon\\Documents\\Super Documents\\math\\private\\gamma_jet_sweet_parker.m"
<<"d:\\Super Documents\\math\\private\\spscaling.m"
];
If[whichsystem==2,
<<"C:\\Users\\jon\\Documents\\Super Documents\\math\\private\\gamma_jet_sweet_parker.m"
<<"c:\\Users\\jon\\Documents\\Super Documents\\math\\private\\spscaling.m"
];
If[whichsystem==3,
<<"C:\\Users\\jon\\Documents\\Super Documents\\math\\private\\gamma_jet_sweet_parker.m"
<<"c:\\Users\\jon\\Documents\\Super Documents\\math\\private\\spscaling.m"
];
doallscalingplot;



