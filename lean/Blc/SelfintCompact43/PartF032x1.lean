import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

private abbrev bf389 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,3⟩ [0,0] [0,2,0,1,0,0]

private theorem f389s0 : BadRow (bf389 0) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f389s1 : BadRow (bf389 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f389s2 : BadRow (bf389 2) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f389s3 : BadRow (bf389 3) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f389s4 : BadRow (bf389 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f389s5 : BadRow (bf389 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f389s6 : BadRow (bf389 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f389s7 : BadRow (bf389 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f389 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,2,0,1,0,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,3⟩ [0,0] [0,2,0,1,0,0] (.cons (f389s0) (.cons (f389s1) (.cons (f389s2) (.cons (f389s3) (.cons (f389s4) (.cons (f389s5) (.cons (f389s6) (.cons (f389s7) .nil))))))))

private abbrev bf390 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,3⟩ [0,0] [0,2,1,0,0,0]

private theorem f390s0 : BadRow (bf390 0) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f390s1 : BadRow (bf390 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f390s2 : BadRow (bf390 2) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f390s3 : BadRow (bf390 3) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem f390s4 : BadRow (bf390 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f390s5 : BadRow (bf390 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f390s6 : BadRow (bf390 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f390s7 : BadRow (bf390 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f390 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,2,1,0,0,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,3⟩ [0,0] [0,2,1,0,0,0] (.cons (f390s0) (.cons (f390s1) (.cons (f390s2) (.cons (f390s3) (.cons (f390s4) (.cons (f390s5) (.cons (f390s6) (.cons (f390s7) .nil))))))))

private abbrev bf391 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,3⟩ [0,0] [0,3,0,0,0,0]

private theorem bf391p0 : BadRow (bf391 0) := by empty43

private theorem bf391p1 : BadRow (bf391 1) := by empty43

private theorem bf391p2 : BadRow (bf391 2) := by empty43

private theorem bf391p3 : BadRow (bf391 3) := by empty43

private theorem bf391p4 : BadRow (bf391 4) := by empty43

private theorem bf391p5 : BadRow (bf391 5) := by empty43

private theorem bf391p6 : BadRow (bf391 6) := by empty43

private theorem bf391p7 : BadRow (bf391 7) := by empty43

private theorem bf391p8 : BadRow (bf391 8) := by empty43

private theorem bf391p9 : BadRow (bf391 9) := by empty43

private theorem bf391p10 : BadRow (bf391 10) := by empty43

private theorem bf391p11 : BadRow (bf391 11) := by empty43

theorem f391 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [0,3,0,0,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,3⟩ [0,0] [0,3,0,0,0,0] (.cons (bf391p0) (.cons (bf391p1) (.cons (bf391p2) (.cons (bf391p3) (.cons (bf391p4) (.cons (bf391p5) (.cons (bf391p6) (.cons (bf391p7) (.cons (bf391p8) (.cons (bf391p9) (.cons (bf391p10) (.cons (bf391p11) .nil))))))))))))

theorem f392 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [1,0,0,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f393 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [1,0,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f394 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [1,0,0,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
