import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4128 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,0,2,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4129 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,0,2,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4130 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,0,3,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4131 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,0,3,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4132 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,0,4,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4133 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,0,4,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4134 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,0,5,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4135 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,0,5,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4136 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,0,6,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4137 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,0,6,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4138 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,0,7,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4139 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,0,7,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4140 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,1,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4141 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,1,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4142 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,1,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4143 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,1,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
