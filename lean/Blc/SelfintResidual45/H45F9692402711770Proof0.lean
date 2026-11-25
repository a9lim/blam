import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402711770Facts3

set_option Elab.async false
namespace Blc.H45.H45F9692402711770
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h0 (ρ : Env) (a1 : Fits s2 (ρ 1)) : All tab ρ b0 s2 :=
  varAll (fun i hi => a1 i (sub0 i hi))
theorem h1 (ρ : Env) (a0 : Fits s5 (ρ 0)) : All tab ρ b1 s57 :=
  varAll (fun i hi => a0 i (sub1 i hi))
theorem h2 (ρ : Env) (a0 : Fits s12 (ρ 0)) : All tab ρ b1 s58 :=
  varAll (fun i hi => a0 i (sub2 i hi))
theorem h3 (ρ : Env) (a1 : Fits s15 (ρ 1)) : All tab ρ b2 s15 :=
  varAll (fun i hi => a1 i (sub3 i hi))
theorem h4 (ρ : Env) (a1 : Fits s36 (ρ 1)) : All tab ρ b2 s36 :=
  varAll (fun i hi => a1 i (sub4 i hi))
theorem h5 (ρ : Env) (a3 : Fits s5 (ρ 3)) : All tab ρ b3 s59 :=
  varAll (fun i hi => a3 i (sub5 i hi))
theorem h6 (ρ : Env) (a3 : Fits s12 (ρ 3)) : All tab ρ b3 s60 :=
  varAll (fun i hi => a3 i (sub6 i hi))
theorem h7 (ρ : Env) (a0 : Fits s58 (ρ 0)) : All tab ρ b4 s58 :=
  varAll (fun i hi => a0 i (sub7 i hi))
theorem h8 (ρ : Env) (a0 : Fits s61 (ρ 0)) : All tab ρ b4 s61 :=
  varAll (fun i hi => a0 i (sub8 i hi))
theorem h9 (ρ : Env) (a0 : Fits s38 (ρ 0)) : All tab ρ b4 s38 :=
  varAll (fun i hi => a0 i (sub9 i hi))
theorem h10 (ρ : Env) (a0 : Fits s41 (ρ 0)) : All tab ρ b4 s41 :=
  varAll (fun i hi => a0 i (sub10 i hi))
theorem h11 (ρ : Env) (a0 : Fits s44 (ρ 0)) : All tab ρ b4 s44 :=
  varAll (fun i hi => a0 i (sub11 i hi))
theorem h12 (ρ : Env) (a1 : Fits s13 (ρ 1)) : All tab ρ b5 s13 :=
  varAll (fun i hi => a1 i (sub12 i hi))
theorem h13 (ρ : Env) (a1 : Fits s9 (ρ 1)) : All tab ρ b5 s9 :=
  varAll (fun i hi => a1 i (sub13 i hi))
theorem h14 (ρ : Env) (a1 : Fits s35 (ρ 1)) : All tab ρ b5 s35 :=
  varAll (fun i hi => a1 i (sub14 i hi))
theorem h15 (ρ : Env) (a1 : Fits s39 (ρ 1)) : All tab ρ b5 s39 :=
  varAll (fun i hi => a1 i (sub15 i hi))
theorem h16 (ρ : Env) (a1 : Fits s42 (ρ 1)) : All tab ρ b5 s42 :=
  varAll (fun i hi => a1 i (sub16 i hi))
theorem h17 (ρ : Env) (a0 : Fits s58 (ρ 0)) (a1 : Fits s13 (ρ 1)) : All tab ρ b6 s9 :=
  appAll len14 d14 c14 sub13 ((h7 ρ a0) 14 mem0) (smaller (h12 ρ a1) sub12)
theorem h18 (ρ : Env) (a0 : Fits s61 (ρ 0)) (a1 : Fits s9 (ρ 1)) : All tab ρ b6 s9 :=
  appAll len10 d10 c10 sub13 ((h8 ρ a0) 10 mem1) (smaller (h13 ρ a1) sub13)
theorem h19 (ρ : Env) (a0 : Fits s38 (ρ 0)) (a1 : Fits s35 (ρ 1)) : All tab ρ b6 s9 :=
  appAll len47 d47 c47 sub13 ((h9 ρ a0) 47 mem2) (smaller (h14 ρ a1) sub14)
theorem h20 (ρ : Env) (a0 : Fits s41 (ρ 0)) (a1 : Fits s39 (ρ 1)) : All tab ρ b6 s9 :=
  appAll len53 d53 c53 sub13 ((h10 ρ a0) 53 mem3) (smaller (h15 ρ a1) sub15)
theorem h21 (ρ : Env) (a0 : Fits s44 (ρ 0)) (a1 : Fits s42 (ρ 1)) : All tab ρ b6 s9 :=
  appAll len59 d59 c59 sub13 ((h11 ρ a0) 59 mem4) (smaller (h16 ρ a1) sub16)
theorem h22 (ρ : Env) (a0 : Fits s58 (ρ 0)) (a1 : Fits s13 (ρ 1)) (a3 : Fits s5 (ρ 3)) : All tab ρ b7 s17 :=
  appAll len36 d36 c36 sub17 ((h5 ρ a3) 36 mem5) (smaller (h17 ρ a0 a1) sub13)
theorem h23 (ρ : Env) (a0 : Fits s38 (ρ 0)) (a1 : Fits s35 (ρ 1)) (a3 : Fits s12 (ρ 3)) : All tab ρ b7 s9 :=
  appAll len10 d10 c10 sub13 ((h6 ρ a3) 10 mem6) (smaller (h19 ρ a0 a1) sub13)
