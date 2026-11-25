import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

private abbrev bf875 (i : Nat) := Split43.four 8 i ⟨0,2,0,5,5,3⟩ [0,0] [0,1,0,0,2]

private theorem f875s0 : BadRow (bf875 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f875s1 : BadRow (bf875 1) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f875s2 : BadRow (bf875 2) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem f875s3 : BadRow (bf875 3) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem f875s4 : BadRow (bf875 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f875s5 : BadRow (bf875 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f875s6 : BadRow (bf875 6) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f875s7 : BadRow (bf875 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f875 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [0,1,0,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,5,5,3⟩ [0,0] [0,1,0,0,2] (.cons (f875s0) (.cons (f875s1) (.cons (f875s2) (.cons (f875s3) (.cons (f875s4) (.cons (f875s5) (.cons (f875s6) (.cons (f875s7) .nil))))))))


end Blc.SelfintSingleObject.Compact43
