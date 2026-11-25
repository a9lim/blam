import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

theorem f384 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f385 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bf386 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,3⟩ [0,0] [0,1,2,0,0,0]

private theorem f386s0 : BadRow (bf386 0) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f386s1 : BadRow (bf386 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f386s2 : BadRow (bf386 2) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f386s3 : BadRow (bf386 3) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem f386s4 : BadRow (bf386 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f386s5 : BadRow (bf386 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f386s6 : BadRow (bf386 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f386s7 : BadRow (bf386 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f386 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,1,2,0,0,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,3⟩ [0,0] [0,1,2,0,0,0] (.cons (f386s0) (.cons (f386s1) (.cons (f386s2) (.cons (f386s3) (.cons (f386s4) (.cons (f386s5) (.cons (f386s6) (.cons (f386s7) .nil))))))))

private abbrev bf387 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,3⟩ [0,0] [0,2,0,0,0,1]

private theorem f387s0 : BadRow (bf387 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f387s1 : BadRow (bf387 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f387s2 : BadRow (bf387 2) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f387s3 : BadRow (bf387 3) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f387s4 : BadRow (bf387 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f387s5 : BadRow (bf387 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f387s6 : BadRow (bf387 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f387s7 : BadRow (bf387 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f387 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,2,0,0,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,3⟩ [0,0] [0,2,0,0,0,1] (.cons (f387s0) (.cons (f387s1) (.cons (f387s2) (.cons (f387s3) (.cons (f387s4) (.cons (f387s5) (.cons (f387s6) (.cons (f387s7) .nil))))))))

private abbrev bf388 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,3⟩ [0,0] [0,2,0,0,1,0]

private theorem f388s0 : BadRow (bf388 0) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f388s1 : BadRow (bf388 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f388s2 : BadRow (bf388 2) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f388s3 : BadRow (bf388 3) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f388s4 : BadRow (bf388 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f388s5 : BadRow (bf388 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f388s6 : BadRow (bf388 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f388s7 : BadRow (bf388 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f388 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,2,0,0,1,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,3⟩ [0,0] [0,2,0,0,1,0] (.cons (f388s0) (.cons (f388s1) (.cons (f388s2) (.cons (f388s3) (.cons (f388s4) (.cons (f388s5) (.cons (f388s6) (.cons (f388s7) .nil))))))))


end Blc.SelfintSingleObject.Compact43
