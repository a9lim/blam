import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7072 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [2,1,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,7,7,7,4,15,15,1,1,25,25,25,1,4,25,1,4,4,4,25,1,4,6,6,6,7,7,22,4,30,30,6,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7073 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [2,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7074 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [2,2,0,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,7,7,7,7,7,15,7,7,7,7,7,36,4,4,4,17,36,4,18,18,17,17,17,36,4,9,36,4,4,4,9,36,4] (hard := []) (by decide +kernel) .nil)

theorem g7075 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [2,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7076 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [2,2,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,7,7,7,7,7,4,4,7,7,7,7,7,7,7,36,36,4,4,17,36,4,4,4,17,36,4,17,17,36,9,36,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7077 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [2,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7078 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [2,2,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,7,7,7,4,15,15,7,7,7,7,7,7,7,7,36,36,36,4,4,4,22,4,17,17,36,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7079 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [2,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7080 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [2,3,0,0,0]) :=
  row_of_forall (discharge bank [1,4,4,4,20,4,4,4,4,53,4,4,4,1,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7081 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [2,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7082 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [3,0,0,0,2]) :=
  row_of_forall (discharge bank [1,1,4,4,4,7,4,1,4,4,4,15,15,4,4,4,4,4,4,36,4,4,4,1,4,4,4,22,4,4,4,4,36,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7083 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [3,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7084 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [3,0,0,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,11,36,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7085 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [3,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7086 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [3,0,0,2,0]) :=
  row_of_forall (discharge bank [1,1,4,4,4,4,4,7,4,4,4,4,4,15,15,4,4,4,4,4,4,4,4,4,36,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7087 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [3,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
