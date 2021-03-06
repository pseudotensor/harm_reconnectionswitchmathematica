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

(* TO USE *)
(* 1) Setup gamma_jet _wrapper.nb for parameter space search settings (range, values, system, etc.*)
(* 2) Perhaps modify gamma_jet.nb or gamma_jet _reconnection.nb, but not usual *)
(* 3) Ensure all cells in these files (including this one) have *.m file and that all cells have been chosen as initialization cell and saved as such so .m file is fresh and ready *)
(* 4) Pick which system running on as below *)
(* 5) Start command line (or be in unix) and note that new files and stdout will be put in that directory *)
(* 6) run on command line as below for correct system *)



(* copy as plain text *)
(*windows laptop:*)
(*
"C:\Program Files\Wolfram Research\Mathematica\7.0\math.exe" < "d:\\Super Documents\\math\\private\\gamma_jet_superwrapper.m" > mystdout.dat
*)
(*windows home:*)
(*
"C:\\Program Files\Wolfram Research\Mathematica\7.0\math.exe"<"c:\\Users\\jon\\Documents\\Super Documents\\math\\private\\gamma_jet_superwrapper.m">mystdout.dat
*)
(*windows ki-rh42:*)
(*
"D:\\Program Files\Wolfram Research\Mathematica\7.0\math.exe"<"c:\\Users\\jon\\Documents\\Super Documents\\math\\private\\gamma_jet_superwrapper.m">mystdout.dat
*)
(*linux ki-rh42:*)
(*
math< /u/ki/jmckinne/nfsslac/codebackups/reconnectionswitch10/gamma_jet_superwrapper.m>mystdout.IDENTIFY.dat

OR if copied over all gamma_jet files to own directory for uniqueness, then do (and set IDENTIFY to what the parameter space search is):

math< gamma_jet _superwrapper.m > mystdout.IDENTIFY.dat

OR:

nohup math< gamma_jet _superwrapper.m > mystdout.IDENTIFY.dat &

Then in background and won't be killed if shell closes.
*)





(* 1 = laptop 2=home 3=ki-rh42 linux=4 *)
Unprotect[whichcomputer]
whichcomputer=1;
Protect[whichcomputer];


 AutoGeneratedPackage->Button[Automatic, Inherited, BaseStyle -> "Link", ButtonData -> "paclet:ref/Automatic"]


InitializationCell->True


Off[General::stop];
Off[NSolve::precw];
Off[FindRoot::precw];
Off[FrontEndObject::notavail];



loadallwrappernotebooks:=Module[{foo},
(* can't put semi-colons on end of << things *)
If[whichcomputer==1,
<<"C:\\Users\\jon\\Documents\\Super Documents\\math\\private\\gamma_jet.m"
<<"C:\\Users\\jon\\Documents\\Super Documents\\math\\private\\gamma_jet_reconnection.m"
<<"d:\\Super Documents\\math\\private\\gamma_jet_wrapper.m"
];
If[whichcomputer==2,
<<"C:\\Users\\jon\\Documents\\Super Documents\\math\\private\\gamma_jet.m"
<<"C:\\Users\\jon\\Documents\\Super Documents\\math\\private\\gamma_jet_reconnection.m"
<<"c:\\Users\\jon\\Documents\\Super Documents\\math\\private\\gamma_jet_wrapper.m"
];
If[whichcomputer==3,
<<"C:\\Users\\jon\\Documents\\Super Documents\\math\\private\\gamma_jet.m"
<<"C:\\Users\\jon\\Documents\\Super Documents\\math\\private\\gamma_jet_reconnection.m"
<<"c:\\Users\\jon\\Documents\\Super Documents\\math\\private\\gamma_jet_wrapper.m"
];
If[whichcomputer==4,
<<"./gamma_jet.m"
<<"./gamma_jet_reconnection.m"
<<"./gamma_jet_wrapper.m"
];
];





loadallwrappernotebooks;
dogammajetwrapper;
(* tells any scanning program for output that totally done *)
Print["SUPERALLDONE"];



