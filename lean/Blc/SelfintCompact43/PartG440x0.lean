import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

private abbrev bg7040 (i : Nat) := Split43.five 12 i 7 6 5 false 5 4 5 [1,4,0,0,0]

private theorem bg7040p0 : BadRow (bg7040 0) := by empty43

private theorem bg7040p1 : BadRow (bg7040 1) := by empty43

private theorem bg7040p2 : BadRow (bg7040 2) := by empty43

private theorem bg7040p3 : BadRow (bg7040 3) := by empty43

private theorem bg7040p4 : BadRow (bg7040 4) := by empty43

private theorem bg7040p5 : BadRow (bg7040 5) := by empty43

private theorem bg7040p6 : BadRow (bg7040 6) := by empty43

private theorem bg7040p7 : BadRow (bg7040 7) := by empty43

private theorem bg7040p8 : BadRow (bg7040 8) := by empty43

private theorem bg7040p9 : BadRow (bg7040 9) := by empty43

private theorem bg7040p10 : BadRow (bg7040 10) := by empty43

private theorem bg7040p11 : BadRow (bg7040 11) := by empty43

theorem g7040 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,4,0,0,0]) :=
  Split43.five_cover 12 (by decide) 7 6 5 false 5 4 5 [1,4,0,0,0] (.cons (bg7040p0) (.cons (bg7040p1) (.cons (bg7040p2) (.cons (bg7040p3) (.cons (bg7040p4) (.cons (bg7040p5) (.cons (bg7040p6) (.cons (bg7040p7) (.cons (bg7040p8) (.cons (bg7040p9) (.cons (bg7040p10) (.cons (bg7040p11) .nil))))))))))))

theorem g7041 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7042 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [2,0,0,0,3]) :=
  row_of_forall (discharge bank [4,1,4,1,4,4,4,4,4,4,1,1,1,4,4,4,1,4,4,4,1,4,4,4,4,1,4,4,4,1,1,1,1,4,4,4,4,7,7,7,7,4,4,4,4,4,4,1,14] (hard := []) (by decide +kernel) .nil)

theorem g7043 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [2,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7044 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [2,0,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,7,7,7,36,4,4,15,1,7,4,4,1,4,4,1,7,4,4,4,6,6,36,4,4,4,4,4,4,6,6,6,11,36,4,4,4,4,4,4,4,6,6,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem g7045 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [2,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg7046 (i : Nat) := Split43.five 8 i 7 6 5 false 5 4 5 [2,0,0,2,1]

private theorem g7046s0 : BadRow (bg7046 0) :=
  row_of_forall (discharge bank [2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7046s1 : BadRow (bg7046 1) :=
  row_of_forall (discharge bank [30,38,36,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7046s2 : BadRow (bg7046 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,15,1,1,4,4,7,4,25,4,4,4,4,1,6,6,6] (hard := []) (by decide +kernel) .nil)

private theorem g7046s3 : BadRow (bg7046 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7046s4 : BadRow (bg7046 4) :=
  row_of_forall (discharge bank [7,7,7,1,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7046s5 : BadRow (bg7046 5) :=
  row_of_forall (discharge bank [2,2,7,7,4,18,18,11,36,4,4,4,1,4,4,4,6,4,4,4,6,6,6] (hard := []) (by decide +kernel) .nil)

private theorem g7046s6 : BadRow (bg7046 6) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7046s7 : BadRow (bg7046 7) :=
  row_of_forall (discharge bank [6,6] (hard := []) (by decide +kernel) .nil)

theorem g7046 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [2,0,0,2,1]) :=
  Split43.five_cover 8 (by decide) 7 6 5 false 5 4 5 [2,0,0,2,1] (.cons (g7046s0) (.cons (g7046s1) (.cons (g7046s2) (.cons (g7046s3) (.cons (g7046s4) (.cons (g7046s5) (.cons (g7046s6) (.cons (g7046s7) .nil))))))))

theorem g7047 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [2,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7048 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [2,0,0,3,0]) :=
  row_of_forall (discharge bank [4,4,4,31,4,4,4,4,4,4,4,4,4,4,27,1,1,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,4,4,4,4,7,7,7,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7049 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [2,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