theorem h24 (ρ : Env) (a0 : Fits s61 (ρ 0)) (a1 : Fits s9 (ρ 1)) (a3 : Fits s5 (ρ 3)) : All tab ρ b7 s17 :=
  appAll len36 d36 c36 sub17 ((h5 ρ a3) 36 mem5) (smaller (h18 ρ a0 a1) sub13)
theorem h25 (ρ : Env) (a0 : Fits s41 (ρ 0)) (a1 : Fits s39 (ρ 1)) (a3 : Fits s12 (ρ 3)) : All tab ρ b7 s51 :=
  appAll len30 d30 c30 sub18 ((h6 ρ a3) 30 mem7) (smaller (h20 ρ a0 a1) sub13)
theorem h26 (ρ : Env) (a0 : Fits s44 (ρ 0)) (a1 : Fits s42 (ρ 1)) (a3 : Fits s12 (ρ 3)) : All tab ρ b7 s54 :=
  appAll len58 d58 c58 sub19 ((h6 ρ a3) 58 mem8) (smaller (h21 ρ a0 a1) sub13)
theorem h27 (ρ : Env) (a0 : Fits s13 (ρ 0)) (a2 : Fits s5 (ρ 2)) : All tab ρ b8 s16 :=
  (consAll (lamAt d35 c35 (smaller (h22 (SelfintRecursiveTypes.cons s14 ρ) sub20 a0 a2) sub17)) Positive.none)
theorem h28 (ρ : Env) (a0 : Fits s35 (ρ 0)) (a2 : Fits s12 (ρ 2)) : All tab ρ b8 s37 :=
  (consAll (lamAt d45 c45 (smaller (h23 (SelfintRecursiveTypes.cons s38 ρ) sub9 a0 a2) sub13)) Positive.none)
theorem h29 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a2 : Fits s5 (ρ 2)) : All tab ρ b8 s16 :=
  (consAll (lamAt d35 c35 (smaller (h24 (SelfintRecursiveTypes.cons s14 ρ) sub21 a0 a2) sub17)) Positive.none)
theorem h30 (ρ : Env) (a0 : Fits s39 (ρ 0)) (a2 : Fits s12 (ρ 2)) : All tab ρ b8 s40 :=
  (consAll (lamAt d52 c52 (smaller (h25 (SelfintRecursiveTypes.cons s41 ρ) sub10 a0 a2) sub22)) (consAll (lamAt d69 c69 (smaller (h25 (SelfintRecursiveTypes.cons s41 ρ) sub10 a0 a2) sub23)) (consAll (lamAt d74 c74 (smaller (h25 (SelfintRecursiveTypes.cons s41 ρ) sub10 a0 a2) sub24)) (consAll (lamAt d75 c75 (smaller (h25 (SelfintRecursiveTypes.cons s41 ρ) sub10 a0 a2) sub25)) (consAll (lamAt d90 c90 (smaller (h25 (SelfintRecursiveTypes.cons s41 ρ) sub10 a0 a2) sub26)) (consAll (lamAt d91 c91 (smaller (h25 (SelfintRecursiveTypes.cons s41 ρ) sub10 a0 a2) sub27)) (consAll (lamAt d97 c97 (smaller (h25 (SelfintRecursiveTypes.cons s41 ρ) sub10 a0 a2) sub28)) (consAll (lamAt d98 c98 (smaller (h25 (SelfintRecursiveTypes.cons s41 ρ) sub10 a0 a2) sub29)) Positive.none))))))))
theorem h31 (ρ : Env) (a0 : Fits s42 (ρ 0)) (a2 : Fits s12 (ρ 2)) : All tab ρ b8 s43 :=
  (consAll (lamAt d57 c57 (smaller (h26 (SelfintRecursiveTypes.cons s44 ρ) sub11 a0 a2) sub30)) (consAll (lamAt d67 c67 (smaller (h26 (SelfintRecursiveTypes.cons s44 ρ) sub11 a0 a2) sub19)) (consAll (lamAt d73 c73 (smaller (h26 (SelfintRecursiveTypes.cons s44 ρ) sub11 a0 a2) sub31)) (consAll (lamAt d84 c84 (smaller (h26 (SelfintRecursiveTypes.cons s44 ρ) sub11 a0 a2) sub32)) (consAll (lamAt d96 c96 (smaller (h26 (SelfintRecursiveTypes.cons s44 ρ) sub11 a0 a2) sub33)) Positive.none)))))
theorem h32 (ρ : Env) (a0 : Fits s13 (ρ 0)) (a1 : Fits s15 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b9 s9 :=
  appAll len18 d18 c18 sub13 ((h3 ρ a1) 18 mem9) (smaller (h27 ρ a0 a2) sub34)
theorem h33 (ρ : Env) (a0 : Fits s35 (ρ 0)) (a1 : Fits s36 (ρ 1)) (a2 : Fits s12 (ρ 2)) : All tab ρ b9 s53 :=
  appAll len44 d44 c44 sub36 ((h4 ρ a1) 44 mem10) (smaller (h28 ρ a0 a2) sub35)
theorem h34 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s15 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b9 s51 :=
  appAll len46 d46 c46 sub18 ((h3 ρ a1) 46 mem11) (smaller (h29 ρ a0 a2) sub34)
theorem h35 (ρ : Env) (a0 : Fits s39 (ρ 0)) (a1 : Fits s36 (ρ 1)) (a2 : Fits s12 (ρ 2)) : All tab ρ b9 s54 :=
  appAll len51 d51 c51 sub19 ((h4 ρ a1) 51 mem12) (smaller (h30 ρ a0 a2) sub37)
end Blc.H45.H45F9692402711770
