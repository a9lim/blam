import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1552 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 3 [0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1553 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 3 [0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1554 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 3 [0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1555 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 3 [0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1556 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 3 [0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1557 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 3 [0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1558 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 3 [0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1559 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 3 [0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1560 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 3 [0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1561 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 3 [0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1562 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 3 [0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1563 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 3 [0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1564 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 3 [0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1565 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 3 [0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1566 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 3 [1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1567 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 3 [1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
