import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

private abbrev bg8112 (i : Nat) := Split43.five 8 i 8 5 3 false 3 3 6 [2,1,0,0,0,0]

private theorem g8112s0 : BadRow (bg8112 0) :=
  row_of_forall (discharge bank [4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8112s1 : BadRow (bg8112 1) :=
  row_of_forall (discharge bank [1,1,1,4,4,4,1,4,4,4,4,1,4,4,4,1,1,1,4,4,4,4,4,1,4,1,4,1,4,4,4,4,4,4,4,4,1,1,1,4,4,4,1,4,4,4,4,1,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8112s2 : BadRow (bg8112 2) :=
  row_of_forall (discharge bank [1,4,4,4,1,4,4,4,4,1,4,4,4,22,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8112s3 : BadRow (bg8112 3) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g8112s4 : BadRow (bg8112 4) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g8112s5 : BadRow (bg8112 5) :=
  row_of_forall (discharge bank [22,22,1,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8112s6 : BadRow (bg8112 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g8112s7 : BadRow (bg8112 7) :=
  row_of_forall (discharge bank [22,4,22,4,19,4] (hard := []) (by decide +kernel) .nil)

theorem g8112 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [2,1,0,0,0,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 3 6 [2,1,0,0,0,0] (.cons (g8112s0) (.cons (g8112s1) (.cons (g8112s2) (.cons (g8112s3) (.cons (g8112s4) (.cons (g8112s5) (.cons (g8112s6) (.cons (g8112s7) .nil))))))))

private abbrev bg8113 (i : Nat) := Split43.five 12 i 8 5 3 true 3 3 6 [2,1,0,0,0,0]

private theorem bg8113p0 : BadRow (bg8113 0) := by empty43

private theorem bg8113p1 : BadRow (bg8113 1) := by empty43

private theorem bg8113p2 : BadRow (bg8113 2) := by empty43

private theorem bg8113p3 : BadRow (bg8113 3) := by empty43

private theorem bg8113p4 : BadRow (bg8113 4) := by empty43

private theorem bg8113p5 : BadRow (bg8113 5) := by empty43

private theorem bg8113p6 : BadRow (bg8113 6) := by empty43

private theorem bg8113p7 : BadRow (bg8113 7) := by empty43

private theorem bg8113p8 : BadRow (bg8113 8) := by empty43

private theorem bg8113p9 : BadRow (bg8113 9) := by empty43

private theorem bg8113p10 : BadRow (bg8113 10) := by empty43

private theorem bg8113p11 : BadRow (bg8113 11) := by empty43

theorem g8113 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [2,1,0,0,0,0]) :=
  Split43.five_cover 12 (by decide) 8 5 3 true 3 3 6 [2,1,0,0,0,0] (.cons (bg8113p0) (.cons (bg8113p1) (.cons (bg8113p2) (.cons (bg8113p3) (.cons (bg8113p4) (.cons (bg8113p5) (.cons (bg8113p6) (.cons (bg8113p7) (.cons (bg8113p8) (.cons (bg8113p9) (.cons (bg8113p10) (.cons (bg8113p11) .nil))))))))))))

private abbrev bg8114 (i : Nat) := Split43.five 12 i 8 5 3 false 3 3 6 [3,0,0,0,0,0]

private theorem bg8114p0 : BadRow (bg8114 0) := by empty43

private theorem bg8114p1 : BadRow (bg8114 1) := by empty43

private theorem bg8114p2 : BadRow (bg8114 2) := by empty43

private theorem bg8114p3 : BadRow (bg8114 3) := by empty43

private theorem bg8114p4 : BadRow (bg8114 4) := by empty43

private theorem bg8114p5 : BadRow (bg8114 5) := by empty43

private theorem bg8114p6 : BadRow (bg8114 6) := by empty43

private theorem bg8114p7 : BadRow (bg8114 7) := by empty43

private theorem bg8114p8 : BadRow (bg8114 8) := by empty43

private theorem bg8114p9 : BadRow (bg8114 9) := by empty43

private theorem bg8114p10 : BadRow (bg8114 10) := by empty43

private theorem bg8114p11 : BadRow (bg8114 11) := by empty43

theorem g8114 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [3,0,0,0,0,0]) :=
  Split43.five_cover 12 (by decide) 8 5 3 false 3 3 6 [3,0,0,0,0,0] (.cons (bg8114p0) (.cons (bg8114p1) (.cons (bg8114p2) (.cons (bg8114p3) (.cons (bg8114p4) (.cons (bg8114p5) (.cons (bg8114p6) (.cons (bg8114p7) (.cons (bg8114p8) (.cons (bg8114p9) (.cons (bg8114p10) (.cons (bg8114p11) .nil))))))))))))

private abbrev bg8115 (i : Nat) := Split43.five 12 i 8 5 3 true 3 3 6 [3,0,0,0,0,0]

private theorem bg8115p0 : BadRow (bg8115 0) := by empty43

private theorem bg8115p1 : BadRow (bg8115 1) := by empty43

private theorem bg8115p2 : BadRow (bg8115 2) := by empty43

private theorem bg8115p3 : BadRow (bg8115 3) := by empty43

private theorem bg8115p4 : BadRow (bg8115 4) := by empty43

private theorem bg8115p5 : BadRow (bg8115 5) := by empty43

private theorem bg8115p6 : BadRow (bg8115 6) := by empty43

private theorem bg8115p7 : BadRow (bg8115 7) := by empty43

private theorem bg8115p8 : BadRow (bg8115 8) := by empty43

private theorem bg8115p9 : BadRow (bg8115 9) := by empty43

private theorem bg8115p10 : BadRow (bg8115 10) := by empty43

private theorem bg8115p11 : BadRow (bg8115 11) := by empty43

theorem g8115 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [3,0,0,0,0,0]) :=
  Split43.five_cover 12 (by decide) 8 5 3 true 3 3 6 [3,0,0,0,0,0] (.cons (bg8115p0) (.cons (bg8115p1) (.cons (bg8115p2) (.cons (bg8115p3) (.cons (bg8115p4) (.cons (bg8115p5) (.cons (bg8115p6) (.cons (bg8115p7) (.cons (bg8115p8) (.cons (bg8115p9) (.cons (bg8115p10) (.cons (bg8115p11) .nil))))))))))))

theorem g8116 : BadRow (Grammar43.fiveRow 8 5 3 false 3 4 3 [0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8117 : BadRow (Grammar43.fiveRow 8 5 3 true 3 4 3 [0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8118 : BadRow (Grammar43.fiveRow 8 5 3 false 3 4 3 [0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8119 : BadRow (Grammar43.fiveRow 8 5 3 true 3 4 3 [0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8120 : BadRow (Grammar43.fiveRow 8 5 3 false 3 4 3 [0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8121 : BadRow (Grammar43.fiveRow 8 5 3 true 3 4 3 [0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8122 : BadRow (Grammar43.fiveRow 8 5 3 false 3 4 3 [0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8123 : BadRow (Grammar43.fiveRow 8 5 3 true 3 4 3 [0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8124 : BadRow (Grammar43.fiveRow 8 5 3 false 3 4 3 [1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8125 : BadRow (Grammar43.fiveRow 8 5 3 true 3 4 3 [1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8126 : BadRow (Grammar43.fiveRow 8 5 3 false 3 4 3 [1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8127 : BadRow (Grammar43.fiveRow 8 5 3 true 3 4 3 [1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
