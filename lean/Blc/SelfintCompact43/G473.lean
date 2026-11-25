import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

private abbrev bg7568 (i : Nat) := Split43.five 12 i 7 7 3 false 3 5 5 [0,0,0,3,0]

private theorem bg7568p0 : BadRow (bg7568 0) := by empty43

private theorem bg7568p1 : BadRow (bg7568 1) := by empty43

private theorem bg7568p2 : BadRow (bg7568 2) := by empty43

private theorem bg7568p3 : BadRow (bg7568 3) := by empty43

private theorem bg7568p4 : BadRow (bg7568 4) := by empty43

private theorem bg7568p5 : BadRow (bg7568 5) := by empty43

private theorem bg7568p6 : BadRow (bg7568 6) := by empty43

private theorem bg7568p7 : BadRow (bg7568 7) := by empty43

private theorem bg7568p8 : BadRow (bg7568 8) := by empty43

private theorem bg7568p9 : BadRow (bg7568 9) := by empty43

private theorem bg7568p10 : BadRow (bg7568 10) := by empty43

private theorem bg7568p11 : BadRow (bg7568 11) := by empty43

theorem g7568 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [0,0,0,3,0]) :=
  Split43.five_cover 12 (by decide) 7 7 3 false 3 5 5 [0,0,0,3,0] (.cons (bg7568p0) (.cons (bg7568p1) (.cons (bg7568p2) (.cons (bg7568p3) (.cons (bg7568p4) (.cons (bg7568p5) (.cons (bg7568p6) (.cons (bg7568p7) (.cons (bg7568p8) (.cons (bg7568p9) (.cons (bg7568p10) (.cons (bg7568p11) .nil))))))))))))

theorem g7569 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg7570 (i : Nat) := Split43.five 8 i 7 7 3 false 3 5 5 [0,0,1,0,2]

private theorem g7570s0 : BadRow (bg7570 0) :=
  row_of_forall (discharge bank [2] (hard := []) (by decide +kernel) .nil)

private theorem g7570s1 : BadRow (bg7570 1) :=
  row_of_forall (discharge bank [2,2,2,2,4,4,4,4,4,4,4,4,4,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7570s2 : BadRow (bg7570 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7570s3 : BadRow (bg7570 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,2,2,4,4,15,15,15,15,15,15,15,15,15,1,1,6,7,6,7] (hard := []) (by decide +kernel) .nil)

private theorem g7570s4 : BadRow (bg7570 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7570s5 : BadRow (bg7570 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4,2,2,6,6] (hard := []) (by decide +kernel) .nil)

private theorem g7570s6 : BadRow (bg7570 6) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7570s7 : BadRow (bg7570 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,36,36,36,36] (hard := []) (by decide +kernel) .nil)

theorem g7570 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [0,0,1,0,2]) :=
  Split43.five_cover 8 (by decide) 7 7 3 false 3 5 5 [0,0,1,0,2] (.cons (g7570s0) (.cons (g7570s1) (.cons (g7570s2) (.cons (g7570s3) (.cons (g7570s4) (.cons (g7570s5) (.cons (g7570s6) (.cons (g7570s7) .nil))))))))

theorem g7571 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [0,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7572 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7573 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg7574 (i : Nat) := Split43.five 8 i 7 7 3 false 3 5 5 [0,0,1,2,0]

private theorem g7574s0 : BadRow (bg7574 0) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7574s1 : BadRow (bg7574 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7574s2 : BadRow (bg7574 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,4,9] (hard := []) (by decide +kernel) .nil)

private theorem g7574s3 : BadRow (bg7574 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,2,4,15,15,15,15,15,38,1,6,7] (hard := []) (by decide +kernel) .nil)

