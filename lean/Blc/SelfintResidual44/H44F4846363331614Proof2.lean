import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44F4846363331614Proof1

set_option Elab.async false
namespace Blc.H44.H44F4846363331614
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h72 (ρ : Env)  : All tab ρ b14 s1 :=
  (consAll (lamAt d2 c2 (smaller (h69 (SelfintRecursiveTypes.cons s1 ρ) sub0) sub4)) (consAll (lamAt d3 c3 (smaller (h70 (SelfintRecursiveTypes.cons s2 ρ) sub14) sub16)) (consAll (lamAt d5 c5 (smaller (h70 (SelfintRecursiveTypes.cons s2 ρ) sub14) sub15)) (consAll (lamAt d8 c8 (smaller (h71 (SelfintRecursiveTypes.cons s5 ρ) sub4) sub17)) (consAll (lamAt d18 c18 (smaller (h71 (SelfintRecursiveTypes.cons s5 ρ) sub4) sub16)) Positive.none)))))
theorem h73 (ρ : Env)  : All tab ρ b15 s5 :=
  appAll len2 d2 c2 sub4 ((h12 ρ) 2 mem20) (smaller (h72 ρ) sub0)
theorem h74 (ρ : Env)  : All tab ρ b16 s5 :=
  botAll ((h73 ρ) 0 mem22)
end Blc.H44.H44F4846363331614
