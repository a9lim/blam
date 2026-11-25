import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

theorem g8077 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [1,0,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg8078 (i : Nat) := Split43.five 8 i 8 5 3 false 3 3 6 [1,0,0,0,2,0]

private theorem g8078s0 : BadRow (bg8078 0) :=
  row_of_forall (discharge bank [1,1,1,4,4,4,1,4,4,4,4,1,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8078s1 : BadRow (bg8078 1) :=
  row_of_forall (discharge bank [4,4,4,31,4,4,4,4,4,4,1,1,4,4,4,4,1,1,1,4,4,4,4,4,4,4,4,4,1,4,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8078s2 : BadRow (bg8078 2) :=
  row_of_forall (discharge bank [4,1,4,1,4,4,4,4,4,4,1,4,4,4,1,4,4,4,1,4,4,4,4,1,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8078s3 : BadRow (bg8078 3) :=
  row_of_forall (discharge bank [4,4,4,74,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8078s4 : BadRow (bg8078 4) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8078s5 : BadRow (bg8078 5) :=
  row_of_forall (discharge bank [4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8078s6 : BadRow (bg8078 6) :=
  row_of_forall (discharge bank [1,1,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8078s7 : BadRow (bg8078 7) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g8078 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [1,0,0,0,2,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 3 6 [1,0,0,0,2,0] (.cons (g8078s0) (.cons (g8078s1) (.cons (g8078s2) (.cons (g8078s3) (.cons (g8078s4) (.cons (g8078s5) (.cons (g8078s6) (.cons (g8078s7) .nil))))))))

private abbrev bg8079 (i : Nat) := Split43.five 12 i 8 5 3 true 3 3 6 [1,0,0,0,2,0]

private theorem bg8079p0 : BadRow (bg8079 0) := by empty43

private theorem bg8079p1 : BadRow (bg8079 1) := by empty43

private theorem bg8079p2 : BadRow (bg8079 2) := by empty43

private theorem bg8079p3 : BadRow (bg8079 3) := by empty43

private theorem bg8079p4 : BadRow (bg8079 4) := by empty43

private theorem bg8079p5 : BadRow (bg8079 5) := by empty43

private theorem bg8079p6 : BadRow (bg8079 6) := by empty43

private theorem bg8079p7 : BadRow (bg8079 7) := by empty43

private theorem bg8079p8 : BadRow (bg8079 8) := by empty43

private theorem bg8079p9 : BadRow (bg8079 9) := by empty43

private theorem bg8079p10 : BadRow (bg8079 10) := by empty43

private theorem bg8079p11 : BadRow (bg8079 11) := by empty43

theorem g8079 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [1,0,0,0,2,0]) :=
  Split43.five_cover 12 (by decide) 8 5 3 true 3 3 6 [1,0,0,0,2,0] (.cons (bg8079p0) (.cons (bg8079p1) (.cons (bg8079p2) (.cons (bg8079p3) (.cons (bg8079p4) (.cons (bg8079p5) (.cons (bg8079p6) (.cons (bg8079p7) (.cons (bg8079p8) (.cons (bg8079p9) (.cons (bg8079p10) (.cons (bg8079p11) .nil))))))))))))


end Blc.SelfintSingleObject.Compact43
