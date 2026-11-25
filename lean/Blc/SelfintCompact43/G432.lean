import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

private abbrev bg6912 (i : Nat) := Split43.five 8 i 7 6 5 false 5 4 5 [0,1,1,0,3]

private theorem g6912s0 : BadRow (bg6912 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g6912s1 : BadRow (bg6912 1) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g6912s2 : BadRow (bg6912 2) :=
  row_of_forall (discharge bank [2,2,4,4,4,4,4,4,4,2,2,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g6912s3 : BadRow (bg6912 3) :=
  row_of_forall (discharge bank [2,2,4] (hard := []) (by decide +kernel) .nil)

private theorem g6912s4 : BadRow (bg6912 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,2,2,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g6912s5 : BadRow (bg6912 5) :=
  row_of_forall (discharge bank [2,2,2,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g6912s6 : BadRow (bg6912 6) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem g6912s7 : BadRow (bg6912 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,7,7,7,7,7,7,7,7,7,14,14,29,14,9,11,14,9,9,14,40] (hard := []) (by decide +kernel) .nil)

theorem g6912 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,1,1,0,3]) :=
  Split43.five_cover 8 (by decide) 7 6 5 false 5 4 5 [0,1,1,0,3] (.cons (g6912s0) (.cons (g6912s1) (.cons (g6912s2) (.cons (g6912s3) (.cons (g6912s4) (.cons (g6912s5) (.cons (g6912s6) (.cons (g6912s7) .nil))))))))

theorem g6913 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6914 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,1,1,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,1,4,4,4,4,1,4,4,4,4,4,14,4,4,4,4,4,4,4,7,7,7,7,7,7,14,44,40] (hard := []) (by decide +kernel) .nil)

theorem g6915 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6916 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,1,1,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,14,4,4,4,4,4,4,4,7,7,7,7,7,31,40] (hard := []) (by decide +kernel) .nil)

theorem g6917 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6918 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,1,1,3,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4,2,4,2,4,4,4,4,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,7,7,7,7,7,13,9,9,11,11,9,10,4,6] (hard := []) (by decide +kernel) .nil)

theorem g6919 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6920 (hard : BadRow [Floor43.e2422398021230]) : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,1,2,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,39,4,4,4,0,4,4,4,4,4,4,4,4,4,39,1,4,4,4,39,4,1,1,4,4,4,2,2,2,2,2,4,4,4,4,4,4,4,4,15,15,15,15,15,7,7,7,7,7,7,7,55,36,9,9,11,14,24] (hard := [Floor43.e2422398021230]) (by decide +kernel) hard)

theorem g6921 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6922 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,1,2,1,1]) :=
  row_of_forall (discharge bank [4,53,4,4,4,4,4,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,7,7,7,7,7,14,24,9,14,24] (hard := []) (by decide +kernel) .nil)

theorem g6923 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6924 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,1,2,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4,4,25,1,4,4,39,4,4,39,4,4,4,4,17,1,1,1,4,4,4,4,4,4,2,2,2,4,15,15,15,7,7,9] (hard := []) (by decide +kernel) .nil)

theorem g6925 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6926 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,1,3,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,4,2,2,4,4,4,2,2,2,4,4,2,4,4,4,2,2,2,2,2,2,2,2,2,4,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,7,7,7,7,7,7,7,7,14,11,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g6927 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
