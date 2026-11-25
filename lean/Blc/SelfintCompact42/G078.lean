import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1560 : BadRow (SharedShell.row 5 6 false 6 2 3 [0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1561 : BadRow (SharedShell.row 5 6 true 6 2 3 [0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1562 : BadRow (SharedShell.row 5 6 false 6 2 3 [0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1563 : BadRow (SharedShell.row 5 6 true 6 2 3 [0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1564 : BadRow (SharedShell.row 5 6 false 6 2 3 [0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1565 : BadRow (SharedShell.row 5 6 true 6 2 3 [0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1566 : BadRow (SharedShell.row 5 6 false 6 2 3 [1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1567 : BadRow (SharedShell.row 5 6 true 6 2 3 [1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1568 : BadRow (SharedShell.row 5 6 false 6 2 3 [1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1569 : BadRow (SharedShell.row 5 6 true 6 2 3 [1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1570 : BadRow (SharedShell.row 5 6 false 6 2 3 [1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1571 : BadRow (SharedShell.row 5 6 true 6 2 3 [1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1572 : BadRow (SharedShell.row 5 6 false 6 2 3 [1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1573 : BadRow (SharedShell.row 5 6 true 6 2 3 [1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1574 : BadRow (SharedShell.row 5 6 false 6 2 3 [1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1575 : BadRow (SharedShell.row 5 6 true 6 2 3 [1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1576 : BadRow (SharedShell.row 5 6 false 6 2 3 [1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1577 : BadRow (SharedShell.row 5 6 true 6 2 3 [1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1578 : BadRow (SharedShell.row 5 6 false 6 2 3 [2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1579 : BadRow (SharedShell.row 5 6 true 6 2 3 [2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
