import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

private abbrev bf364 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,3⟩ [0,0] [0,0,0,2,0,1]

private theorem f364s0 : BadRow (bf364 0) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f364s1 : BadRow (bf364 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f364s2 : BadRow (bf364 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f364s3 : BadRow (bf364 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f364s4 : BadRow (bf364 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f364s5 : BadRow (bf364 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f364s6 : BadRow (bf364 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f364s7 : BadRow (bf364 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f364 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,0,0,2,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,3⟩ [0,0] [0,0,0,2,0,1] (.cons (f364s0) (.cons (f364s1) (.cons (f364s2) (.cons (f364s3) (.cons (f364s4) (.cons (f364s5) (.cons (f364s6) (.cons (f364s7) .nil))))))))

private abbrev bf365 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,3⟩ [0,0] [0,0,0,2,1,0]

private theorem f365s0 : BadRow (bf365 0) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f365s1 : BadRow (bf365 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f365s2 : BadRow (bf365 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f365s3 : BadRow (bf365 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f365s4 : BadRow (bf365 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f365s5 : BadRow (bf365 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f365s6 : BadRow (bf365 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f365s7 : BadRow (bf365 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f365 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,0,0,2,1,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,3⟩ [0,0] [0,0,0,2,1,0] (.cons (f365s0) (.cons (f365s1) (.cons (f365s2) (.cons (f365s3) (.cons (f365s4) (.cons (f365s5) (.cons (f365s6) (.cons (f365s7) .nil))))))))

private abbrev bf366 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,3⟩ [0,0] [0,0,0,3,0,0]

private theorem bf366p0 : BadRow (bf366 0) := by empty43

private theorem bf366p1 : BadRow (bf366 1) := by empty43

private theorem bf366p2 : BadRow (bf366 2) := by empty43

private theorem bf366p3 : BadRow (bf366 3) := by empty43

private theorem bf366p4 : BadRow (bf366 4) := by empty43

private theorem bf366p5 : BadRow (bf366 5) := by empty43

private theorem bf366p6 : BadRow (bf366 6) := by empty43

private theorem bf366p7 : BadRow (bf366 7) := by empty43

private theorem bf366p8 : BadRow (bf366 8) := by empty43

private theorem bf366p9 : BadRow (bf366 9) := by empty43

private theorem bf366p10 : BadRow (bf366 10) := by empty43

private theorem bf366p11 : BadRow (bf366 11) := by empty43

theorem f366 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,0,0,3,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,3⟩ [0,0] [0,0,0,3,0,0] (.cons (bf366p0) (.cons (bf366p1) (.cons (bf366p2) (.cons (bf366p3) (.cons (bf366p4) (.cons (bf366p5) (.cons (bf366p6) (.cons (bf366p7) (.cons (bf366p8) (.cons (bf366p9) (.cons (bf366p10) (.cons (bf366p11) .nil))))))))))))


end Blc.SelfintSingleObject.Compact43
