import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6080 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6081 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6082 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6083 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6084 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6085 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6086 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6087 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6088 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6089 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6090 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6091 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6092 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6093 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6094 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6095 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
