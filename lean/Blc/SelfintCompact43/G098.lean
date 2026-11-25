import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1568 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 3 [1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1569 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 3 [1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1570 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 3 [1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1571 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 3 [1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1572 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 3 [1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1573 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 3 [1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1574 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 3 [1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1575 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 3 [1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1576 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 3 [1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1577 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 3 [1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1578 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 3 [2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1579 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 3 [2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1580 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 3 [2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1581 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 3 [2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1582 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 3 [2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1583 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 3 [2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
