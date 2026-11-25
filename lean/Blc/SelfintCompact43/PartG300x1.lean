import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

private abbrev bg4812 (i : Nat) := Split43.five 8 i 7 6 5 false 3 2 4 [0,1,0,2]

private theorem g4812s0 : BadRow (bg4812 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g4812s1 : BadRow (bg4812 1) :=
  row_of_forall (discharge bank [5,4,4,4,4,5,4,4,5,4,4,4,4,5,4,4,3,14,3,3,3,3,3,5,3,18,3,3,3,3,3,3,3,17,3,3,3,3,5,3,3,3,3,3,4,3,3,3,6,3,47,3,3,3,3,14,3,3,3,3,3,5,3,14,3,3,3,3,3,3,3,17,3,3,3,3,5,3,3,3,3,3,4,3,3,3,6,3,47,3,3,3] (hard := []) (by decide +kernel) .nil)

private theorem g4812s2 : BadRow (bg4812 2) :=
  row_of_forall (discharge bank [5,4,4,4,4,5,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g4812s3 : BadRow (bg4812 3) :=
  row_of_forall (discharge bank [5,4,4,4,4,5,4,4,5,4,4,4,4,5,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g4812s4 : BadRow (bg4812 4) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g4812s5 : BadRow (bg4812 5) :=
  row_of_forall (discharge bank [5,4,4,4,4,7,4,4,5,4,4,4,4,7,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g4812s6 : BadRow (bg4812 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g4812s7 : BadRow (bg4812 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4812 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 4 [0,1,0,2]) :=
  Split43.five_cover 8 (by decide) 7 6 5 false 3 2 4 [0,1,0,2] (.cons (g4812s0) (.cons (g4812s1) (.cons (g4812s2) (.cons (g4812s3) (.cons (g4812s4) (.cons (g4812s5) (.cons (g4812s6) (.cons (g4812s7) .nil))))))))

private abbrev bg4813 (i : Nat) := Split43.five 8 i 7 6 5 true 3 2 4 [0,1,0,2]

private theorem g4813s0 : BadRow (bg4813 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g4813s1 : BadRow (bg4813 1) :=
  row_of_forall (discharge bank [5,41,1,1,4,4,4,5,4,1,6,41,1,1,5,41,1,1,4,4,4,5,4,1,6,41,1,1,3,26,14,1,1,1,2,2,22,6,19,11,14,1,27,4,18,5,1,1,2,2,18,4,28,16,1,1,1,1,2,2,3,26,14,1,1,1,2,2,22,6,19,10,1,1,1,4,21,5,1,1,2,2,18,4,23,16,1,1,1,1,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g4813s2 : BadRow (bg4813 2) :=
  row_of_forall (discharge bank [5,41,1,1,4,4,4,5,4,1,6,41,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g4813s3 : BadRow (bg4813 3) :=
  row_of_forall (discharge bank [5,41,1,1,4,4,4,5,4,1,6,41,1,1,5,41,1,1,4,4,4,5,4,1,6,41,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g4813s4 : BadRow (bg4813 4) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g4813s5 : BadRow (bg4813 5) :=
  row_of_forall (discharge bank [5,41,1,1,4,4,4,15,4,1,7,41,1,1,5,41,1,1,4,4,4,15,4,1,7,41,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g4813s6 : BadRow (bg4813 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g4813s7 : BadRow (bg4813 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4813 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 4 [0,1,0,2]) :=
  Split43.five_cover 8 (by decide) 7 6 5 true 3 2 4 [0,1,0,2] (.cons (g4813s0) (.cons (g4813s1) (.cons (g4813s2) (.cons (g4813s3) (.cons (g4813s4) (.cons (g4813s5) (.cons (g4813s6) (.cons (g4813s7) .nil))))))))

theorem g4814 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 4 [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4815 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 4 [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
