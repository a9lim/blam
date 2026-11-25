import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

private abbrev bg8073 (i : Nat) := Split43.five 12 i 8 5 3 true 3 3 6 [0,3,0,0,0,0]

private theorem bg8073p0 : BadRow (bg8073 0) := by empty43

private theorem bg8073p1 : BadRow (bg8073 1) := by empty43

private theorem bg8073p2 : BadRow (bg8073 2) := by empty43

private theorem bg8073p3 : BadRow (bg8073 3) := by empty43

private theorem bg8073p4 : BadRow (bg8073 4) := by empty43

private theorem bg8073p5 : BadRow (bg8073 5) := by empty43

private theorem bg8073p6 : BadRow (bg8073 6) := by empty43

private theorem bg8073p7 : BadRow (bg8073 7) := by empty43

private theorem bg8073p8 : BadRow (bg8073 8) := by empty43

private theorem bg8073p9 : BadRow (bg8073 9) := by empty43

private theorem bg8073p10 : BadRow (bg8073 10) := by empty43

private theorem bg8073p11 : BadRow (bg8073 11) := by empty43

theorem g8073 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [0,3,0,0,0,0]) :=
  Split43.five_cover 12 (by decide) 8 5 3 true 3 3 6 [0,3,0,0,0,0] (.cons (bg8073p0) (.cons (bg8073p1) (.cons (bg8073p2) (.cons (bg8073p3) (.cons (bg8073p4) (.cons (bg8073p5) (.cons (bg8073p6) (.cons (bg8073p7) (.cons (bg8073p8) (.cons (bg8073p9) (.cons (bg8073p10) (.cons (bg8073p11) .nil))))))))))))

private abbrev bg8074 (i : Nat) := Split43.five 8 i 8 5 3 false 3 3 6 [1,0,0,0,0,2]

private theorem g8074s0 : BadRow (bg8074 0) :=
  row_of_forall (discharge bank [1,1,14,4,4,4,1,4,4,4,4,1,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8074s1 : BadRow (bg8074 1) :=
  row_of_forall (discharge bank [4,1,4,1,4,4,4,4,1,1,4,4,1,1,1,4,4,4,1,1,1,4,4,4,1,4,4,4,4,1,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8074s2 : BadRow (bg8074 2) :=
  row_of_forall (discharge bank [1,1,1,4,4,4,1,4,4,4,4,1,4,4,4,1,1,1,4,4,4,4,4,1,4,1,4,1,4,4,4,4,4,4,4,4,1,1,1,4,4,4,1,4,4,4,4,1,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8074s3 : BadRow (bg8074 3) :=
  row_of_forall (discharge bank [4,1,4,1,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8074s4 : BadRow (bg8074 4) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8074s5 : BadRow (bg8074 5) :=
  row_of_forall (discharge bank [4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8074s6 : BadRow (bg8074 6) :=
  row_of_forall (discharge bank [1,1,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8074s7 : BadRow (bg8074 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8074 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [1,0,0,0,0,2]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 3 6 [1,0,0,0,0,2] (.cons (g8074s0) (.cons (g8074s1) (.cons (g8074s2) (.cons (g8074s3) (.cons (g8074s4) (.cons (g8074s5) (.cons (g8074s6) (.cons (g8074s7) .nil))))))))

private abbrev bg8075 (i : Nat) := Split43.five 12 i 8 5 3 true 3 3 6 [1,0,0,0,0,2]

private theorem bg8075p0 : BadRow (bg8075 0) := by empty43

private theorem bg8075p1 : BadRow (bg8075 1) := by empty43

private theorem bg8075p2 : BadRow (bg8075 2) := by empty43

private theorem bg8075p3 : BadRow (bg8075 3) := by empty43

private theorem bg8075p4 : BadRow (bg8075 4) := by empty43

private theorem bg8075p5 : BadRow (bg8075 5) := by empty43

private theorem bg8075p6 : BadRow (bg8075 6) := by empty43

private theorem bg8075p7 : BadRow (bg8075 7) := by empty43

private theorem bg8075p8 : BadRow (bg8075 8) := by empty43

private theorem bg8075p9 : BadRow (bg8075 9) := by empty43

private theorem bg8075p10 : BadRow (bg8075 10) := by empty43

private theorem bg8075p11 : BadRow (bg8075 11) := by empty43

theorem g8075 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [1,0,0,0,0,2]) :=
  Split43.five_cover 12 (by decide) 8 5 3 true 3 3 6 [1,0,0,0,0,2] (.cons (bg8075p0) (.cons (bg8075p1) (.cons (bg8075p2) (.cons (bg8075p3) (.cons (bg8075p4) (.cons (bg8075p5) (.cons (bg8075p6) (.cons (bg8075p7) (.cons (bg8075p8) (.cons (bg8075p9) (.cons (bg8075p10) (.cons (bg8075p11) .nil))))))))))))

theorem g8076 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [1,0,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
