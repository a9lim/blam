import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4512 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,4,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4513 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,4,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4514 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,4,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4515 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,4,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4516 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,4,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4517 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,4,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4518 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,4,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4519 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,4,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4520 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,4,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4521 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,4,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4522 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,4,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4523 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,4,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4524 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,5,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4525 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,5,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4526 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,5,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4527 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,5,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
