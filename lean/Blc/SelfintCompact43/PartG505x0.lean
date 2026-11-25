import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

theorem g8080 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [1,0,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8081 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [1,0,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8082 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [1,0,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8083 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [1,0,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg8084 (i : Nat) := Split43.five 8 i 8 5 3 false 3 3 6 [1,0,0,2,0,0]

private theorem g8084s0 : BadRow (bg8084 0) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8084s1 : BadRow (bg8084 1) :=
  row_of_forall (discharge bank [53,4,4,4,1,4,4,4,4,4,53,4,4,4,31,1,4,4,1,4,1,4,4,4,4,4,4,4,4,4,4,74,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8084s2 : BadRow (bg8084 2) :=
  row_of_forall (discharge bank [4,4,4,74,4,4,4,4,4,4,4,4,4,4,1,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8084s3 : BadRow (bg8084 3) :=
  row_of_forall (discharge bank [53,4,4,4,1,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8084s4 : BadRow (bg8084 4) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8084s5 : BadRow (bg8084 5) :=
  row_of_forall (discharge bank [53,4,4,4,53,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8084s6 : BadRow (bg8084 6) :=
  row_of_forall (discharge bank [1,20,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8084s7 : BadRow (bg8084 7) :=
  row_of_forall (discharge bank [1,4,1,4,1,4,1,4,1,4] (hard := []) (by decide +kernel) .nil)

theorem g8084 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [1,0,0,2,0,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 3 6 [1,0,0,2,0,0] (.cons (g8084s0) (.cons (g8084s1) (.cons (g8084s2) (.cons (g8084s3) (.cons (g8084s4) (.cons (g8084s5) (.cons (g8084s6) (.cons (g8084s7) .nil))))))))

private abbrev bg8085 (i : Nat) := Split43.five 12 i 8 5 3 true 3 3 6 [1,0,0,2,0,0]

private theorem bg8085p0 : BadRow (bg8085 0) := by empty43

private theorem bg8085p1 : BadRow (bg8085 1) := by empty43

private theorem bg8085p2 : BadRow (bg8085 2) := by empty43

private theorem bg8085p3 : BadRow (bg8085 3) := by empty43

private theorem bg8085p4 : BadRow (bg8085 4) := by empty43

private theorem bg8085p5 : BadRow (bg8085 5) := by empty43

private theorem bg8085p6 : BadRow (bg8085 6) := by empty43

private theorem bg8085p7 : BadRow (bg8085 7) := by empty43

private theorem bg8085p8 : BadRow (bg8085 8) := by empty43

private theorem bg8085p9 : BadRow (bg8085 9) := by empty43

private theorem bg8085p10 : BadRow (bg8085 10) := by empty43

private theorem bg8085p11 : BadRow (bg8085 11) := by empty43

theorem g8085 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [1,0,0,2,0,0]) :=
  Split43.five_cover 12 (by decide) 8 5 3 true 3 3 6 [1,0,0,2,0,0] (.cons (bg8085p0) (.cons (bg8085p1) (.cons (bg8085p2) (.cons (bg8085p3) (.cons (bg8085p4) (.cons (bg8085p5) (.cons (bg8085p6) (.cons (bg8085p7) (.cons (bg8085p8) (.cons (bg8085p9) (.cons (bg8085p10) (.cons (bg8085p11) .nil))))))))))))

theorem g8086 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [1,0,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8087 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [1,0,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8088 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [1,0,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8089 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [1,0,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
