import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1472 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1473 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1474 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1475 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1476 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1477 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1478 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1479 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1480 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1481 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1482 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [2,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1483 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [2,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1484 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [2,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1485 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [2,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1486 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [2,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1487 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [2,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
