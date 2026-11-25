import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

private abbrev bg8104 (i : Nat) := Split43.five 8 i 8 5 3 false 3 3 6 [2,0,0,0,0,1]

private theorem g8104s0 : BadRow (bg8104 0) :=
  row_of_forall (discharge bank [36,36,1,4,4,4,22,4,4,4,4,36,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8104s1 : BadRow (bg8104 1) :=
  row_of_forall (discharge bank [4,4,1,4,4,4,4,7,7,4,4,7,7,1,4,4,4,1,1,1,4,4,4,1,4,4,4,4,1,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8104s2 : BadRow (bg8104 2) :=
  row_of_forall (discharge bank [1,1,1,4,4,4,1,4,4,4,4,1,4,4,4,22,22,22,4,4,4,4,4,22,4,22,4,36,4,4,4,4,4,4,4,4,36,36,22,4,4,4,22,4,4,4,4,36,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8104s3 : BadRow (bg8104 3) :=
  row_of_forall (discharge bank [4,4,1,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8104s4 : BadRow (bg8104 4) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8104s5 : BadRow (bg8104 5) :=
  row_of_forall (discharge bank [4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8104s6 : BadRow (bg8104 6) :=
  row_of_forall (discharge bank [36,36,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8104s7 : BadRow (bg8104 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8104 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [2,0,0,0,0,1]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 3 6 [2,0,0,0,0,1] (.cons (g8104s0) (.cons (g8104s1) (.cons (g8104s2) (.cons (g8104s3) (.cons (g8104s4) (.cons (g8104s5) (.cons (g8104s6) (.cons (g8104s7) .nil))))))))

private abbrev bg8105 (i : Nat) := Split43.five 12 i 8 5 3 true 3 3 6 [2,0,0,0,0,1]

private theorem bg8105p0 : BadRow (bg8105 0) := by empty43

private theorem bg8105p1 : BadRow (bg8105 1) := by empty43

private theorem bg8105p2 : BadRow (bg8105 2) := by empty43

private theorem bg8105p3 : BadRow (bg8105 3) := by empty43

private theorem bg8105p4 : BadRow (bg8105 4) := by empty43

private theorem bg8105p5 : BadRow (bg8105 5) := by empty43

private theorem bg8105p6 : BadRow (bg8105 6) := by empty43

private theorem bg8105p7 : BadRow (bg8105 7) := by empty43

private theorem bg8105p8 : BadRow (bg8105 8) := by empty43

private theorem bg8105p9 : BadRow (bg8105 9) := by empty43

private theorem bg8105p10 : BadRow (bg8105 10) := by empty43

private theorem bg8105p11 : BadRow (bg8105 11) := by empty43

theorem g8105 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [2,0,0,0,0,1]) :=
  Split43.five_cover 12 (by decide) 8 5 3 true 3 3 6 [2,0,0,0,0,1] (.cons (bg8105p0) (.cons (bg8105p1) (.cons (bg8105p2) (.cons (bg8105p3) (.cons (bg8105p4) (.cons (bg8105p5) (.cons (bg8105p6) (.cons (bg8105p7) (.cons (bg8105p8) (.cons (bg8105p9) (.cons (bg8105p10) (.cons (bg8105p11) .nil))))))))))))

private abbrev bg8106 (i : Nat) := Split43.five 8 i 8 5 3 false 3 3 6 [2,0,0,0,1,0]

private theorem g8106s0 : BadRow (bg8106 0) :=
  row_of_forall (discharge bank [36,36,1,4,4,4,22,4,4,4,4,36,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8106s1 : BadRow (bg8106 1) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,7,7,4,4,4,4,7,7,1,4,4,4,4,4,4,4,4,4,4,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8106s2 : BadRow (bg8106 2) :=
  row_of_forall (discharge bank [4,4,1,4,4,4,4,4,4,36,4,4,4,18,4,4,4,22,4,4,4,4,36,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8106s3 : BadRow (bg8106 3) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8106s4 : BadRow (bg8106 4) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8106s5 : BadRow (bg8106 5) :=
  row_of_forall (discharge bank [4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8106s6 : BadRow (bg8106 6) :=
  row_of_forall (discharge bank [36,36,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8106s7 : BadRow (bg8106 7) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g8106 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [2,0,0,0,1,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 3 6 [2,0,0,0,1,0] (.cons (g8106s0) (.cons (g8106s1) (.cons (g8106s2) (.cons (g8106s3) (.cons (g8106s4) (.cons (g8106s5) (.cons (g8106s6) (.cons (g8106s7) .nil))))))))


end Blc.SelfintSingleObject.Compact43
