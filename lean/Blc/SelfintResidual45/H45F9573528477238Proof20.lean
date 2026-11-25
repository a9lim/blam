import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9573528477238Proof19

set_option Elab.async false
namespace Blc.H45.H45F9573528477238
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h720 (ρ : Env) (a2 : Fits s353 (ρ 2)) : All tab ρ b5 s353 :=
  varAll (fun i hi => a2 i (sub694 i hi))
theorem h721 (ρ : Env) (a2 : Fits s361 (ρ 2)) : All tab ρ b5 s955 :=
  varAll (fun i hi => a2 i (sub695 i hi))
theorem h722 (ρ : Env) (a2 : Fits s364 (ρ 2)) : All tab ρ b5 s956 :=
  varAll (fun i hi => a2 i (sub696 i hi))
theorem h723 (ρ : Env) (a2 : Fits s382 (ρ 2)) : All tab ρ b5 s382 :=
  varAll (fun i hi => a2 i (sub697 i hi))
theorem h724 (ρ : Env) (a2 : Fits s389 (ρ 2)) : All tab ρ b5 s957 :=
  varAll (fun i hi => a2 i (sub698 i hi))
theorem h725 (ρ : Env) (a2 : Fits s392 (ρ 2)) : All tab ρ b5 s958 :=
  varAll (fun i hi => a2 i (sub699 i hi))
theorem h726 (ρ : Env) (a2 : Fits s405 (ρ 2)) : All tab ρ b5 s959 :=
  varAll (fun i hi => a2 i (sub700 i hi))
theorem h727 (ρ : Env) (a2 : Fits s402 (ρ 2)) : All tab ρ b5 s960 :=
  varAll (fun i hi => a2 i (sub701 i hi))
theorem h728 (ρ : Env) (a2 : Fits s419 (ρ 2)) : All tab ρ b5 s419 :=
  varAll (fun i hi => a2 i (sub588 i hi))
theorem h729 (ρ : Env) (a2 : Fits s429 (ρ 2)) : All tab ρ b5 s429 :=
  varAll (fun i hi => a2 i (sub702 i hi))
theorem h730 (ρ : Env) (a2 : Fits s434 (ρ 2)) : All tab ρ b5 s961 :=
  varAll (fun i hi => a2 i (sub703 i hi))
theorem h731 (ρ : Env) (a2 : Fits s437 (ρ 2)) : All tab ρ b5 s962 :=
  varAll (fun i hi => a2 i (sub704 i hi))
theorem h732 (ρ : Env) (a2 : Fits s411 (ρ 2)) : All tab ρ b5 s963 :=
  varAll (fun i hi => a2 i (sub705 i hi))
theorem h733 (ρ : Env) (a2 : Fits s458 (ρ 2)) : All tab ρ b5 s964 :=
  varAll (fun i hi => a2 i (sub706 i hi))
theorem h734 (ρ : Env) (a2 : Fits s465 (ρ 2)) : All tab ρ b5 s468 :=
  varAll (fun i hi => a2 i (sub707 i hi))
theorem h735 (ρ : Env) (a2 : Fits s469 (ρ 2)) : All tab ρ b5 s965 :=
  varAll (fun i hi => a2 i (sub708 i hi))
theorem h736 (ρ : Env) (a2 : Fits s472 (ρ 2)) : All tab ρ b5 s966 :=
  varAll (fun i hi => a2 i (sub709 i hi))
theorem h737 (ρ : Env) (a2 : Fits s451 (ρ 2)) : All tab ρ b5 s967 :=
  varAll (fun i hi => a2 i (sub710 i hi))
theorem h738 (ρ : Env) (a2 : Fits s480 (ρ 2)) : All tab ρ b5 s968 :=
  varAll (fun i hi => a2 i (sub711 i hi))
theorem h739 (ρ : Env) (a2 : Fits s501 (ρ 2)) : All tab ρ b5 s969 :=
  varAll (fun i hi => a2 i (sub712 i hi))
theorem h740 (ρ : Env) (a2 : Fits s507 (ρ 2)) : All tab ρ b5 s970 :=
  varAll (fun i hi => a2 i (sub713 i hi))
theorem h741 (ρ : Env) (a2 : Fits s512 (ρ 2)) : All tab ρ b5 s518 :=
  varAll (fun i hi => a2 i (sub714 i hi))
theorem h742 (ρ : Env) (a0 : Fits s10 (ρ 0)) : All tab ρ b6 s12 :=
  (consAll (lamAt d21 c21 (smaller (h358 (SelfintRecursiveTypes.cons s0 ρ) a0) sub355)) Positive.none)
