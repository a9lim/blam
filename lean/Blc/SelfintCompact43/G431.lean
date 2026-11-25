import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

theorem g6896 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,0,4,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,7,1,9,9] (hard := []) (by decide +kernel) .nil)

theorem g6897 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6898 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,0,4,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,9] (hard := []) (by decide +kernel) .nil)

theorem g6899 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg6900 (i : Nat) := Split43.five 12 i 7 6 5 false 5 4 5 [0,0,5,0,0]

private theorem bg6900p0 : BadRow (bg6900 0) := by empty43

private theorem bg6900p1 : BadRow (bg6900 1) := by empty43

private theorem bg6900p2 : BadRow (bg6900 2) := by empty43

private theorem bg6900p3 : BadRow (bg6900 3) := by empty43

private theorem bg6900p4 : BadRow (bg6900 4) := by empty43

private theorem bg6900p5 : BadRow (bg6900 5) := by empty43

private theorem bg6900p6 : BadRow (bg6900 6) := by empty43

private theorem bg6900p7 : BadRow (bg6900 7) := by empty43

private theorem bg6900p8 : BadRow (bg6900 8) := by empty43

private theorem bg6900p9 : BadRow (bg6900 9) := by empty43

private theorem bg6900p10 : BadRow (bg6900 10) := by empty43

private theorem bg6900p11 : BadRow (bg6900 11) := by empty43

theorem g6900 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,0,5,0,0]) :=
  Split43.five_cover 12 (by decide) 7 6 5 false 5 4 5 [0,0,5,0,0] (.cons (bg6900p0) (.cons (bg6900p1) (.cons (bg6900p2) (.cons (bg6900p3) (.cons (bg6900p4) (.cons (bg6900p5) (.cons (bg6900p6) (.cons (bg6900p7) (.cons (bg6900p8) (.cons (bg6900p9) (.cons (bg6900p10) (.cons (bg6900p11) .nil))))))))))))

theorem g6901 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6902 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,1,0,0,4]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,14,14,14,14] (hard := []) (by decide +kernel) .nil)

theorem g6903 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6904 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,1,0,1,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,4,2,2,4,4,4,4,4,4,4,4,2,2,2,2,2,2,2,2,2,4,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,2,2,2,2,4,4,4,4,4,4,4,4,4,4,7,7,7,7,7,7,7,7,7,7,7,7,7,14,14,73,14,9,14] (hard := []) (by decide +kernel) .nil)

theorem g6905 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6906 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,1,0,2,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,1,1,4,4,4,4,4,4,4,4,1,4,4,4,4,4,4,1,1,2,2,2,2,2,4,4,4,4,4,4,4,4,15,15,15,15,15,7,7,7,7,7,7,7,7,36,14,11,24,14,14] (hard := []) (by decide +kernel) .nil)

theorem g6907 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg6908 (i : Nat) := Split43.five 8 i 7 6 5 false 5 4 5 [0,1,0,3,1]

private theorem g6908s0 : BadRow (bg6908 0) :=
  row_of_forall (discharge bank [4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g6908s1 : BadRow (bg6908 1) :=
  row_of_forall (discharge bank [2,2,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g6908s2 : BadRow (bg6908 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,2,4,4,4,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g6908s3 : BadRow (bg6908 3) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g6908s4 : BadRow (bg6908 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g6908s5 : BadRow (bg6908 5) :=
  row_of_forall (discharge bank [2,2,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g6908s6 : BadRow (bg6908 6) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem g6908s7 : BadRow (bg6908 7) :=
  row_of_forall (discharge bank [2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,7,7,7,7,7,7,7,7,7,7,14,10,37,31,12,9,14] (hard := []) (by decide +kernel) .nil)

theorem g6908 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,1,0,3,1]) :=
  Split43.five_cover 8 (by decide) 7 6 5 false 5 4 5 [0,1,0,3,1] (.cons (g6908s0) (.cons (g6908s1) (.cons (g6908s2) (.cons (g6908s3) (.cons (g6908s4) (.cons (g6908s5) (.cons (g6908s6) (.cons (g6908s7) .nil))))))))

theorem g6909 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6910 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,1,0,4,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,14,14] (hard := []) (by decide +kernel) .nil)

theorem g6911 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
