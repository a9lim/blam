import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

private abbrev bg7560 (i : Nat) := Split43.five 12 i 7 7 3 false 3 5 4 [3,0,0,0]

private theorem bg7560p0 : BadRow (bg7560 0) := by empty43

private theorem bg7560p1 : BadRow (bg7560 1) := by empty43

private theorem bg7560p2 : BadRow (bg7560 2) := by empty43

private theorem bg7560p3 : BadRow (bg7560 3) := by empty43

private theorem bg7560p4 : BadRow (bg7560 4) := by empty43

private theorem bg7560p5 : BadRow (bg7560 5) := by empty43

private theorem bg7560p6 : BadRow (bg7560 6) := by empty43

private theorem bg7560p7 : BadRow (bg7560 7) := by empty43

private theorem bg7560p8 : BadRow (bg7560 8) := by empty43

private theorem bg7560p9 : BadRow (bg7560 9) := by empty43

private theorem bg7560p10 : BadRow (bg7560 10) := by empty43

private theorem bg7560p11 : BadRow (bg7560 11) := by empty43

theorem g7560 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 4 [3,0,0,0]) :=
  Split43.five_cover 12 (by decide) 7 7 3 false 3 5 4 [3,0,0,0] (.cons (bg7560p0) (.cons (bg7560p1) (.cons (bg7560p2) (.cons (bg7560p3) (.cons (bg7560p4) (.cons (bg7560p5) (.cons (bg7560p6) (.cons (bg7560p7) (.cons (bg7560p8) (.cons (bg7560p9) (.cons (bg7560p10) (.cons (bg7560p11) .nil))))))))))))

theorem g7561 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 4 [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg7562 (i : Nat) := Split43.five 12 i 7 7 3 false 3 5 5 [0,0,0,0,3]

private theorem bg7562p0 : BadRow (bg7562 0) := by empty43

private theorem bg7562p1 : BadRow (bg7562 1) := by empty43

private theorem bg7562p2 : BadRow (bg7562 2) := by empty43

private theorem bg7562p3 : BadRow (bg7562 3) := by empty43

private theorem bg7562p4 : BadRow (bg7562 4) := by empty43

private theorem bg7562p5 : BadRow (bg7562 5) := by empty43

private theorem bg7562p6 : BadRow (bg7562 6) := by empty43

private theorem bg7562p7 : BadRow (bg7562 7) := by empty43

private theorem bg7562p8 : BadRow (bg7562 8) := by empty43

private theorem bg7562p9 : BadRow (bg7562 9) := by empty43

private theorem bg7562p10 : BadRow (bg7562 10) := by empty43

private theorem bg7562p11 : BadRow (bg7562 11) := by empty43

theorem g7562 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [0,0,0,0,3]) :=
  Split43.five_cover 12 (by decide) 7 7 3 false 3 5 5 [0,0,0,0,3] (.cons (bg7562p0) (.cons (bg7562p1) (.cons (bg7562p2) (.cons (bg7562p3) (.cons (bg7562p4) (.cons (bg7562p5) (.cons (bg7562p6) (.cons (bg7562p7) (.cons (bg7562p8) (.cons (bg7562p9) (.cons (bg7562p10) (.cons (bg7562p11) .nil))))))))))))

theorem g7563 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
