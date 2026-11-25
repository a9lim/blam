import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44F4846363266838Proof18

set_option Elab.async false
namespace Blc.H44.H44F4846363266838
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h610 (ρ : Env) (a0 : Fits s99 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b28 s109 :=
  appAll len242 d242 c242 sub94 ((h604 ρ a0) 242 mem261) (smaller (h608 ρ a1) sub372)
theorem h611 (ρ : Env) (a0 : Fits s0 (ρ 0)) : All tab ρ b29 s1 :=
  (consAll (lamAt d1 c1 Positive.none) (consAll (lamAt d170 c170 (smaller (h609 (SelfintRecursiveTypes.cons s80 ρ) sub68 a0) sub262)) (consAll (lamAt d208 c208 (smaller (h610 (SelfintRecursiveTypes.cons s99 ρ) sub92 a0) sub94)) Positive.none)))
theorem h612 (ρ : Env) (a0 : Fits s0 (ρ 0)) : All tab ρ b30 s86 :=
  appAll len2 d2 c2 sub67 ((h599 ρ) 2 mem262) (smaller (h611 ρ a0) sub373)
end Blc.H44.H44F4846363266838
