import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

theorem g8000 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [2,1,0,0,0]) :=
  row_of_forall (discharge bank [1,1,6,7,6,7,6,7,1,1,6,7,6,7,6,7,6,7,1,1,6,7,6,7,6,7,72,10,6,7,6,7,6,7,6,7,6,7,6,7,6,7,6,7] (hard := []) (by decide +kernel) .nil)

theorem g8001 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [2,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8002 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8003 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg8004 (i : Nat) := Split43.five 12 i 8 5 3 false 3 3 6 [0,0,0,0,0,3]

private theorem bg8004p0 : BadRow (bg8004 0) := by empty43

private theorem bg8004p1 : BadRow (bg8004 1) := by empty43

private theorem bg8004p2 : BadRow (bg8004 2) := by empty43

private theorem bg8004p3 : BadRow (bg8004 3) := by empty43

private theorem bg8004p4 : BadRow (bg8004 4) := by empty43

private theorem bg8004p5 : BadRow (bg8004 5) := by empty43

private theorem bg8004p6 : BadRow (bg8004 6) := by empty43

private theorem bg8004p7 : BadRow (bg8004 7) := by empty43

private theorem bg8004p8 : BadRow (bg8004 8) := by empty43

private theorem bg8004p9 : BadRow (bg8004 9) := by empty43

private theorem bg8004p10 : BadRow (bg8004 10) := by empty43

private theorem bg8004p11 : BadRow (bg8004 11) := by empty43

theorem g8004 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [0,0,0,0,0,3]) :=
  Split43.five_cover 12 (by decide) 8 5 3 false 3 3 6 [0,0,0,0,0,3] (.cons (bg8004p0) (.cons (bg8004p1) (.cons (bg8004p2) (.cons (bg8004p3) (.cons (bg8004p4) (.cons (bg8004p5) (.cons (bg8004p6) (.cons (bg8004p7) (.cons (bg8004p8) (.cons (bg8004p9) (.cons (bg8004p10) (.cons (bg8004p11) .nil))))))))))))

private abbrev bg8005 (i : Nat) := Split43.five 12 i 8 5 3 true 3 3 6 [0,0,0,0,0,3]

private theorem bg8005p0 : BadRow (bg8005 0) := by empty43

private theorem bg8005p1 : BadRow (bg8005 1) := by empty43

private theorem bg8005p2 : BadRow (bg8005 2) := by empty43

private theorem bg8005p3 : BadRow (bg8005 3) := by empty43

private theorem bg8005p4 : BadRow (bg8005 4) := by empty43

private theorem bg8005p5 : BadRow (bg8005 5) := by empty43

private theorem bg8005p6 : BadRow (bg8005 6) := by empty43

private theorem bg8005p7 : BadRow (bg8005 7) := by empty43

private theorem bg8005p8 : BadRow (bg8005 8) := by empty43

private theorem bg8005p9 : BadRow (bg8005 9) := by empty43

private theorem bg8005p10 : BadRow (bg8005 10) := by empty43

private theorem bg8005p11 : BadRow (bg8005 11) := by empty43

theorem g8005 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [0,0,0,0,0,3]) :=
  Split43.five_cover 12 (by decide) 8 5 3 true 3 3 6 [0,0,0,0,0,3] (.cons (bg8005p0) (.cons (bg8005p1) (.cons (bg8005p2) (.cons (bg8005p3) (.cons (bg8005p4) (.cons (bg8005p5) (.cons (bg8005p6) (.cons (bg8005p7) (.cons (bg8005p8) (.cons (bg8005p9) (.cons (bg8005p10) (.cons (bg8005p11) .nil))))))))))))


end Blc.SelfintSingleObject.Compact43