private theorem g7574s4 : BadRow (bg7574 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7574s5 : BadRow (bg7574 5) :=
  row_of_forall (discharge bank [2,4,2,6] (hard := []) (by decide +kernel) .nil)

private theorem g7574s6 : BadRow (bg7574 6) :=
  row_of_forall (discharge bank [2,2,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7574s7 : BadRow (bg7574 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,36,36] (hard := []) (by decide +kernel) .nil)

theorem g7574 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [0,0,1,2,0]) :=
  Split43.five_cover 8 (by decide) 7 7 3 false 3 5 5 [0,0,1,2,0] (.cons (g7574s0) (.cons (g7574s1) (.cons (g7574s2) (.cons (g7574s3) (.cons (g7574s4) (.cons (g7574s5) (.cons (g7574s6) (.cons (g7574s7) .nil))))))))

theorem g7575 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [0,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg7576 (i : Nat) := Split43.five 8 i 7 7 3 false 3 5 5 [0,0,2,0,1]

private theorem g7576s0 : BadRow (bg7576 0) :=
  row_of_forall (discharge bank [2] (hard := []) (by decide +kernel) .nil)

private theorem g7576s1 : BadRow (bg7576 1) :=
  row_of_forall (discharge bank [2,2,2,2,4,4,4,4,4,4,4,4,4,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7576s2 : BadRow (bg7576 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7576s3 : BadRow (bg7576 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,2,2,4,4,15,15,15,15,15,15,15,15,15,30,1,6,7,6,7] (hard := []) (by decide +kernel) .nil)

private theorem g7576s4 : BadRow (bg7576 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7576s5 : BadRow (bg7576 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4,2,2,6,6] (hard := []) (by decide +kernel) .nil)

private theorem g7576s6 : BadRow (bg7576 6) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7576s7 : BadRow (bg7576 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,36,36,36,36] (hard := []) (by decide +kernel) .nil)

theorem g7576 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [0,0,2,0,1]) :=
  Split43.five_cover 8 (by decide) 7 7 3 false 3 5 5 [0,0,2,0,1] (.cons (g7576s0) (.cons (g7576s1) (.cons (g7576s2) (.cons (g7576s3) (.cons (g7576s4) (.cons (g7576s5) (.cons (g7576s6) (.cons (g7576s7) .nil))))))))

theorem g7577 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [0,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg7578 (i : Nat) := Split43.five 8 i 7 7 3 false 3 5 5 [0,0,2,1,0]

private theorem g7578s0 : BadRow (bg7578 0) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7578s1 : BadRow (bg7578 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7578s2 : BadRow (bg7578 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,4,9] (hard := []) (by decide +kernel) .nil)

private theorem g7578s3 : BadRow (bg7578 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,2,4,15,15,15,15,15,1,1,6,7] (hard := []) (by decide +kernel) .nil)

private theorem g7578s4 : BadRow (bg7578 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7578s5 : BadRow (bg7578 5) :=
  row_of_forall (discharge bank [2,4,2,6] (hard := []) (by decide +kernel) .nil)

private theorem g7578s6 : BadRow (bg7578 6) :=
  row_of_forall (discharge bank [2,2,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7578s7 : BadRow (bg7578 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,36,36] (hard := []) (by decide +kernel) .nil)

theorem g7578 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [0,0,2,1,0]) :=
  Split43.five_cover 8 (by decide) 7 7 3 false 3 5 5 [0,0,2,1,0] (.cons (g7578s0) (.cons (g7578s1) (.cons (g7578s2) (.cons (g7578s3) (.cons (g7578s4) (.cons (g7578s5) (.cons (g7578s6) (.cons (g7578s7) .nil))))))))

theorem g7579 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [0,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg7580 (i : Nat) := Split43.five 12 i 7 7 3 false 3 5 5 [0,0,3,0,0]

private theorem bg7580p0 : BadRow (bg7580 0) := by empty43

private theorem bg7580p1 : BadRow (bg7580 1) := by empty43

private theorem bg7580p2 : BadRow (bg7580 2) := by empty43

private theorem bg7580p3 : BadRow (bg7580 3) := by empty43

private theorem bg7580p4 : BadRow (bg7580 4) := by empty43

private theorem bg7580p5 : BadRow (bg7580 5) := by empty43

private theorem bg7580p6 : BadRow (bg7580 6) := by empty43

private theorem bg7580p7 : BadRow (bg7580 7) := by empty43

private theorem bg7580p8 : BadRow (bg7580 8) := by empty43

private theorem bg7580p9 : BadRow (bg7580 9) := by empty43

private theorem bg7580p10 : BadRow (bg7580 10) := by empty43

private theorem bg7580p11 : BadRow (bg7580 11) := by empty43

theorem g7580 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [0,0,3,0,0]) :=
  Split43.five_cover 12 (by decide) 7 7 3 false 3 5 5 [0,0,3,0,0] (.cons (bg7580p0) (.cons (bg7580p1) (.cons (bg7580p2) (.cons (bg7580p3) (.cons (bg7580p4) (.cons (bg7580p5) (.cons (bg7580p6) (.cons (bg7580p7) (.cons (bg7580p8) (.cons (bg7580p9) (.cons (bg7580p10) (.cons (bg7580p11) .nil))))))))))))

theorem g7581 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg7582 (i : Nat) := Split43.five 8 i 7 7 3 false 3 5 5 [0,1,0,0,2]

private theorem g7582s0 : BadRow (bg7582 0) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7582s1 : BadRow (bg7582 1) :=
  row_of_forall (discharge bank [1,4,4,4,1,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7582s2 : BadRow (bg7582 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7582s3 : BadRow (bg7582 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,15,15,15,15,15,14,10,37,14,12] (hard := []) (by decide +kernel) .nil)

private theorem g7582s4 : BadRow (bg7582 4) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7582s5 : BadRow (bg7582 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7582s6 : BadRow (bg7582 6) :=
  row_of_forall (discharge bank [4] (hard := []) (by decide +kernel) .nil)

private theorem g7582s7 : BadRow (bg7582 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g7582 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [0,1,0,0,2]) :=
  Split43.five_cover 8 (by decide) 7 7 3 false 3 5 5 [0,1,0,0,2] (.cons (g7582s0) (.cons (g7582s1) (.cons (g7582s2) (.cons (g7582s3) (.cons (g7582s4) (.cons (g7582s5) (.cons (g7582s6) (.cons (g7582s7) .nil))))))))

theorem g7583 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [0,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
