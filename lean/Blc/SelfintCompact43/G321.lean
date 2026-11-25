import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5136 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [0,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5137 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [0,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5138 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [0,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5139 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [0,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5140 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [0,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5141 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [0,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5142 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5143 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5144 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [1,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5145 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [1,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5146 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5147 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5148 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [1,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5149 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [1,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5150 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5151 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
