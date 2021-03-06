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



AutoGeneratedPackage->Button[Automatic, Inherited, BaseStyle -> "Link", ButtonData -> "paclet:ref/Automatic"]





(*InitializationCell->True*)


(* run via:
(* checking if saves .m automatically *)

<<"d:\\Super Documents\\math\\private\\gamma_jet_wrapper_1value.m"

then:

fullsinglecall;

or if already have notebooks read-in do:

halfsinglecall;


*)


(* setup jet functions -- takes a couple minutes since now simplify some expressions to make loop faster *)

(* 1 = laptop 2=home 3=ki-rh42 linux=4 *)
Unprotect[whichsystem];
whichsystem=4;
Protect[whichsystem];



(* ensure consts commented out and that doplot=dotest=dotestcons=0 at top of file *)
loadgammajetnb:=Module[{foo},
nb1=NotebookOpen["C:\\Users\\jon\\Documents\\Super Documents\\math\\private\\gamma_jet.nb"];
SelectionMove[nb1,All,Notebook];
SelectionEvaluate[nb1];
];
(* Setup reconnection functions *)
loadgammajetreconnectionnb:=Module[{foo},
nb2=NotebookOpen["C:\\Users\\jon\\Documents\\Super Documents\\math\\private\\gamma_jet_reconnection.nb"];
SelectionMove[nb2,All,Notebook];
SelectionEvaluate[nb2];
];


(* Setup SP functions *)
(* NOT RIGHT NOW
nb3=NotebookOpen["C:\\Users\\jon\\Documents\\Super Documents\\math\\private\\gamma_jet_sweet_parker.nb"];
SelectionMove[nb3,All,Notebook]
SelectionEvaluate[nb3]
*)


