import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

private abbrev bf382 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,3⟩ [0,0] [0,1,0,2,0,0]

private theorem f382s0 : BadRow (bf382 0) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f382s1 : BadRow (bf382 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f382s2 : BadRow (bf382 2) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f382s3 : BadRow (bf382 3) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f382s4 : BadRow (bf382 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f382s5 : BadRow (bf382 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f382s6 : BadRow (bf382 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f382s7 : BadRow (bf382 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f382 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,1,0,2,0,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,3⟩ [0,0] [0,1,0,2,0,0] (.cons (f382s0) (.cons (f382s1) (.cons (f382s2) (.cons (f382s3) (.cons (f382s4) (.cons (f382s5) (.cons (f382s6) (.cons (f382s7) .nil))))))))

theorem f383 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
