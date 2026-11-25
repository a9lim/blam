import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

private abbrev bg8110 (i : Nat) := Split43.five 8 i 8 5 3 false 3 3 6 [2,0,1,0,0,0]

private theorem g8110s0 : BadRow (bg8110 0) :=
  row_of_forall (discharge bank [4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8110s1 : BadRow (bg8110 1) :=
  row_of_forall (discharge bank [1,1,1,4,4,4,1,4,4,4,4,1,4,4,4,1,1,1,4,4,4,1,4,1,4,4,4,4,4,4,4,4,1,4,4,4,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8110s2 : BadRow (bg8110 2) :=
  row_of_forall (discharge bank [1,4,4,4,1,4,4,4,4,4,18,4,4,4,4,4,22,4,19,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8110s3 : BadRow (bg8110 3) :=
  row_of_forall (discharge bank [1,1,1,4,4,4,1,4,4,4,4,1,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8110s4 : BadRow (bg8110 4) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8110s5 : BadRow (bg8110 5) :=
  row_of_forall (discharge bank [22,22,1,4,4,4,18,18,19,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8110s6 : BadRow (bg8110 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g8110s7 : BadRow (bg8110 7) :=
  row_of_forall (discharge bank [22,4,22,4,19,4,19,4,18,4] (hard := []) (by decide +kernel) .nil)

theorem g8110 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [2,0,1,0,0,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 3 6 [2,0,1,0,0,0] (.cons (g8110s0) (.cons (g8110s1) (.cons (g8110s2) (.cons (g8110s3) (.cons (g8110s4) (.cons (g8110s5) (.cons (g8110s6) (.cons (g8110s7) .nil))))))))

private abbrev bg8111 (i : Nat) := Split43.five 12 i 8 5 3 true 3 3 6 [2,0,1,0,0,0]

private theorem bg8111p0 : BadRow (bg8111 0) := by empty43

private theorem bg8111p1 : BadRow (bg8111 1) := by empty43

private theorem bg8111p2 : BadRow (bg8111 2) := by empty43

private theorem bg8111p3 : BadRow (bg8111 3) := by empty43

private theorem bg8111p4 : BadRow (bg8111 4) := by empty43

private theorem bg8111p5 : BadRow (bg8111 5) := by empty43

private theorem bg8111p6 : BadRow (bg8111 6) := by empty43

private theorem bg8111p7 : BadRow (bg8111 7) := by empty43

private theorem bg8111p8 : BadRow (bg8111 8) := by empty43

private theorem bg8111p9 : BadRow (bg8111 9) := by empty43

private theorem bg8111p10 : BadRow (bg8111 10) := by empty43

private theorem bg8111p11 : BadRow (bg8111 11) := by empty43

theorem g8111 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [2,0,1,0,0,0]) :=
  Split43.five_cover 12 (by decide) 8 5 3 true 3 3 6 [2,0,1,0,0,0] (.cons (bg8111p0) (.cons (bg8111p1) (.cons (bg8111p2) (.cons (bg8111p3) (.cons (bg8111p4) (.cons (bg8111p5) (.cons (bg8111p6) (.cons (bg8111p7) (.cons (bg8111p8) (.cons (bg8111p9) (.cons (bg8111p10) (.cons (bg8111p11) .nil))))))))))))


end Blc.SelfintSingleObject.Compact43
