import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402957530Proof51

set_option Elab.async false
namespace Blc.H45.H45F9692402957530
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h1830 (ρ : Env) (a0 : Fits s12 (ρ 0)) : All tab ρ b80 s12 :=
  varAll (fun i hi => a0 i (sub111 i hi))
theorem h1831 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b80 s2 :=
  varAll (fun i hi => a0 i (sub13 i hi))
theorem h1832 (ρ : Env) (a0 : Fits s12 (ρ 0)) : All tab ρ b81 s11 :=
  appAll len24 d24 c24 sub5 ((h1828 ρ a0) 24 mem48) (smaller (h1830 ρ a0) sub111)
theorem h1833 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b81 s12 :=
  appAll len26 d26 c26 sub111 ((h1829 ρ a0) 26 mem7) (smaller (h1831 ρ a0) sub13)
theorem h1834 (ρ : Env)  : All tab ρ b82 s1 :=
  (consAll (lamAt d24 c24 (smaller (h1832 (SelfintRecursiveTypes.cons s12 ρ) sub111) sub5)) (consAll (lamAt d26 c26 (smaller (h1833 (SelfintRecursiveTypes.cons s2 ρ) sub13) sub111)) Positive.none))
theorem h1835 (ρ : Env)  : All tab ρ b83 s9 :=
  appAll len3 d3 c3 sub6 ((h1776 ρ) 3 mem443) (smaller (h1834 ρ) sub137)
theorem h1836 (ρ : Env)  : All tab ρ b88 s11 :=
  appAll len2 d2 c2 sub5 ((h1835 ρ) 2 mem103) Positive.none
end Blc.H45.H45F9692402957530
