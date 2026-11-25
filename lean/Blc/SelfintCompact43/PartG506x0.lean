import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

theorem g8096 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [1,1,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8097 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [1,1,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8098 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [1,1,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8099 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [1,1,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8100 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [1,1,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8101 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [1,1,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg8102 (i : Nat) := Split43.five 8 i 8 5 3 false 3 3 6 [1,2,0,0,0,0]

private theorem g8102s0 : BadRow (bg8102 0) :=
  row_of_forall (discharge bank [4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8102s1 : BadRow (bg8102 1) :=
  row_of_forall (discharge bank [1,1,1,4,4,4,1,4,4,4,4,1,4,4,4,20,20,20,4,4,4,4,4,20,4,20,4,53,4,4,4,4,4,4,4,4,53,53,20,4,4,4,20,4,4,4,4,53,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8102s2 : BadRow (bg8102 2) :=
  row_of_forall (discharge bank [1,4,4,4,20,4,4,4,4,53,4,4,4,1,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8102s3 : BadRow (bg8102 3) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g8102s4 : BadRow (bg8102 4) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g8102s5 : BadRow (bg8102 5) :=
  row_of_forall (discharge bank [1,1,14,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8102s6 : BadRow (bg8102 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g8102s7 : BadRow (bg8102 7) :=
  row_of_forall (discharge bank [1,4,20,4,1,4] (hard := []) (by decide +kernel) .nil)

theorem g8102 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [1,2,0,0,0,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 3 6 [1,2,0,0,0,0] (.cons (g8102s0) (.cons (g8102s1) (.cons (g8102s2) (.cons (g8102s3) (.cons (g8102s4) (.cons (g8102s5) (.cons (g8102s6) (.cons (g8102s7) .nil))))))))

private abbrev bg8103 (i : Nat) := Split43.five 12 i 8 5 3 true 3 3 6 [1,2,0,0,0,0]

private theorem bg8103p0 : BadRow (bg8103 0) := by empty43

private theorem bg8103p1 : BadRow (bg8103 1) := by empty43

private theorem bg8103p2 : BadRow (bg8103 2) := by empty43

private theorem bg8103p3 : BadRow (bg8103 3) := by empty43

private theorem bg8103p4 : BadRow (bg8103 4) := by empty43

private theorem bg8103p5 : BadRow (bg8103 5) := by empty43

private theorem bg8103p6 : BadRow (bg8103 6) := by empty43

private theorem bg8103p7 : BadRow (bg8103 7) := by empty43

private theorem bg8103p8 : BadRow (bg8103 8) := by empty43

private theorem bg8103p9 : BadRow (bg8103 9) := by empty43

private theorem bg8103p10 : BadRow (bg8103 10) := by empty43

private theorem bg8103p11 : BadRow (bg8103 11) := by empty43

theorem g8103 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [1,2,0,0,0,0]) :=
  Split43.five_cover 12 (by decide) 8 5 3 true 3 3 6 [1,2,0,0,0,0] (.cons (bg8103p0) (.cons (bg8103p1) (.cons (bg8103p2) (.cons (bg8103p3) (.cons (bg8103p4) (.cons (bg8103p5) (.cons (bg8103p6) (.cons (bg8103p7) (.cons (bg8103p8) (.cons (bg8103p9) (.cons (bg8103p10) (.cons (bg8103p11) .nil))))))))))))


end Blc.SelfintSingleObject.Compact43
