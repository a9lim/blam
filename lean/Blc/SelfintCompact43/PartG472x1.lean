import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

private abbrev bg7556 (i : Nat) := Split43.five 12 i 7 7 3 false 3 5 4 [2,0,1,0]

private theorem bg7556p0 : BadRow (bg7556 0) := by empty43

private theorem bg7556p1 : BadRow (bg7556 1) := by empty43

private theorem bg7556p2 : BadRow (bg7556 2) := by empty43

private theorem bg7556p3 : BadRow (bg7556 3) := by empty43

private theorem bg7556p4 : BadRow (bg7556 4) := by empty43

private theorem bg7556p5 : BadRow (bg7556 5) := by empty43

private theorem bg7556p6 : BadRow (bg7556 6) := by empty43

private theorem bg7556p7 : BadRow (bg7556 7) := by empty43

private theorem bg7556p8 : BadRow (bg7556 8) := by empty43

private theorem bg7556p9 : BadRow (bg7556 9) := by empty43

private theorem bg7556p10 : BadRow (bg7556 10) := by empty43

private theorem bg7556p11 : BadRow (bg7556 11) := by empty43

theorem g7556 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 4 [2,0,1,0]) :=
  Split43.five_cover 12 (by decide) 7 7 3 false 3 5 4 [2,0,1,0] (.cons (bg7556p0) (.cons (bg7556p1) (.cons (bg7556p2) (.cons (bg7556p3) (.cons (bg7556p4) (.cons (bg7556p5) (.cons (bg7556p6) (.cons (bg7556p7) (.cons (bg7556p8) (.cons (bg7556p9) (.cons (bg7556p10) (.cons (bg7556p11) .nil))))))))))))

theorem g7557 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 4 [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg7558 (i : Nat) := Split43.five 12 i 7 7 3 false 3 5 4 [2,1,0,0]

private theorem bg7558p0 : BadRow (bg7558 0) := by empty43

private theorem bg7558p1 : BadRow (bg7558 1) := by empty43

private theorem bg7558p2 : BadRow (bg7558 2) := by empty43

private theorem bg7558p3 : BadRow (bg7558 3) := by empty43

private theorem bg7558p4 : BadRow (bg7558 4) := by empty43

private theorem bg7558p5 : BadRow (bg7558 5) := by empty43

private theorem bg7558p6 : BadRow (bg7558 6) := by empty43

private theorem bg7558p7 : BadRow (bg7558 7) := by empty43

private theorem bg7558p8 : BadRow (bg7558 8) := by empty43

private theorem bg7558p9 : BadRow (bg7558 9) := by empty43

private theorem bg7558p10 : BadRow (bg7558 10) := by empty43

private theorem bg7558p11 : BadRow (bg7558 11) := by empty43

theorem g7558 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 4 [2,1,0,0]) :=
  Split43.five_cover 12 (by decide) 7 7 3 false 3 5 4 [2,1,0,0] (.cons (bg7558p0) (.cons (bg7558p1) (.cons (bg7558p2) (.cons (bg7558p3) (.cons (bg7558p4) (.cons (bg7558p5) (.cons (bg7558p6) (.cons (bg7558p7) (.cons (bg7558p8) (.cons (bg7558p9) (.cons (bg7558p10) (.cons (bg7558p11) .nil))))))))))))

theorem g7559 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 4 [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
