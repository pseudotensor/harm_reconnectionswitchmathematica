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


InitializationCell->True


(* can't evaluate this notebook since need to evaluate other 2 notebooks manually first *)


(*
(* This doesn't really work due to not evaluating notebook immediately *)nb1=NotebookOpen["D:\\Super Documents\\math\\private\\gamma_jet.nb"];
nb2=NotebookOpen["D:\\Super Documents\\math\\private\\gamma_jet_reconnection.nb"];
(*NotebookClose[nb]*)
(* setup jet *)
SelectionMove[nb1,All,Notebook]
SelectionEvaluate[nb1]
(* compute things *)
SelectionMove[nb2,All,Notebook]
SelectionEvaluate[nb2]
(* Things to write *)
conditionpc
conditionps
conditionpb
*)


(*
(* Test file writing *)
outputstrm=OpenWrite["c:\\evfile.txt"];
WriteString[outputstrm,CForm[conditionpc]];
WriteString[outputstrm," "];
WriteString[outputstrm,CForm[conditionpb]];
Close["c:\\evfile.txt"];
*)


(* use protected to detect if whichcomputer was set already *)
mustset=If[Attributes[whichcomputer]=={Protected},0,1]
If[mustset==1,
whichcomputer=1;
];


(* used to clear stored function results and then reload rec notebook *)
(* used inside gamma_jet _wrapper ! *)
loadrecnotebook:=Module[{foo},
(* can't put semi-colons on end of << things *)
If[whichcomputer==1,
<<"C:\\Users\\jon\\Documents\\Super Documents\\math\\private\\gamma_jet_reconnection.m"
];
If[whichcomputer==2,
<<"C:\\Users\\jon\\Documents\\Super Documents\\math\\private\\gamma_jet_reconnection.m"
];
If[whichcomputer==3,
<<"C:\\Users\\jon\\Documents\\Super Documents\\math\\private\\gamma_jet_reconnection.m"
];
If[whichcomputer==4,
<<"./gamma_jet_reconnection.m"
];
];


CloseAllFiles:=Module[
{foo,ii},
mystreams=Streams[];
For[ii=3,ii<=Dimensions[mystreams][[1]],ii++,
Print["Closing",mystreams[[ii]]];
Close[mystreams[[ii]]];
];
];



(* setup jet functions -- takes a couple minutes since now simplify some expressions to make loop faster *)
(* ensure consts commented out and that doplot=dotest=dotestcons=0 at top of file *)
(*  only needed if using front end *)
getgammajetnote:=Module[
{foo},
nb1=NotebookOpen["C:\\Users\\jon\\Documents\\Super Documents\\math\\private\\gamma_jet.nb"];
SelectionMove[nb1,All,Notebook];
SelectionEvaluate[nb1];
];


setupvaluesother:=Module[
{foo},
(* Note that in gamma_jet _reconnection also assume Lp=Rjet *)
(*Ljet=5*10^(14);*)
(*Ljet=10^(25);*)
(*Ljet=rl;*)
(*thfp=Pi/2;*)
(*thfp=Pi/4;*)
(* assumption below *)
(*Lp=Rjet;-- no longer set this, set lmode and mmode *)
testvaluenothingfoo=0;
];


(* Setup reconnection functions *)
(*  only needed if using front end *)
getgammajereconnectiontnote:=Module[
{foo},
nb2=NotebookOpen["C:\\Users\\jon\\Documents\\Super Documents\\math\\private\\gamma_jet_reconnection.nb"];
SelectionMove[nb2,All,Notebook];
SelectionEvaluate[nb2];
];


(* Setup SP functions -- not for now *)
getgammajetsweetparkernote:=Module[
{foo},
nb3=NotebookOpen["C:\\Users\\jon\\Documents\\Super Documents\\math\\private\\gamma_jet_sweet_parker.nb"];
SelectionMove[nb3,All,Notebook];
SelectionEvaluate[nb3];
];


picksystem:=Module[{foo},
(* 1=GRB 2=M87 3=GRS1915+105 *)
(* PICK SYSTEM *)
whichastrosystem=1;
Clear[rl];
If[whichastrosystem==1,prefix="grb";rin=rl;rout=10.0^Ceiling[Log[10,10^(12)*rl]];rsingle=5*10^(14);muin=50;muout=10^(6);musingle=10^4;br0in=10^8;br0out=10^(17);br0single=3.2*10^(15);nuin=10^(-4);nuout=2.0;nusingle=3/4;rmonoin=rl;rmonoout=rout;rmonosingle=3*10^(10);thfpin=Pi*10^(-4);thfpout=Pi/2;thfpsingle=Pi/2;lmodein=2.0;lmodeout=10^4;lmodesingle=2.0;mmodein=10^(-2);mmodeout=10^4;mmodesingle=0;];
If[whichastrosystem==2,prefix="m87";rin=rl;rout=10.0^Ceiling[Log[10,10^(12)*rl]];rsingle=10^8*rl;muin=50;muout=10^(6);musingle=50;br0in=10;br0out=10^6;br0single=10^3;nuin=10^(-4);nuout=2.0;nusingle=3/4;rmonoin=rl;rmonoout=rout;rmonosingle=100*rl;thfpin=Pi*10^(-4);thfpout=Pi/2;thfpsingle=Pi/2;lmodein=2.0;lmodeout=10^4;lmodesingle=2.0;mmodein=10^(-2);mmodeout=10^4;mmodesingle=0;];
If[whichastrosystem==3,prefix="grs";rin=rl;rout=10.0^Ceiling[Log[10,10^(12)*rl]];rsingle=10^8*rl;muin=50;muout=10^(6);musingle=50;br0in=10^6;br0out=10^11;br0single=10^9;nuin=10^(-4);nuout=2.0;nusingle=3/4;rmonoin=rl;rmonoout=rout;rmonosingle=100*rl;thfpin=Pi*10^(-4);thfpout=Pi/2;thfpsingle=Pi/2;lmodein=2.0;lmodeout=10^4;lmodesingle=2.0;mmodein=10^(-2);mmodeout=10^4;mmodesingle=0;];
];


setuploops:=Module[{foo},
(* AUTO-SETUP LOOPS *)
Clear[rl];
numLjet=40;
(*numLjet=1;*)
startLjet=1;
endLjet=numLjet;
endLjet=If[endLjet>numLjet,numLjet,endLjet];
If[numLjet==1,rin=rsingle;];
xs1=Log[rin];
xe1=Log[rout];
dx1=(xe1-xs1)/(numLjet-1);

nummu=1;
(*nummu=1;*)
startmu=1;
endmu=nummu;
endmu=If[endmu>nummu,nummu,endmu];
If[nummu==1,muin=musingle;];
xs2=Log[muin];
xe2=Log[muout];
dx2=(xe2-xs2)/(nummu-1);

numbr0=1;
(*numbr0=1;*)(*endbr0=numbr0;*)
startbr0=1;
endbr0=numbr0;
endbr0=If[endbr0>numbr0,numbr0,endbr0];
If[numbr0==1,br0in=br0single;];
xs3=Log[br0in];
xe3=Log[br0out];
dx3=(xe3-xs3)/(numbr0-1);

numnu=1;
startnu=1;
endnu=numnu;
endnu=If[endnu>numnu,numnu,endnu];
If[numnu==1,nuin=nusingle;];
xs4=Log[nuin];
xe4=Log[nuout];
dx4=(xe4-xs4)/(numnu-1);

numrmono=1;
startrmono=1;
endrmono=numrmono;
endrmono=If[endrmono>numrmono,numrmono,endrmono];
If[numrmono==1,rmonoin=rmonosingle;];
xs5=Log[rmonoin];
xe5=Log[rmonoout];
dx5=(xe5-xs5)/(numrmono-1);

numthfp=1;
startthfp=1;
endthfp=numthfp;
endthfp=If[endthfp>numthfp,numthfp,endthfp];
If[numthfp==1,thfpin=thfpsingle;];
xs6=Log[thfpin];
xe6=Log[thfpout];
dx6=(xe6-xs6)/(numthfp-1);

numlmode=1;
startlmode=1;
endlmode=numlmode;
endlmode=If[endlmode>numlmode,numlmode,endlmode];
If[numlmode==1,lmodein=lmodesingle;];
xs7=Log[lmodein];
xe7=Log[lmodeout];
dx7=(xe7-xs7)/(numlmode-1);

nummmode=1;
startmmode=1;
endmmode=nummmode;
endmmode=If[endmmode>nummmode,nummmode,endmmode];
If[nummmode==1,mmodein=mmodesingle;];
xs8=Log[mmodein];
xe8=Log[mmodeout];
dx8=(xe8-xs8)/(nummmode-1);

(* test *)
i=numLjet;
j=nummu;
k=numbr0;
l=nummu;
m=numrmono;
n=numthfp;
o=numlmode;
p=nummmode;
(* just test *)
i=1;
j=1;
k=1;
l=1;
m=1;
n=1;
o=1;
p=1;
x1=xs1+If[i==1,0,(i-1)*dx1];
x2=xs2+If[j==1,0,(j-1)*dx2];
x3=xs3+If[k==1,0,(k-1)*dx3];
x4=xs4+If[l==1,0,(l-1)*dx4];
x5=xs5+If[m==1,0,(m-1)*dx5];
x6=xs6+If[n==1,0,(n-1)*dx6];
x7=xs7+If[o==1,0,(o-1)*dx7];
x8=xs8+If[p==1,0,(p-1)*dx8];
Ljet=N[Exp[x1]];
myfakemu=N[Exp[x2]];
thebr0gauss=N[Exp[x3]];
mynu=N[Exp[x4]];
myrmono=N[Exp[x5]];
mythfp=N[Exp[x6]];
mymmode=N[Exp[x7]];
mylmode=N[Exp[x8]];

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


(* test *)
(*myfile="C:\\Users\\jon\\Documents\\evfilenew_vs_Ljet_fakemu_single_grs1915.txt"
outputstrm=OpenWrite[myfile];
WriteString[outputstrm,"hello"];
Close[myfile];
*)


setupfilename:=Module[{foo},
fakerl=1;
myfile=StringJoin[prefix,"_",ToString[CForm[N[numLjet,4]]],"_",ToString[CForm[N[nummu,4]]],"_",ToString[CForm[N[numbr0,4]]],"_",ToString[CForm[N[numnu,4]]],"_",ToString[CForm[N[numrmono,4]]],"_",ToString[CForm[N[numthfp,4]]],"_",ToString[CForm[N[numlmode,4]]],"_",ToString[CForm[N[nummmode,4]]],ToString[CForm[N[startLjet,4]]],"_",ToString[CForm[N[startmu,4]]],"_",ToString[CForm[N[startbr0,4]]],"_",ToString[CForm[N[startnu,4]]],"_",ToString[CForm[N[startrmono,4]]],"_",ToString[CForm[N[startthfp,4]]],"_",ToString[CForm[N[startlmode,4]]],"_",ToString[CForm[N[startmmode,4]]],ToString[CForm[N[endLjet,4]]],"_",ToString[CForm[N[endmu,4]]],"_",ToString[CForm[N[endbr0,4]]],"_",ToString[CForm[N[endnu,4]]],"_",ToString[CForm[N[endrmono,4]]],"_",ToString[CForm[N[endthfp,4]]],"_",ToString[CForm[N[endlmode,4]]],"_",ToString[CForm[N[endmmode,4]]],"_",ToString[CForm[N[rin//.{rl->fakerl},4]]],"_",ToString[CForm[N[rout//.{rl->fakerl},4]]],"_",ToString[CForm[N[rsingle//.{rl->fakerl},4]]],"_",ToString[CForm[N[muin,4]]],"_",ToString[CForm[N[muout,4]]],"_",ToString[CForm[N[musingle,4]]],"_",ToString[CForm[N[br0in,4]]],"_",ToString[CForm[N[br0out,4]]],"_",ToString[CForm[N[nuin,4]]],"_",ToString[CForm[N[nuout,4]]],"_",ToString[CForm[N[nusingle,4]]],"_",ToString[CForm[N[rmonoin//.{rl->fakerl},4]]],"_",ToString[CForm[N[rmonoout//.{rl->fakerl},4]]],"_",ToString[CForm[N[rmonosingle//.{rl->fakerl},4]]],"_",ToString[CForm[N[thfpin,4]]],"_",ToString[CForm[N[thfpout,4]]],"_",ToString[CForm[N[thfpsingle,4]]],"_",ToString[CForm[N[lmodein,4]]],"_",ToString[CForm[N[lmodeout,4]]],"_",ToString[CForm[N[lmodesingle,4]]],"_",ToString[CForm[N[mmodein,4]]],"_",ToString[CForm[N[mmodeout,4]]],"_",ToString[CForm[N[mmodesingle,4]]]];
];




(* Setup inside-loop values for parameters *)
loopsetupvaluesall1:=Module[
{foo},
(* Setup mmode *)
mymmode=0.0;
xs8num=xs8//.preconsts;
dx8num=dx8//.preconsts;
x8=(xs8num+If[p==1,0,(p-1)*dx8num]);
mymmode=N[Exp[x8]];
(* Setup lmode *)
mylmode=1.0;
xs7num=xs7//.preconsts;
dx7num=dx7//.preconsts;
x7=(xs7num+If[o==1,0,(o-1)*dx7num]);
mylmode=N[Exp[x7]];
(* Setup thfp *)
mythfp=Pi/2;
xs6num=xs6//.preconsts;
dx6num=dx6//.preconsts;
x6=(xs6num+If[n==1,0,(n-1)*dx6num]);
mythfp=N[Exp[x6]];
(* Setup rmono *)
myrmono=3*10^(10);
xs5num=xs5//.preconsts;
dx5num=dx5//.preconsts;
x5=(xs5num+If[m==1,0,(m-1)*dx5num]);
myrmono=N[Exp[x5]];
(* Setup nu *)
mynu=3/4;
xs4num=xs4//.preconsts;
dx4num=dx4//.preconsts;
x4=(xs4num+If[l==1,0,(l-1)*dx4num]);
mynu=N[Exp[x4]];
(* Setup Br0 *)
thebr0gauss=3.2*10^(15);
xs3num=xs3//.preconsts;
dx3num=dx3//.preconsts;
x3=(xs3num+If[k==1,0,(k-1)*dx3num]);
thebr0gauss=N[Exp[x3]];
(* Setup mu *)
myfakemu=10000;
xs2num=xs2//.preconsts;
dx2num=dx2//.preconsts;
x2=(xs2num+If[j==1,0,(j-1)*dx2num]);
myfakemu=N[Exp[x2]];
(* Now can override Ljet, thfp, or Lp BEFORE setupvalues called *)
Ljet=6*10^(14);
xs1num=xs1//.preconsts;
dx1num=dx1//.preconsts;
x1=(xs1num+If[i==1,0,(i-1)*dx1num]);
Ljet=N[Exp[x1]];
(* Get expected polar field from McKinney 2005 for high spin *)
rhostar=Mdot/(AM*(G*M/c^2)^2*c)//.preconsts;
BGauss=Sqrt[rhostar*c^2*8*Pi];

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


(* Setup system constants *)
setupsystemconstants:=Module[
{foo},
(* get normal constants *)
getconstants;

(* set pre-constants that are not parameters of model looped over *)
(* msun->1.989*10^(33), lsun->3.89*10^(33),rsun->695500*10^3*100,G->6.672*10^(-8) ,c->2.99792458*10^(10)*)
(* Below for GRB collapsar *)
If[whichastrosystem==1,preconsts={etaeff->0.1,M->3*msun,Mdot->0.1*msun,AM->0.2,C0->3,C1->2,C2->0.4, rfp->rl ,Bphi0->Br0*1.00};];
(* below for AGN like M87 *)
If[whichastrosystem==2,preconsts={etaeff->0.01,M->6*10^9*msun,Mdot->10^(-2)*msun/(60*60*24*365.25),AM->0.2,C0->3,C1->2,C2->0.4, rfp->rl ,Bphi0->Br0*1.00};];
(* Below for GRS1915+105 *)
If[whichastrosystem==3,preconsts={etaeff->0.1,M->14*msun,Mdot->1.5*10^(18),AM->0.2,C0->3,C1->2,C2->0.4,rfp->rl ,Bphi0->Br0*1.00};];
(* force precision on consts *)
preconsts=Table[SetPrecision[preconsts[[ii]],lowestprec],{ii,1,Dimensions[preconsts][[1]]}];

(* set parameters such as mylmode, etc. -- must come before setting consts *)
loopsetupvaluesall1;

(*setupvaluesothertest*)
setupvaluesother;

postconsts={lmode->mylmode,mmode->mymmode,thfp->mythfp,mueq->myfakemu,nucoll->mynu,rmono->myrmono,Br0gauss->thebr0gauss, Br0->Br0gauss/Sqrt[4*Pi]}//.preconsts;
(* force precision on consts *)
postconsts=Table[SetPrecision[postconsts[[ii]],lowestprec],{ii,1,Dimensions[postconsts][[1]]}];

consts=Join[preconsts,postconsts];
];


(* check gammavalue is >=1 *)
checkgamma[gammavalue_]:=If[gammavalue<1.0 ||Abs[Im[gammavalue]]>10^(-15),Break[];Print["BADGAMMA"];];
(* Setup output text wrapper *)
myO[var_]:=(CForm[N[var]])//.{Overflow[]->"1E+300",Underflow[]->"1E-300"};


(* Write stuff*)
WriteStuffall1:=Module[
{foo},
(*Print["WriteStrings"];*)
WriteString[outputstrm,myO[i]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[j]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[k]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[l]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[m]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[n]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[o]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[p]];WriteString[outputstrm," "];

WriteString[outputstrm,myO[computetime]];WriteString[outputstrm," "];

WriteString[outputstrm,myO[Ljet]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[myfakemu]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[thebr0gauss]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[mynu]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[myrmono]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[mythfp]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[thetajet]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[mylmode]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[mymmode]];WriteString[outputstrm," "];

WriteString[outputstrm,myO[gammavalue]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[rhobvalue]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[bsqvalue]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[Bphivalue]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[Brvalue]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[bgaussvalue]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[omegafvalue]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[Rjet]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[Lp]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[powerjet]];WriteString[outputstrm," "]; (* extra *)

WriteString[outputstrm,myO[rhobingoing]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[rhobcenter]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[rhobrad]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[bgaussrad]];WriteString[outputstrm," "]; (* extra *)

WriteString[outputstrm,myO[ne[rhobingoing]]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[ne[rhobcenter]]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[ne[rhobrad]]];WriteString[outputstrm," "]; (* extra *)

WriteString[outputstrm,myO[tauradscanum//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[tauradabsnum//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[damptauradnum//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[damptaurad2num//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[Habsnum//.solsT]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[Hscanum//.solsT]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[(sigmaesnum/sigmat)//.solsT]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[(sigmaBnum/sigmat)//.solsT]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[(sigmaknnum/sigmat)//.solsT]];WriteString[outputstrm," "]; (* extra *)

WriteString[outputstrm,myO[sigmaffnum//.solsT]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[sigmasynchnum//.solsT]];WriteString[outputstrm," "]; (* extra *)

WriteString[outputstrm,myO[Qtotnum//.solsT]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[Qradnum//.solsT]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[Uradnum//.solsT]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[nradnum//.solsT]];WriteString[outputstrm," "]; (* extra *)

WriteString[outputstrm,myO[Pradnum//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[Ppairsnum//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[Pbaryonnum//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[Penum//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[Pnunum//.solsT]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[Pgnum//.solsT]];WriteString[outputstrm," "];

WriteString[outputstrm,myO[Uradnum//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[Upairsnum//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[Ubaryonnum//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[Uenum//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[Ununum//.solsT]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[Ugnum//.solsT]];WriteString[outputstrm," "];


WriteString[outputstrm,myO[(T//.solsT)]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[(npairs//.solsT)]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[(T//.solsTrad)]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[(npairs//.solsTrad)]];WriteString[outputstrm," "]; (* extra *)

WriteString[outputstrm,myO[taualongjet//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[Tann//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[Tpl//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[Deltapetp//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[vdprime//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[Rl//.solsT]];WriteString[outputstrm," "];

WriteString[outputstrm,myO[Lundquistc//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[Lundquistnu//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[Lundquists//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[Lundquistb//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[Lundquistt//.solsT]];WriteString[outputstrm," "];

WriteString[outputstrm,myO[Deltaspc//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[Deltaspnu//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[Deltasps//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[Deltaspb//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[Deltaspt//.solsT]];WriteString[outputstrm," "];

WriteString[outputstrm,myO[conditionpc//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[conditionpnu//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[conditionps//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[conditionpb//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[conditionpt//.solsT]];WriteString[outputstrm," "];

WriteString[outputstrm,myO[vrecc//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[vrecnu//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[vrecs//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[vrecb//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[vrect//.solsT]];WriteString[outputstrm," "];

WriteString[outputstrm,myO[Eco//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[Eobs//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[Esynobs//.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[Eobsickev/.solsT]];WriteString[outputstrm," "];

WriteString[outputstrm,myO[tauspc/.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[tausps/.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[tauspt/.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[tauL/.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[taupetp/.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[taubet/.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[taubef/.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[taubeR/.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[TdiffacrossSPc/.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[TdiffacrossSPs/.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[TdiffacrossSPt/.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[Tdiffalong/.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[Ttransit/.solsT]];WriteString[outputstrm," "];

WriteString[outputstrm,myO[dttransitobs/.solsT]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[dtradobs/.solsT]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[dtminobs/.solsT]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[Tdiffsca1obs/.solsT]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[Tdiffsca2obs/.solsT]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[Tdiffsca3obs/.solsT]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[Tdiffabs1obs/.solsT]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[Tdiffabs2obs/.solsT]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[Tdiffabs3obs/.solsT]];WriteString[outputstrm," "]; (* extra *)

rtest=rfp//.consts;
WriteString[outputstrm,myO[powervsth[rtest,Pi/2,consts]/.solsT]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[(netotnum//.solsT)]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[(netotforomegape//.solsT)]];WriteString[outputstrm," "]; (* too many? *)
WriteString[outputstrm,myO[(gammae//.solsT)]];WriteString[outputstrm," "]; (* extra *)

WriteString[outputstrm,myO[(Lrobs1//.solsT)]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[(Lrobsf//.solsT)]];WriteString[outputstrm," "];

WriteString[outputstrm,myO[(Cthermg//.solsT)]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[(Ctherms//.solsT)]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[(Cthermnu//.solsT)]];WriteString[outputstrm," "];

WriteString[outputstrm,myO[V1g]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[V1s]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[V2g]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[V2s]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[V3g]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[V3s]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[V5e]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[V5p]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[V6]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[V7]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[V8a]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[V8b]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[V8c]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[V8d]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[V9a]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[V9b]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[V10]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[V11]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[V12e]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[V12p]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[V13e]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[V13p]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[V14g]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[V14s]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[V15e]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[V15p]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[V16e]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[V16p]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[V17e]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[V17p]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[V18e]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[V18p]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[V19a]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[V19b]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[V20e]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[V20p]];WriteString[outputstrm," "];

(* \eta : electron degeneracy parameter *)
WriteString[outputstrm,myO[etanumcenternorm]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[etanumcenterrad]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[etanumingoing]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[etanumcenternormtrue]];WriteString[outputstrm," "]; (* extra *)

WriteString[outputstrm,myO[npairs0num]];WriteString[outputstrm," "]; 
WriteString[outputstrm,myO[npairs0true]];WriteString[outputstrm," "]; 
WriteString[outputstrm,myO[npairs0truetrue]];WriteString[outputstrm," "]; 
WriteString[outputstrm,myO[npairs0qednum]];WriteString[outputstrm," "]; 

WriteString[outputstrm,myO[Upairs0num]];WriteString[outputstrm," "]; 
WriteString[outputstrm,myO[Upairs0true]];WriteString[outputstrm," "]; 
WriteString[outputstrm,myO[Upairs0truetrue]];WriteString[outputstrm," "]; 
WriteString[outputstrm,myO[Upairs0qednum]];WriteString[outputstrm," "]; 

WriteString[outputstrm,myO[Ppairs0num]];WriteString[outputstrm," "]; 
WriteString[outputstrm,myO[Ppairs0true]];WriteString[outputstrm," "]; 
WriteString[outputstrm,myO[Ppairs0truetrue]];WriteString[outputstrm," "]; 
WriteString[outputstrm,myO[Ppairs0qednum]];WriteString[outputstrm," "]; 


(* Qnu/Qtot *)
WriteString[outputstrm,myO[Qnurat]];WriteString[outputstrm," "]; (* extra *)

(* Aum *)
WriteString[outputstrm,myO[rhobcenter/rhobingoing]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[Qum0num]];WriteString[outputstrm," "];  (* extra *)

WriteString[outputstrm,myO[epmaxobs]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[epmaxerror]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[epmaxminobs]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[epmaxminerror]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[epmaxmaxobs]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[epmaxmaxerror]];WriteString[outputstrm," "]; (* extra *)

WriteString[outputstrm,myO[Yebetanum]];WriteString[outputstrm," "]; (* extra *)

WriteString[outputstrm,myO[degennucnum]];WriteString[outputstrm," "]; (* extra *)

WriteString[outputstrm,myO[taunuscanum]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[Hnuscanum]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[taunuabsnum]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[Hnuabsnum]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[damptaununum]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[damptaunu2num]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[Ununum]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[nnutruenum]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[nnunum]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[Pnunum]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[Qnunum]];WriteString[outputstrm," "]; (* extra *)

WriteString[outputstrm,myO[muvalue]];WriteString[outputstrm," "]; (* extra *)

WriteString[outputstrm,myO[urvalue]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[uhvalue]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[upvalue]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[uphivalue]];WriteString[outputstrm," "]; (* extra *)

WriteString[outputstrm,myO[Brvalue]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[Bhvalue]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[Bpvalue]];WriteString[outputstrm," "]; (* extra *)

WriteString[outputstrm,myO[btvalue]];WriteString[outputstrm," "];(*extra*)WriteString[outputstrm,myO[brvalue]];WriteString[outputstrm," "];(*extra*)WriteString[outputstrm,myO[bhvalue]];WriteString[outputstrm," "];(*extra*)WriteString[outputstrm,myO[bpvalue]];WriteString[outputstrm," "];(*extra*)WriteString[outputstrm,myO[bphivalue]];WriteString[outputstrm," "];(*extra*)

WriteString[outputstrm,myO[Qgg2pairsnum]];WriteString[outputstrm," "];(*extra*)
WriteString[outputstrm,myO[Qge2pairsnum]];WriteString[outputstrm," "];(*extra*)
WriteString[outputstrm,myO[Qee2pairsnum]];WriteString[outputstrm," "];(*extra*)
WriteString[outputstrm,myO[taupairsscanum]];WriteString[outputstrm," "];(*extra*)
WriteString[outputstrm,myO[taupairsabsnum]];WriteString[outputstrm," "];(*extra*)
WriteString[outputstrm,myO[damptaupairsnum]];WriteString[outputstrm," "];(*extra*)
WriteString[outputstrm,myO[damptaupairs2num]];WriteString[outputstrm," "];(*extra*)
WriteString[outputstrm,myO[Qpairsnum]];WriteString[outputstrm," "];(*extra*)

WriteString[outputstrm,myO[Rgg2pairsnum]];WriteString[outputstrm," "];(*extra*)
WriteString[outputstrm,myO[Rge2pairsnum]];WriteString[outputstrm," "];(*extra*)
WriteString[outputstrm,myO[Ree2pairsnum]];WriteString[outputstrm," "];(*extra*)
WriteString[outputstrm,myO[taunumpairsabsnum]];WriteString[outputstrm," "];(*extra*)
WriteString[outputstrm,myO[damptaunumpairsnum]];WriteString[outputstrm," "];(*extra*)
WriteString[outputstrm,myO[damptaunumpairs2num]];WriteString[outputstrm," "];(*extra*)
WriteString[outputstrm,myO[Rpairsnum]];WriteString[outputstrm," "];(*extra*)

WriteString[outputstrm,myO[powermajet]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[dpowerjetdtheta]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[dpowermajetdtheta]];WriteString[outputstrm," "]; (* extra *)

WriteString[outputstrm,myO[bsqplasmavalue]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[Bphiplasmavalue]];WriteString[outputstrm," "]; (* extra *)

WriteString[outputstrm,myO[bsqTvalue]];WriteString[outputstrm," "];
WriteString[outputstrm,myO[BphiTvalue]];WriteString[outputstrm," "]; (* extra *)

WriteString[outputstrm,myO[veffpairsnum]];WriteString[outputstrm," "]; (* extra *)
WriteString[outputstrm,myO[sigmac]];WriteString[outputstrm," "]; (* extra *)

];


dogammajetwrapper:=Module[
{foo},

(* setup pre-loop stuff *)
picksystem;
setuploops;
setupfilename;

(* DO LOOP *)
doprintdebug=1; (* 0 = no debug (normal)  1 = debug *)

CloseAllFiles;
outputstrm=OpenWrite[myfile];
If[outputstrm==$Failed,myfile=myfilesimple;outputstrm=OpenWrite[myfile];];

(* set var-cleaning counter to 0 for start *)
numparmiters=0;

Print["Start loop:","outputstrm:",outputstrm];

For[p=startmmode,p<=endmmode,
For[o=startlmode,o<=endlmode,
For[n=startthfp,n<=endthfp,
For[m=startrmono,m<=endrmono,
For[l=startnu,l<=endnu,
For[k=startbr0,k<=endbr0,
For[j=startmu,j<=endmu,
For[i=startLjet,i<=endLjet,

(* Get results *)

(* set constants and use parameters to set constants -- must come after loopsetupvaluesall1 *)
setupsystemconstants;


(* Print out i,j,Ljet,myfakemu *)
Print["i j k l m n o p = ",i," ",j," ",k," ",l," ",m," ",n," ",o," ",p];
Print["Ljet=",Ljet];
Print["myfakemu=",myfakemu];
Print["thebr0gauss=",thebr0gauss];
Print["mynu=",mynu];
Print["myrmono=",myrmono];
Print["mythfp=",mythfp];
Print["mylmode=",mylmode];
Print["mymmode=",mymmode];

(* compute *)
computetime=Timing[gammajetreconnectionall1][[1]];
Print["computetime=",computetime];
(* write *)
WriteStuffall1;
WriteString[outputstrm,"\n"];
checkgamma[gammavalue];

(* Clear stored results (from gamma_jet _reconnection.nb) every once in a while to avoid losing memory *)
(* So we do 10 computations and then clear all these vars and then reload the rec notebook to reget the definitions *)
If[numparmiters==10,
Print["Clearing rec storage vars and reloading rec notebook"];
ClearAll[neplus,neminus,peplus,peminus,ueplus,ueminus,getetae,gensols,getetaeslow,Q0synchnoqed,Q0synchnoqednew,Q0synchqedultrarel,Q0synchqedultrarelother,grandgennew,Q0synchqed,gensolseq1diff,omegaprelfactor];
Clear[halfsigmavgg,sigmaveg];
(* then reload to get definitions again *)
loadrecnotebook;
(* reset counter *)
numparmiters=0;
];
numparmiters=numparmiters+1;



i++;
];
checkgamma[gammavalue];
j++;
];
(*WriteString[outputstrm,"\n"];*)
(*Print["----"];*)
checkgamma[gammavalue];
k++;
];
checkgamma[gammavalue];
l++;
];
checkgamma[gammavalue];
m++;
];
checkgamma[gammavalue];
n++;
];
checkgamma[gammavalue];
o++;
];
checkgamma[gammavalue];
p++;
];
Close[myfile];
];