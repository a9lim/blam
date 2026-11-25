import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

private abbrev bf623 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,5⟩ [0,0] [0,2,0,2,1]

private theorem f623s0 : BadRow (bf623 0) :=
  row_of_forall (discharge bank [2] (hard := []) (by decide +kernel) .nil)

private theorem f623s1 : BadRow (bf623 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4] (hard := []) (by decide +kernel) .nil)

private theorem f623s2 (h : BadRow [Floor43.e2423100748230]) : BadRow (bf623 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,0,48] (hard := [Floor43.e2423100748230]) (by decide +kernel) h)

private theorem f623s3 : BadRow (bf623 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4] (hard := []) (by decide +kernel) .nil)

private theorem f623s4 : BadRow (bf623 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f623s5 : BadRow (bf623 5) :=
  row_of_forall (discharge bank [2,2,4,4,4,4,4,4,4,4,4,40] (hard := []) (by decide +kernel) .nil)

private theorem f623s6 : BadRow (bf623 6) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f623s7 : BadRow (bf623 7) :=
  row_of_forall (discharge bank [2,2,4,2,2,2,2,2,4,4,4,4,4,4,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f623 (hard : BadRow [Floor43.e2423100748230]) : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,2,0,2,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,5⟩ [0,0] [0,2,0,2,1] (.cons (f623s0) (.cons (f623s1) (.cons (f623s2 (.cons (hard.get (by decide : Floor43.e2423100748230 ∈ [Floor43.e2423100748230])) .nil)) (.cons (f623s3) (.cons (f623s4) (.cons (f623s5) (.cons (f623s6) (.cons (f623s7) .nil))))))))


end Blc.SelfintSingleObject.Compact43
