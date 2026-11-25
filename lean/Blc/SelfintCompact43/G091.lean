import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1456 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1457 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1458 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1459 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1460 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1461 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1462 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1463 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1464 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1465 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1466 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1467 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1468 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1469 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1470 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1471 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
