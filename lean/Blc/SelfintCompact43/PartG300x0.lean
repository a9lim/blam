import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4800 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 3 [2,1,0]) :=
  row_of_forall (discharge bank [49,4,49,4,36] (hard := []) (by decide +kernel) .nil)

theorem g4801 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 3 [2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4802 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 3 [3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4803 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 3 [3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4804 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 4 [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4805 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 4 [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4806 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 4 [0,0,1,2]) :=
  row_of_forall (discharge bank [5,4,4,4,4,5,4,4,5,4,4,4,4,5,4,4,5,4,4,4,4,5,4,4,5,4,4,4,4,7,4,4,3,1,3,3,3,3,3,5,3,1,3,3,3,3,3,3,3,17,3,3,3,3,5,3,3,3,3,3,4,3,3,3,6,3,14,3,3,3] (hard := []) (by decide +kernel) .nil)

private abbrev bg4807 (i : Nat) := Split43.five 8 i 7 6 5 true 3 2 4 [0,0,1,2]

private theorem g4807s0 : BadRow (bg4807 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g4807s1 : BadRow (bg4807 1) :=
  row_of_forall (discharge bank [5,41,1,1,4,4,4,5,4,1,6,41,1,1,3,26,14,1,1,1,2,2,20,6,18,8,1,1,21,4,1,5,1,1,2,2,19,4,1,16,1,1,1,1,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g4807s2 : BadRow (bg4807 2) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g4807s3 : BadRow (bg4807 3) :=
  row_of_forall (discharge bank [5,41,1,1,4,4,4,5,4,1,6,41,1,1,5,41,1,1,4,4,4,5,4,1,6,41,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g4807s4 : BadRow (bg4807 4) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g4807s5 : BadRow (bg4807 5) :=
  row_of_forall (discharge bank [5,41,1,1,4,4,4,15,4,1,7,41,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g4807s6 : BadRow (bg4807 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g4807s7 : BadRow (bg4807 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4807 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 4 [0,0,1,2]) :=
  Split43.five_cover 8 (by decide) 7 6 5 true 3 2 4 [0,0,1,2] (.cons (g4807s0) (.cons (g4807s1) (.cons (g4807s2) (.cons (g4807s3) (.cons (g4807s4) (.cons (g4807s5) (.cons (g4807s6) (.cons (g4807s7) .nil))))))))

theorem g4808 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 4 [0,0,2,1]) :=
  row_of_forall (discharge bank [5,4,4,4,4,5,4,4,5,4,4,4,4,5,4,4,5,4,4,4,4,5,4,4,5,4,4,4,4,7,4,4,3,1,3,3,3,3,3,5,3,1,3,3,3,3,3,3,3,17,3,3,3,3,5,3,3,3,3,3,4,3,3,3,6,3,47,3,3,3] (hard := []) (by decide +kernel) .nil)

private abbrev bg4809 (i : Nat) := Split43.five 8 i 7 6 5 true 3 2 4 [0,0,2,1]

private theorem g4809s0 : BadRow (bg4809 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g4809s1 : BadRow (bg4809 1) :=
  row_of_forall (discharge bank [5,41,1,1,4,4,4,5,4,1,6,41,1,1,3,26,14,1,1,1,2,2,20,6,18,9,14,1,18,4,1,5,1,1,2,2,19,4,1,16,1,1,1,1,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g4809s2 : BadRow (bg4809 2) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g4809s3 : BadRow (bg4809 3) :=
  row_of_forall (discharge bank [5,41,1,1,4,4,4,5,4,1,6,41,1,1,5,41,1,1,4,4,4,5,4,1,6,41,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g4809s4 : BadRow (bg4809 4) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g4809s5 : BadRow (bg4809 5) :=
  row_of_forall (discharge bank [5,41,1,1,4,4,4,15,4,1,7,41,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g4809s6 : BadRow (bg4809 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g4809s7 : BadRow (bg4809 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4809 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 4 [0,0,2,1]) :=
  Split43.five_cover 8 (by decide) 7 6 5 true 3 2 4 [0,0,2,1] (.cons (g4809s0) (.cons (g4809s1) (.cons (g4809s2) (.cons (g4809s3) (.cons (g4809s4) (.cons (g4809s5) (.cons (g4809s6) (.cons (g4809s7) .nil))))))))

theorem g4810 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 4 [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4811 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 4 [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
