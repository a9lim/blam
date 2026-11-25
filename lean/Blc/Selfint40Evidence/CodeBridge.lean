import Blc.Selfint40Evidence.RegularBase

namespace Blc.Floor40
open SelfintRegularSoundness
theorem opaqueTerm {P : Nat → Certgen.Code} (r : CodeRank P) (fill : Nat → Term) {p}
    (h : P p = .opaque) : (codeModel r fill).term p = fill p := by
 change decode r fill p = _
 rw [decode]
 split <;> simp_all
end Blc.Floor40