theorem h743 (ρ : Env) (a0 : Fits s15 (ρ 0)) : All tab ρ b6 s18 :=
  (consAll (lamAt d27 c27 (smaller (h360 (SelfintRecursiveTypes.cons s0 ρ) a0) sub357)) Positive.none)
theorem h744 (ρ : Env) (a0 : Fits s4 (ρ 0)) : All tab ρ b6 s9 :=
  (consAll (lamAt d28 c28 (smaller (h361 (SelfintRecursiveTypes.cons s19 ρ) a0) sub715)) (consAll (lamAt d35 c35 (smaller (h361 (SelfintRecursiveTypes.cons s0 ρ) a0) sub716)) (consAll (lamAt d222 c222 (smaller (h361 (SelfintRecursiveTypes.cons s43 ρ) a0) sub717)) (consAll (lamAt d254 c254 (smaller (h361 (SelfintRecursiveTypes.cons s0 ρ) a0) sub718)) (consAll (lamAt d274 c274 (smaller (h361 (SelfintRecursiveTypes.cons s134 ρ) a0) sub719)) (consAll (lamAt d312 c312 (smaller (h361 (SelfintRecursiveTypes.cons s151 ρ) a0) sub720)) (consAll (lamAt d333 c333 (smaller (h361 (SelfintRecursiveTypes.cons s132 ρ) a0) sub721)) (consAll (lamAt d363 c363 (smaller (h361 (SelfintRecursiveTypes.cons s0 ρ) a0) sub722)) (consAll (lamAt d391 c391 (smaller (h361 (SelfintRecursiveTypes.cons s184 ρ) a0) sub723)) (consAll (lamAt d414 c414 (smaller (h361 (SelfintRecursiveTypes.cons s197 ρ) a0) sub724)) (consAll (lamAt d454 c454 (smaller (h361 (SelfintRecursiveTypes.cons s217 ρ) a0) sub725)) (consAll (lamAt d476 c476 (smaller (h361 (SelfintRecursiveTypes.cons s204 ρ) a0) sub726)) (consAll (lamAt d497 c497 (smaller (h361 (SelfintRecursiveTypes.cons s238 ρ) a0) sub727)) (consAll (lamAt d551 c551 (smaller (h361 (SelfintRecursiveTypes.cons s204 ρ) a0) sub728)) (consAll (lamAt d569 c569 (smaller (h361 (SelfintRecursiveTypes.cons s265 ρ) a0) sub729)) (consAll (lamAt d589 c589 (smaller (h361 (SelfintRecursiveTypes.cons s204 ρ) a0) sub730)) (consAll (lamAt d623 c623 (smaller (h361 (SelfintRecursiveTypes.cons s290 ρ) a0) sub731)) (consAll (lamAt d646 c646 (smaller (h361 (SelfintRecursiveTypes.cons s204 ρ) a0) sub732)) (consAll (lamAt d659 c659 (smaller (h361 (SelfintRecursiveTypes.cons s238 ρ) a0) sub733)) (consAll (lamAt d681 c681 (smaller (h361 (SelfintRecursiveTypes.cons s311 ρ) a0) sub734)) (consAll (lamAt d930 c930 (smaller (h361 (SelfintRecursiveTypes.cons s230 ρ) a0) sub735)) Positive.none)))))))))))))))))))))
theorem h745 (ρ : Env) (a0 : Fits s20 (ρ 0)) : All tab ρ b6 s26 :=
  (consAll (lamAt d44 c44 (smaller (h364 (SelfintRecursiveTypes.cons s0 ρ) a0) sub361)) Positive.none)
theorem h746 (ρ : Env) (a0 : Fits s23 (ρ 0)) : All tab ρ b6 s27 :=
  (consAll (lamAt d48 c48 (smaller (h367 (SelfintRecursiveTypes.cons s0 ρ) a0) sub362)) Positive.none)
theorem h747 (ρ : Env) (a0 : Fits s33 (ρ 0)) : All tab ρ b6 s36 :=
  (consAll (lamAt d61 c61 (smaller (h369 (SelfintRecursiveTypes.cons s0 ρ) a0) sub364)) Positive.none)
theorem h748 (ρ : Env) (a0 : Fits s38 (ρ 0)) : All tab ρ b6 s41 :=
  (consAll (lamAt d68 c68 (smaller (h371 (SelfintRecursiveTypes.cons s0 ρ) a0) sub366)) Positive.none)
