import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

theorem f348 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [3,2,0,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f349 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [3,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f350 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [3,2,0,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f351 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [3,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f352 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [3,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f353 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [3,2,2,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f354 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [3,3,0,0,1]) :=
  row_of_forall (discharge bank [17,17,9,9,1,36,36,9,36,9,11,36,11,36] (hard := []) (by decide +kernel) .nil)

theorem f355 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [3,3,0,1,0]) :=
  row_of_forall (discharge bank [17,17,9,9,1,36,36,9,36,9,11,36,11,36] (hard := []) (by decide +kernel) .nil)

theorem f356 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [3,3,1,0,0]) :=
  row_of_forall (discharge bank [17,17,9,9,1,36,36,9,11,36] (hard := []) (by decide +kernel) .nil)

private abbrev bf357 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,3⟩ [0,0] [0,0,0,0,0,3]

private theorem bf357p0 : BadRow (bf357 0) := by empty43

private theorem bf357p1 : BadRow (bf357 1) := by empty43

private theorem bf357p2 : BadRow (bf357 2) := by empty43

private theorem bf357p3 : BadRow (bf357 3) := by empty43

private theorem bf357p4 : BadRow (bf357 4) := by empty43

private theorem bf357p5 : BadRow (bf357 5) := by empty43

private theorem bf357p6 : BadRow (bf357 6) := by empty43

private theorem bf357p7 : BadRow (bf357 7) := by empty43

private theorem bf357p8 : BadRow (bf357 8) := by empty43

private theorem bf357p9 : BadRow (bf357 9) := by empty43

private theorem bf357p10 : BadRow (bf357 10) := by empty43

private theorem bf357p11 : BadRow (bf357 11) := by empty43

theorem f357 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,0,0,0,0,3]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,3⟩ [0,0] [0,0,0,0,0,3] (.cons (bf357p0) (.cons (bf357p1) (.cons (bf357p2) (.cons (bf357p3) (.cons (bf357p4) (.cons (bf357p5) (.cons (bf357p6) (.cons (bf357p7) (.cons (bf357p8) (.cons (bf357p9) (.cons (bf357p10) (.cons (bf357p11) .nil))))))))))))


end Blc.SelfintSingleObject.Compact43
