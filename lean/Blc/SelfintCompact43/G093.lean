import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1488 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [2,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1489 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [2,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1490 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [2,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1491 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [2,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1492 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [2,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1493 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [2,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1494 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [2,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1495 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [2,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1496 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [2,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1497 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [2,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1498 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [2,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1499 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [2,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1500 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [2,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1501 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [2,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1502 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [2,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1503 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [2,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
