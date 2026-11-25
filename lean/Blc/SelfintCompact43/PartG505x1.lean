import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

theorem g8090 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [1,0,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8091 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [1,0,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg8092 (i : Nat) := Split43.five 8 i 8 5 3 false 3 3 6 [1,0,2,0,0,0]

private theorem g8092s0 : BadRow (bg8092 0) :=
  row_of_forall (discharge bank [4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8092s1 : BadRow (bg8092 1) :=
  row_of_forall (discharge bank [53,53,1,4,4,4,20,4,4,4,4,53,4,4,4,1,1,1,4,4,4,1,4,1,4,4,4,4,4,4,4,4,53,4,4,4,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8092s2 : BadRow (bg8092 2) :=
  row_of_forall (discharge bank [53,4,4,4,1,4,4,4,4,4,53,4,4,4,4,4,1,4,1,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8092s3 : BadRow (bg8092 3) :=
  row_of_forall (discharge bank [53,53,1,4,4,4,20,4,4,4,4,53,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8092s4 : BadRow (bg8092 4) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8092s5 : BadRow (bg8092 5) :=
  row_of_forall (discharge bank [1,1,14,4,4,4,1,1,1,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8092s6 : BadRow (bg8092 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g8092s7 : BadRow (bg8092 7) :=
  row_of_forall (discharge bank [1,4,1,4,1,4,1,4,1,4] (hard := []) (by decide +kernel) .nil)

theorem g8092 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [1,0,2,0,0,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 3 6 [1,0,2,0,0,0] (.cons (g8092s0) (.cons (g8092s1) (.cons (g8092s2) (.cons (g8092s3) (.cons (g8092s4) (.cons (g8092s5) (.cons (g8092s6) (.cons (g8092s7) .nil))))))))

private abbrev bg8093 (i : Nat) := Split43.five 12 i 8 5 3 true 3 3 6 [1,0,2,0,0,0]

private theorem bg8093p0 : BadRow (bg8093 0) := by empty43

private theorem bg8093p1 : BadRow (bg8093 1) := by empty43

private theorem bg8093p2 : BadRow (bg8093 2) := by empty43

private theorem bg8093p3 : BadRow (bg8093 3) := by empty43

private theorem bg8093p4 : BadRow (bg8093 4) := by empty43

private theorem bg8093p5 : BadRow (bg8093 5) := by empty43

private theorem bg8093p6 : BadRow (bg8093 6) := by empty43

private theorem bg8093p7 : BadRow (bg8093 7) := by empty43

private theorem bg8093p8 : BadRow (bg8093 8) := by empty43

private theorem bg8093p9 : BadRow (bg8093 9) := by empty43

private theorem bg8093p10 : BadRow (bg8093 10) := by empty43

private theorem bg8093p11 : BadRow (bg8093 11) := by empty43

theorem g8093 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [1,0,2,0,0,0]) :=
  Split43.five_cover 12 (by decide) 8 5 3 true 3 3 6 [1,0,2,0,0,0] (.cons (bg8093p0) (.cons (bg8093p1) (.cons (bg8093p2) (.cons (bg8093p3) (.cons (bg8093p4) (.cons (bg8093p5) (.cons (bg8093p6) (.cons (bg8093p7) (.cons (bg8093p8) (.cons (bg8093p9) (.cons (bg8093p10) (.cons (bg8093p11) .nil))))))))))))

theorem g8094 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [1,1,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8095 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [1,1,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
