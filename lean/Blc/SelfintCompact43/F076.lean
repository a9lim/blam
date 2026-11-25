import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

theorem f912 : BadRow (Grammar43.fourRow ⟨0,3,0,5,4,3⟩ [0,0,0] [1,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,5,5,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f913 : BadRow (Grammar43.fourRow ⟨0,3,0,5,4,3⟩ [0,0,0] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f914 : BadRow (Grammar43.fourRow ⟨0,3,0,5,4,3⟩ [0,0,0] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f915 : BadRow (Grammar43.fourRow ⟨0,3,0,5,4,3⟩ [0,0,0] [1,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f916 : BadRow (Grammar43.fourRow ⟨0,3,0,5,4,3⟩ [0,0,0] [2,0,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,5,5,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f917 : BadRow (Grammar43.fourRow ⟨0,3,0,5,4,3⟩ [0,0,0] [2,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,5,5,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f918 : BadRow (Grammar43.fourRow ⟨0,3,0,5,4,3⟩ [0,0,0] [2,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2,5,5,5] (hard := []) (by decide +kernel) .nil)

private abbrev bf919 (i : Nat) := Split43.four 12 i ⟨0,3,0,5,4,3⟩ [0,0,0] [3,0,0,0]

private theorem bf919p0 : BadRow (bf919 0) := by empty43

private theorem bf919p1 : BadRow (bf919 1) := by empty43

private theorem bf919p2 : BadRow (bf919 2) := by empty43

private theorem bf919p3 : BadRow (bf919 3) := by empty43

private theorem bf919p4 : BadRow (bf919 4) := by empty43

private theorem bf919p5 : BadRow (bf919 5) := by empty43

private theorem bf919p6 : BadRow (bf919 6) := by empty43

private theorem bf919p7 : BadRow (bf919 7) := by empty43

private theorem bf919p8 : BadRow (bf919 8) := by empty43

private theorem bf919p9 : BadRow (bf919 9) := by empty43

private theorem bf919p10 : BadRow (bf919 10) := by empty43

private theorem bf919p11 : BadRow (bf919 11) := by empty43

theorem f919 : BadRow (Grammar43.fourRow ⟨0,3,0,5,4,3⟩ [0,0,0] [3,0,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,3,0,5,4,3⟩ [0,0,0] [3,0,0,0] (.cons (bf919p0) (.cons (bf919p1) (.cons (bf919p2) (.cons (bf919p3) (.cons (bf919p4) (.cons (bf919p5) (.cons (bf919p6) (.cons (bf919p7) (.cons (bf919p8) (.cons (bf919p9) (.cons (bf919p10) (.cons (bf919p11) .nil))))))))))))

private abbrev bf920 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,5⟩ [0,0] [0,0,0,5]

private theorem bf920p0 : BadRow (bf920 0) := by empty43

private theorem bf920p1 : BadRow (bf920 1) := by empty43

private theorem bf920p2 : BadRow (bf920 2) := by empty43

private theorem bf920p3 : BadRow (bf920 3) := by empty43

private theorem bf920p4 : BadRow (bf920 4) := by empty43

private theorem bf920p5 : BadRow (bf920 5) := by empty43

private theorem bf920p6 : BadRow (bf920 6) := by empty43

private theorem bf920p7 : BadRow (bf920 7) := by empty43

private theorem bf920p8 : BadRow (bf920 8) := by empty43

private theorem bf920p9 : BadRow (bf920 9) := by empty43

private theorem bf920p10 : BadRow (bf920 10) := by empty43

private theorem bf920p11 : BadRow (bf920 11) := by empty43

theorem f920 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [0,0,0,5]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,5⟩ [0,0] [0,0,0,5] (.cons (bf920p0) (.cons (bf920p1) (.cons (bf920p2) (.cons (bf920p3) (.cons (bf920p4) (.cons (bf920p5) (.cons (bf920p6) (.cons (bf920p7) (.cons (bf920p8) (.cons (bf920p9) (.cons (bf920p10) (.cons (bf920p11) .nil))))))))))))

theorem f921 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [0,0,1,4]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private abbrev bf922 (i : Nat) := Split43.four 8 i ⟨0,2,0,6,4,5⟩ [0,0] [0,0,2,3]

private theorem f922s0 : BadRow (bf922 0) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem f922s1 : BadRow (bf922 1) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f922s2 : BadRow (bf922 2) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem f922s3 : BadRow (bf922 3) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f922s4 : BadRow (bf922 4) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem f922s5 : BadRow (bf922 5) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f922s6 : BadRow (bf922 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f922s7 : BadRow (bf922 7) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

theorem f922 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [0,0,2,3]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,6,4,5⟩ [0,0] [0,0,2,3] (.cons (f922s0) (.cons (f922s1) (.cons (f922s2) (.cons (f922s3) (.cons (f922s4) (.cons (f922s5) (.cons (f922s6) (.cons (f922s7) .nil))))))))

private abbrev bf923 (i : Nat) := Split43.four 8 i ⟨0,2,0,6,4,5⟩ [0,0] [0,0,3,2]

private theorem f923s0 : BadRow (bf923 0) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem f923s1 : BadRow (bf923 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f923s2 : BadRow (bf923 2) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f923s3 : BadRow (bf923 3) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f923s4 : BadRow (bf923 4) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem f923s5 : BadRow (bf923 5) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem f923s6 : BadRow (bf923 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f923s7 : BadRow (bf923 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f923 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [0,0,3,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,6,4,5⟩ [0,0] [0,0,3,2] (.cons (f923s0) (.cons (f923s1) (.cons (f923s2) (.cons (f923s3) (.cons (f923s4) (.cons (f923s5) (.cons (f923s6) (.cons (f923s7) .nil))))))))

end Blc.SelfintSingleObject.Compact43
