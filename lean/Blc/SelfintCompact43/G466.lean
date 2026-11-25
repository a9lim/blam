import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7456 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [0,1,0,2,0]) :=
  row_of_forall (discharge bank [3,3,3,3,3,3,3,3,2,2] (hard := []) (by decide +kernel) .nil)

theorem g7457 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [0,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7458 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7459 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7460 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7461 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7462 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [0,1,2,0,0]) :=
  row_of_forall (discharge bank [3,3,3,3,3,2] (hard := []) (by decide +kernel) .nil)

theorem g7463 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [0,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7464 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [0,2,0,0,1]) :=
  row_of_forall (discharge bank [3,3,3,3,3] (hard := []) (by decide +kernel) .nil)

theorem g7465 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [0,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7466 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [0,2,0,1,0]) :=
  row_of_forall (discharge bank [3,3,3,3,3,3,3,3,2,2] (hard := []) (by decide +kernel) .nil)

theorem g7467 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [0,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7468 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [0,2,1,0,0]) :=
  row_of_forall (discharge bank [3,3,3,3,3,2] (hard := []) (by decide +kernel) .nil)

theorem g7469 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [0,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7470 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7471 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
