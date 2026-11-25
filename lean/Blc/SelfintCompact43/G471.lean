import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7536 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 4 [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7537 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 4 [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7538 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 4 [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7539 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 4 [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7540 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 4 [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7541 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 4 [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7542 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 4 [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7543 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 4 [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7544 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 4 [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7545 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 4 [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7546 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 4 [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7547 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 4 [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7548 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 4 [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7549 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 4 [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7550 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 4 [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7551 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 4 [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
