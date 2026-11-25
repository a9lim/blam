import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6928 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,1,3,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,4,2,2,4,4,4,4,4,4,4,4,4,2,2,2,2,2,2,2,4,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,2,2,2,2,4,4,4,4,4,4,4,4,4,4,7,7,7,7,7,7,14,9,9,11,9,10,4,6] (hard := []) (by decide +kernel) .nil)

theorem g6929 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6930 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,1,4,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g6931 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6932 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,2,0,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,1,1,4,4,4,1,1,1,4,4,4,1,4,4,4,4,4,4,4,4,4,4,14,14,14,14,4,4,4,4,4,4,4,4,4,14,47,4,4,1,1,4,4,4,4,4,4,4,4,4,4,7,7,7,7,7,1,9,9,14,14,1,1,17,17] (hard := []) (by decide +kernel) .nil)

theorem g6933 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6934 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,2,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,14,4,4,4,4,4,39,14,4,4,4,4,4,4,1,1,4,39,4,4,4,4,39,14,4,2,2,2,2,2,2,2,2,2,4,4,4,4,4,15,15,15,15,15,7,7,7,7,7,7,7,7,17,17] (hard := []) (by decide +kernel) .nil)

theorem g6935 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg6936 (i : Nat) := Split43.five 8 i 7 6 5 false 5 4 5 [0,2,0,2,1]

private theorem g6936s0 : BadRow (bg6936 0) :=
  row_of_forall (discharge bank [2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g6936s1 : BadRow (bg6936 1) :=
  row_of_forall (discharge bank [17,13,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g6936s2 : BadRow (bg6936 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,39,39,4] (hard := []) (by decide +kernel) .nil)

private theorem g6936s3 : BadRow (bg6936 3) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem g6936s4 : BadRow (bg6936 4) :=
  row_of_forall (discharge bank [2,2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g6936s5 : BadRow (bg6936 5) :=
  row_of_forall (discharge bank [2,2,14,14,4,4,4,4,39,4,4,4,4,4,4,39,47,4] (hard := []) (by decide +kernel) .nil)

private theorem g6936s6 : BadRow (bg6936 6) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem g6936s7 : BadRow (bg6936 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4,4,4,4,15,15,15,15,15,7,7,7,7,7,7,1,17,17,17,17] (hard := []) (by decide +kernel) .nil)

theorem g6936 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,2,0,2,1]) :=
  Split43.five_cover 8 (by decide) 7 6 5 false 5 4 5 [0,2,0,2,1] (.cons (g6936s0) (.cons (g6936s1) (.cons (g6936s2) (.cons (g6936s3) (.cons (g6936s4) (.cons (g6936s5) (.cons (g6936s6) (.cons (g6936s7) .nil))))))))

theorem g6937 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6938 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,2,0,3,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,18,9,4,4,4,4,4,4,4,4,2,2,4,4,4,4,4,14,129,14,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,7,7,7,38,1,9,9,14,9,1,17,47,13,4,6,4,6] (hard := []) (by decide +kernel) .nil)

theorem g6939 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
