import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7472 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [1,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7473 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [1,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7474 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7475 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7476 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [1,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7477 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [1,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7478 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7479 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7480 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7481 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7482 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [1,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7483 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [1,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7484 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7485 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7486 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7487 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
