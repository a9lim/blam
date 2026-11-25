import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6112 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6113 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6114 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6115 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6116 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6117 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6118 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6119 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6120 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6121 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6122 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6123 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6124 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6125 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6126 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6127 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
