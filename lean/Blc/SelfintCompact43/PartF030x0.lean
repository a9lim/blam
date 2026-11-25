import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

private abbrev bf360 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,3⟩ [0,0] [0,0,0,0,3,0]

private theorem bf360p0 : BadRow (bf360 0) := by empty43

private theorem bf360p1 : BadRow (bf360 1) := by empty43

private theorem bf360p2 : BadRow (bf360 2) := by empty43

private theorem bf360p3 : BadRow (bf360 3) := by empty43

private theorem bf360p4 : BadRow (bf360 4) := by empty43

private theorem bf360p5 : BadRow (bf360 5) := by empty43

private theorem bf360p6 : BadRow (bf360 6) := by empty43

private theorem bf360p7 : BadRow (bf360 7) := by empty43

private theorem bf360p8 : BadRow (bf360 8) := by empty43

private theorem bf360p9 : BadRow (bf360 9) := by empty43

private theorem bf360p10 : BadRow (bf360 10) := by empty43

private theorem bf360p11 : BadRow (bf360 11) := by empty43

theorem f360 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,0,0,0,3,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,3⟩ [0,0] [0,0,0,0,3,0] (.cons (bf360p0) (.cons (bf360p1) (.cons (bf360p2) (.cons (bf360p3) (.cons (bf360p4) (.cons (bf360p5) (.cons (bf360p6) (.cons (bf360p7) (.cons (bf360p8) (.cons (bf360p9) (.cons (bf360p10) (.cons (bf360p11) .nil))))))))))))

private abbrev bf361 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,3⟩ [0,0] [0,0,0,1,0,2]

private theorem f361s0 : BadRow (bf361 0) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f361s1 : BadRow (bf361 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f361s2 : BadRow (bf361 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f361s3 : BadRow (bf361 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f361s4 : BadRow (bf361 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f361s5 : BadRow (bf361 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f361s6 : BadRow (bf361 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f361s7 : BadRow (bf361 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f361 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,0,0,1,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,3⟩ [0,0] [0,0,0,1,0,2] (.cons (f361s0) (.cons (f361s1) (.cons (f361s2) (.cons (f361s3) (.cons (f361s4) (.cons (f361s5) (.cons (f361s6) (.cons (f361s7) .nil))))))))

theorem f362 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bf363 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,3⟩ [0,0] [0,0,0,1,2,0]

private theorem f363s0 : BadRow (bf363 0) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f363s1 : BadRow (bf363 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f363s2 : BadRow (bf363 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f363s3 : BadRow (bf363 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f363s4 : BadRow (bf363 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f363s5 : BadRow (bf363 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f363s6 : BadRow (bf363 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f363s7 : BadRow (bf363 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f363 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,0,0,1,2,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,3⟩ [0,0] [0,0,0,1,2,0] (.cons (f363s0) (.cons (f363s1) (.cons (f363s2) (.cons (f363s3) (.cons (f363s4) (.cons (f363s5) (.cons (f363s6) (.cons (f363s7) .nil))))))))


end Blc.SelfintSingleObject.Compact43
