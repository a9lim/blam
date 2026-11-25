import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6128 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6129 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6130 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6131 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6132 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6133 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6134 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6135 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6136 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6137 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6138 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6139 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6140 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6141 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6142 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6143 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
