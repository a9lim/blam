import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

private abbrev bf367 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,3⟩ [0,0] [0,0,1,0,0,2]

private theorem f367s0 : BadRow (bf367 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f367s1 : BadRow (bf367 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f367s2 : BadRow (bf367 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f367s3 : BadRow (bf367 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f367s4 : BadRow (bf367 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f367s5 : BadRow (bf367 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f367s6 : BadRow (bf367 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f367s7 : BadRow (bf367 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f367 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,0,1,0,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,3⟩ [0,0] [0,0,1,0,0,2] (.cons (f367s0) (.cons (f367s1) (.cons (f367s2) (.cons (f367s3) (.cons (f367s4) (.cons (f367s5) (.cons (f367s6) (.cons (f367s7) .nil))))))))

theorem f368 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bf369 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,3⟩ [0,0] [0,0,1,0,2,0]

private theorem f369s0 : BadRow (bf369 0) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f369s1 : BadRow (bf369 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f369s2 : BadRow (bf369 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f369s3 : BadRow (bf369 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f369s4 : BadRow (bf369 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f369s5 : BadRow (bf369 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f369s6 : BadRow (bf369 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f369s7 : BadRow (bf369 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f369 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,0,1,0,2,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,3⟩ [0,0] [0,0,1,0,2,0] (.cons (f369s0) (.cons (f369s1) (.cons (f369s2) (.cons (f369s3) (.cons (f369s4) (.cons (f369s5) (.cons (f369s6) (.cons (f369s7) .nil))))))))

theorem f370 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f371 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
