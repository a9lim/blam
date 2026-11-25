import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6096 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6097 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6098 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6099 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6100 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6101 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6102 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6103 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6104 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6105 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6106 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6107 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6108 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6109 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6110 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6111 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