theorem h749 (ρ : Env) (a0 : Fits s37 (ρ 0)) : All tab ρ b6 s42 :=
  (consAll (lamAt d72 c72 (smaller (h373 (SelfintRecursiveTypes.cons s0 ρ) a0) sub368)) Positive.none)
theorem h750 (ρ : Env) (a0 : Fits s31 (ρ 0)) : All tab ρ b6 s43 :=
  (consAll (lamAt d73 c73 (smaller (h375 (SelfintRecursiveTypes.cons s0 ρ) a0) sub736)) (consAll (lamAt d114 c114 (smaller (h375 (SelfintRecursiveTypes.cons s0 ρ) a0) sub737)) (consAll (lamAt d116 c116 (smaller (h375 (SelfintRecursiveTypes.cons s0 ρ) a0) sub738)) (consAll (lamAt d178 c178 (smaller (h375 (SelfintRecursiveTypes.cons s0 ρ) a0) sub739)) Positive.none))))
theorem h751 (ρ : Env) (a0 : Fits s19 (ρ 0)) : All tab ρ b6 s31 :=
  (consAll (lamAt d68 c68 (smaller (h376 (SelfintRecursiveTypes.cons s0 ρ) a0) sub740)) (consAll (lamAt d113 c113 (smaller (h376 (SelfintRecursiveTypes.cons s58 ρ) a0) sub741)) (consAll (lamAt d115 c115 (smaller (h376 (SelfintRecursiveTypes.cons s44 ρ) a0) sub742)) (consAll (lamAt d177 c177 (smaller (h376 (SelfintRecursiveTypes.cons s83 ρ) a0) sub743)) Positive.none))))
theorem h752 (ρ : Env) (a0 : Fits s14 (ρ 0)) : All tab ρ b6 s19 :=
  (consAll (lamAt d67 c67 (smaller (h377 (SelfintRecursiveTypes.cons s37 ρ) a0) sub744)) (consAll (lamAt d98 c98 (smaller (h377 (SelfintRecursiveTypes.cons s43 ρ) a0) sub745)) (consAll (lamAt d102 c102 (smaller (h377 (SelfintRecursiveTypes.cons s0 ρ) a0) sub746)) (consAll (lamAt d111 c111 (smaller (h377 (SelfintRecursiveTypes.cons s0 ρ) a0) sub747)) (consAll (lamAt d162 c162 (smaller (h377 (SelfintRecursiveTypes.cons s43 ρ) a0) sub748)) (consAll (lamAt d166 c166 (smaller (h377 (SelfintRecursiveTypes.cons s0 ρ) a0) sub749)) (consAll (lamAt d175 c175 (smaller (h377 (SelfintRecursiveTypes.cons s0 ρ) a0) sub750)) Positive.none)))))))
theorem h753 (ρ : Env) (a0 : Fits s45 (ρ 0)) : All tab ρ b6 s47 :=
  (consAll (lamAt d82 c82 (smaller (h379 (SelfintRecursiveTypes.cons s0 ρ) a0) sub374)) Positive.none)
theorem h754 (ρ : Env) (a0 : Fits s48 (ρ 0)) : All tab ρ b6 s50 :=
  (consAll (lamAt d89 c89 (smaller (h381 (SelfintRecursiveTypes.cons s0 ρ) a0) sub376)) Positive.none)
theorem h755 (ρ : Env) (a0 : Fits s13 (ρ 0)) : All tab ρ b6 s44 :=
  (consAll (lamAt d89 c89 (smaller (h383 (SelfintRecursiveTypes.cons s0 ρ) a0) sub751)) (consAll (lamAt d91 c91 (smaller (h383 (SelfintRecursiveTypes.cons s0 ρ) a0) sub752)) (consAll (lamAt d93 c93 (smaller (h383 (SelfintRecursiveTypes.cons s0 ρ) a0) sub753)) (consAll (lamAt d124 c124 (smaller (h383 (SelfintRecursiveTypes.cons s0 ρ) a0) sub754)) (consAll (lamAt d146 c146 (smaller (h383 (SelfintRecursiveTypes.cons s9 ρ) a0) sub755)) (consAll (lamAt d157 c157 (smaller (h383 (SelfintRecursiveTypes.cons s0 ρ) a0) sub756)) (consAll (lamAt d185 c185 (smaller (h383 (SelfintRecursiveTypes.cons s0 ρ) a0) sub757)) Positive.none)))))))
end Blc.H45.H45F9573528477238
