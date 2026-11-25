import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

private abbrev bg6944 (i : Nat) := Split43.five 8 i 7 6 5 false 5 4 5 [0,2,1,2,0]

private theorem g6944s0 : BadRow (bg6944 0) :=
  row_of_forall (discharge bank [4,39,4,4,39] (hard := []) (by decide +kernel) .nil)

private theorem g6944s1 : BadRow (bg6944 1) :=
  row_of_forall (discharge bank [2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g6944s2 : BadRow (bg6944 2) :=
  row_of_forall (discharge bank [2,2,4,4,4,4,4,4,17,47,4,4,11] (hard := []) (by decide +kernel) .nil)

private theorem g6944s3 : BadRow (bg6944 3) :=
  row_of_forall (discharge bank [2,2,14,39,14] (hard := []) (by decide +kernel) .nil)

private theorem g6944s4 : BadRow (bg6944 4) :=
  row_of_forall (discharge bank [2,2,2,2,4,4,4,4,4,4,4,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g6944s5 : BadRow (bg6944 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,39,14,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g6944s6 : BadRow (bg6944 6) :=
  row_of_forall (discharge bank [2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g6944s7 : BadRow (bg6944 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,15,15,15,7,7,7,9,9,55,17,9] (hard := []) (by decide +kernel) .nil)

theorem g6944 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,2,1,2,0]) :=
  Split43.five_cover 8 (by decide) 7 6 5 false 5 4 5 [0,2,1,2,0] (.cons (g6944s0) (.cons (g6944s1) (.cons (g6944s2) (.cons (g6944s3) (.cons (g6944s4) (.cons (g6944s5) (.cons (g6944s6) (.cons (g6944s7) .nil))))))))

theorem g6945 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6946 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,2,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,14,14,4,39,4,4,4,4,4,4,4,25,48,4,4,4,39,4,47,47,4,4,4,2,2,2,2,2,2,2,2,2,4,4,4,4,15,15,15,15,15,7,7,7,7,9,17] (hard := []) (by decide +kernel) .nil)

theorem g6947 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6948 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,2,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,14,39,39,4,4,4,47,47,4,4,4,4,4,39,47,47,4,4,4,4,4,4,4,2,2,2,2,2,2,2,4,4,4,4,4,15,15,15,7,7,7,9,9,9,11,4,6] (hard := []) (by decide +kernel) .nil)

theorem g6949 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6950 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,2,3,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4,4,4,4,53,4,4,4,1,4,4,4,4,2,4,4,14,14,4,4,4,4,4,4,4,4,4,7,7,7,9,9,9,11,13,4,6] (hard := []) (by decide +kernel) .nil)

theorem g6951 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6952 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,3,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,1,1,4,4,4,4,4,4,53,4,4,4,1,4,4,4,4,4,4,4,14,14,4,4,4,4,4,4,4,4,4,14,14,4,4,4,4,4,4,4,4,4,4,4,7,7,7,7,7,7,14,7,17,17,17,17] (hard := []) (by decide +kernel) .nil)

theorem g6953 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6954 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,3,0,1,1]) :=
  row_of_forall (discharge bank [2,2,4,2,4,4,2,2,4,4,4,2,4,4,2,2,2,2,2,4,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,7,7,7,7] (hard := []) (by decide +kernel) .nil)

theorem g6955 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6956 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,3,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,1,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,2,2,4,4,4,4,4,14,14,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,7,7,7,7,14,14,7,17,17,156,17,14,11,4,6,4,6] (hard := []) (by decide +kernel) .nil)

theorem g6957 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6958 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,3,1,0,1]) :=
  row_of_forall (discharge bank [2,2,4,4,4,4,4,2,2,4,4,4,4,4,4,4,2,2,2,2,2,4,4,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,7,7,7,7,7] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