setupvaluesother:=Module[
{foo},

vrecguessoc=0.1;

(* Note that in gamma_jet _reconnection also assume Lp=Rjet *)
Ljet=5*10^(14);
Ljet= 442966;
Ljet=5.81095*10^9;
Ljet=4121778512462.72;
Ljet=10^(18);
Ljet=10^(14);
(*
Ljet=918608.365381884854286909103394;
Ljet=442966;
Ljet=5.18234465152063522338867187500*10^(10);
*)
(*
Ljet=442966;

*)
(*Ljet=5.18234465152063522338867187500*10^(10);*)
(*
Ljet=442966;
Ljet=1.2050549180630953`*^10;
Ljet=8.192370316116459`*^6;
Ljet=1.772572893453429`*^13;
Ljet=3.675901200950694`*^13;
Ljet=3.278257091761421`*^14;
*)
(*

Ljet=1.20505*10^(10);
Ljet=1.58082*10^(14);
*)
(*Ljet=10^(25);*)
(*Ljet=rl;*)
myfakemu=10^4;
(*myfakemu=50;*)

thebr0gauss=3.2*10^(15);
mynu=3/4;
myrmono=3*10^(10);

mythfp=Pi/2;
(*
mythfp=0.000100000000000000004792173602386;
mythfp=0.000345115199474988181699286471371;
*)
(*

*)
(*mythfp=0.000345115199474988181699286471371;*)

mylmode=2;
mymmode=0;

mylmode=0;
mymmode=0.1;


(* ensure precision is kept *)
Ljet=SetPrecision[Ljet,lowestprec];
myfakemu=SetPrecision[myfakemu,lowestprec];
thebr0gauss=SetPrecision[thebr0gauss,lowestprec];
mynu=SetPrecision[mynu,lowestprec];
myrmono=SetPrecision[myrmono,lowestprec];
mythfp=SetPrecision[mythfp,lowestprec];
mylmode=SetPrecision[mylmode,lowestprec];
mymmode=SetPrecision[mymmode,lowestprec];

];





fullsinglesetupconstants:=Module[
{foo},

(* get normal constants *)
getconstants;
(* setup values -- MUST COME BEFORE setting consts *)
(*setupvaluesothertest*)
setupvaluesother;
(* Set consts *)
(* msun->1.989*10^(33), lsun->3.89*10^(33),rsun->695500*10^3*100,G->6.672*10^(-8) ,c->2.99792458*10^(10)*)
consts={etaeff->0.1,lmode->mylmode,mmode->mymmode,thfp->mythfp,M->3*msun,Mdot->0.1*msun,AM->0.2,mueq->myfakemu,C0->3,C1->2,C2->0.4,nucoll->mynu,rmono->myrmono,Br0gauss->thebr0gauss, Br0->Br0gauss/Sqrt[4*Pi],rfp->rl ,Bphi0->Br0*1.00,rfinal->10^(15),thfinal->0.02};
consts=SetPrecision[consts,lowestprec]; (* lowestprec set when running entire gamma_jet _reconnection.nb notebook *)
(*consts={eta->0.1,thfp->mythfp,M->14*msun,Mdot->1.5*10^(18),AM->0.2,mueq->myfakemu,C0->3,C1->2,C2->0.4,nucoll->mynu,rmono->myrmono,Br0gauss->thebr0gauss, Br0->Br0gauss/Sqrt[4*Pi],rfp->rl ,Bphi0->Br0*1.00};*)
];



fullsinglegetnotebooks:=Module[
{foo},
(* can't put semi-colons on end of << things *)
If[whichsystem==1,
<<"C:\\Users\\jon\\Documents\\Super Documents\\math\\private\\gamma_jet.m"
<<"C:\\Users\\jon\\Documents\\Super Documents\\math\\private\\gamma_jet_reconnection.m"
];
If[whichsystem==2,
<<"C:\\Users\\jon\\Documents\\Super Documents\\math\\private\\gamma_jet.m"
<<"C:\\Users\\jon\\Documents\\Super Documents\\math\\private\\gamma_jet_reconnection.m"
];
If[whichsystem==3,
<<"C:\\Users\\jon\\Documents\\Super Documents\\math\\private\\gamma_jet.m"
<<"C:\\Users\\jon\\Documents\\Super Documents\\math\\private\\gamma_jet_reconnection.m"
];
If[whichsystem==4,
<<"./gamma_jet.m"
<<"./gamma_jet_reconnection.m"
];
];


(* full call *)
fullsinglecall:=Module[
{foo},
doprintdebug=1;

fullsinglegetnotebooks;

includediss=1;


fullsinglesetupconstants;

timetorun=Timing[gammajetreconnectionall1][[1]];
Print["timetorun=",timetorun];

];
(* half call = full call without reloading notebooks *)
halfsinglecall:=Module[
{foo},
doprintdebug=1;

(*fullsinglegetnotebooks;*)

fullsinglesetupconstants;

timetorun=Timing[gammajetreconnectionall1][[1]];
Print["timetorun=",timetorun];
];


(* DONE *)


(* OTHER CHECKS *)


Otherchecks1:=Module[{foo},
rtest=10^(15)//.consts;
thfp=Pi/2;
thtest=thofr[rtest,thfp]//.consts;
Print[sigmatest[rtest,thtest]//.consts];
];


Otherchecks2:=Module[{foo},
thfp=Pi/2;
rtest=rfp//.consts;
thtest=thofr[rtest,thfp]//.consts;
Print[mymufp=mufp[rtest,thtest]//.consts];
];


Otherchecks3:=Module[{foo},
thfp=Pi/2;
rtest=rfp//.consts;
thtest=thofr[rtest,thfp]//.consts;
Print[mymufp=mutest[rtest,thtest]//.consts];
Print[mygammafinal[rtest,thtest]//.consts];
Print[omegaf[rtest,thtest]//.consts];
Print[Rfunc[rtest,thtest]//.consts];
Print[Bphi[rtest,thtest]//.consts];
Print[Phi1fp[rtest,thtest]//.consts];
];


Otherchecks4:=Module[{foo},
myrho0=rho0[rtest,thtest]//.consts;
mygamma=mygammafinal[rtest,thtest]//.consts;
];


Otherchecks5:=Module[{foo},
myur=ur[rtest,thtest]//.consts;
myuh=uh[rtest,thtest]//.consts;
myup=up[rtest,thtest]//.consts;

myBr=Br[rtest,thtest]//.consts;
myBh=Bh[rtest,thtest]//.consts;
myBp=Bp[rtest,thtest]//.consts;

myBr/(myrho0*c*mygamma*0.5);
myBp/(myrho0*myup);
myBr/(myrho0*myur);
myBh/(myrho0*myuh);
];


Otherchecks6:=Module[{foo},
myBr=Br[rtest,thtest]//.consts;
myomegaf=omegaf[rtest,thtest]//.consts;
myBr*(-2*rfp*myomegaf/c)*Tan[Pi/2/2]//.consts;
];





Otherchecks7:=Module[{foo},
(mygammafinal[rtest,thtest]-Phi1fp[rtest,thtest]*omegaf[rtest,thtest]*Rfunc[rtest,thtest]*Bphi[rtest,thtest]/c^2)//.consts;
];


Otherchecks8:=Module[{foo},
thfp=Pi/2;
rtest=rfp//.consts;
thtest=thofr[rtest,thfp]//.consts;
Print[mybsq=bsq[rtest,thtest]//.consts];
Print[myBr=Br[rtest,thtest]//.consts];
Print[myrhobcsq=c^2*rho0[rtest,thtest]//.consts];
zetawrong=(mybsq/2)/myrhobcsq;
zetawrong/mymufp;
];


Otherchecks9:=Module[{foo},
zeta=(myBr^2/2)/myrhobcsq;
zeta/mymufp;
];


(* Check things at large radius *)


Otherchecks10:=Module[{foo},
thfp=Pi/2;
rtest=Ljet//.consts;
thtest=thofr[rtest,thfp]//.consts;
Print[myBr=Br[rtest,thtest]//.consts];
Print[mybsq=bsq[rtest,thtest]//.consts];
Print[myrhobcsq=c^2*rho0[rtest,thtest]//.consts];
zeta=(mybsq/2)/myrhobcsq;
Print[mysigma=sigmatest[rtest,thtest]//.consts];
zeta/mysigma;
];


Otherchecks11:=Module[{foo},
myBphi=Bphi[rtest,thtest]//.consts;
myBp=Bp[rtest,thtest]//.consts;
myBr=Br[rtest,thtest]//.consts;
myBh=Bh[rtest,thtest]//.consts;
myup=up[rtest,thtest]//.consts;
myur=ur[rtest,thtest]//.consts;
myuh=uh[rtest,thtest]//.consts;
myuphi=uphi[rtest,thtest]//.consts;
];


(* checking what bp and bphi terms look like so know field geometry in comoving frame *)


Otherchecks12:=Module[{foo},
udotB=(myBp*myup+myBphi*myuphi);
myBt=0;
myut=gammavalue*c;
mybt=(myBt+udotB/c*myut/c)/gammavalue;
mybp=(myBp+udotB/c*myup/c)/gammavalue;
mybr=(myBr+udotB/c*myur/c)/gammavalue;
mybh=(myBh+udotB/c*myuh/c)/gammavalue;
mybphi=(myBphi+udotB/c*myuphi/c)/gammavalue;
];


(* check which terms dominate at large radius *)


Otherchecks13:=Module[{foo},
(myBphi)/gammavalue;
(udotB/c*myuphi)/gammavalue;
];


Otherchecks14:=Module[{foo},
(myBp*myup);
(myBphi*myuphi);
];


(* checking what term dominates b^2 *)


Otherchecks15:=Module[{foo},
Bsq[rtest,thtest]/gammavalue^2//.consts;
myBp^2/gammavalue^2//.consts;
myBphi^2/gammavalue^2//.consts;
(myup*myBp/c)^2/gammavalue^2//.consts;
(myuphi*myBphi/c)^2/gammavalue^2//.consts;
];





Otherchecks16:=Module[{foo},
(* power *)
powerjet=powervsth[rtest,thtest,consts]/.solsT[[1]];
(* total effective power with standard type of extrapolation *)
powerjet*(4*Pi)/Integrate[Sin[th]*2*Pi,{th,0,thtest}];
(* total effective power if extrapolate based upon solution's angular dependence beyond where should be applied *)
powervsth[rtest,Pi/2,consts]/.solsT[[1]];
];


(* Check which term in energy flux dominates *)


Otherchecks17:=Module[{foo},
Trt1=bsqvalue*myup*myut/c;
Trt2=-mybp*mybt*c;
Trt=Trt1+Trt2;
(* below is rough and bit large, since didn't really integrate across angularly varying integrand *)
powerem=Trt*rtest^2*thtest^2/2*2*Pi;
];




