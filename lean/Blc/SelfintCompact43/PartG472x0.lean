import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

private abbrev bg7552 (i : Nat) := Split43.five 12 i 7 7 3 false 3 5 4 [1,2,0,0]

private theorem bg7552p0 : BadRow (bg7552 0) := by empty43

private theorem bg7552p1 : BadRow (bg7552 1) := by empty43

private theorem bg7552p2 : BadRow (bg7552 2) := by empty43

private theorem bg7552p3 : BadRow (bg7552 3) := by empty43

private theorem bg7552p4 : BadRow (bg7552 4) := by empty43

private theorem bg7552p5 : BadRow (bg7552 5) := by empty43

private theorem bg7552p6 : BadRow (bg7552 6) := by empty43

private theorem bg7552p7 : BadRow (bg7552 7) := by empty43

private theorem bg7552p8 : BadRow (bg7552 8) := by empty43

private theorem bg7552p9 : BadRow (bg7552 9) := by empty43

private theorem bg7552p10 : BadRow (bg7552 10) := by empty43

private theorem bg7552p11 : BadRow (bg7552 11) := by empty43

theorem g7552 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 4 [1,2,0,0]) :=
  Split43.five_cover 12 (by decide) 7 7 3 false 3 5 4 [1,2,0,0] (.cons (bg7552p0) (.cons (bg7552p1) (.cons (bg7552p2) (.cons (bg7552p3) (.cons (bg7552p4) (.cons (bg7552p5) (.cons (bg7552p6) (.cons (bg7552p7) (.cons (bg7552p8) (.cons (bg7552p9) (.cons (bg7552p10) (.cons (bg7552p11) .nil))))))))))))

theorem g7553 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 4 [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg7554 (i : Nat) := Split43.five 12 i 7 7 3 false 3 5 4 [2,0,0,1]

private theorem bg7554p0 : BadRow (bg7554 0) := by empty43

private theorem bg7554p1 : BadRow (bg7554 1) := by empty43

private theorem bg7554p2 : BadRow (bg7554 2) := by empty43

private theorem bg7554p3 : BadRow (bg7554 3) := by empty43

private theorem bg7554p4 : BadRow (bg7554 4) := by empty43

private theorem bg7554p5 : BadRow (bg7554 5) := by empty43

private theorem bg7554p6 : BadRow (bg7554 6) := by empty43

private theorem bg7554p7 : BadRow (bg7554 7) := by empty43

private theorem bg7554p8 : BadRow (bg7554 8) := by empty43

private theorem bg7554p9 : BadRow (bg7554 9) := by empty43

private theorem bg7554p10 : BadRow (bg7554 10) := by empty43

private theorem bg7554p11 : BadRow (bg7554 11) := by empty43

theorem g7554 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 4 [2,0,0,1]) :=
  Split43.five_cover 12 (by decide) 7 7 3 false 3 5 4 [2,0,0,1] (.cons (bg7554p0) (.cons (bg7554p1) (.cons (bg7554p2) (.cons (bg7554p3) (.cons (bg7554p4) (.cons (bg7554p5) (.cons (bg7554p6) (.cons (bg7554p7) (.cons (bg7554p8) (.cons (bg7554p9) (.cons (bg7554p10) (.cons (bg7554p11) .nil))))))))))))

theorem g7555 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 4 [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
