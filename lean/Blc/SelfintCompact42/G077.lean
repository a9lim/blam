import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1540 : BadRow (SharedShell.row 5 6 false 5 3 5 [3,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1541 : BadRow (SharedShell.row 5 6 true 5 3 5 [3,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1542 : BadRow (SharedShell.row 5 6 false 5 3 5 [4,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1543 : BadRow (SharedShell.row 5 6 true 5 3 5 [4,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1544 : BadRow (SharedShell.row 5 6 false 5 3 5 [4,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1545 : BadRow (SharedShell.row 5 6 true 5 3 5 [4,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1546 : BadRow (SharedShell.row 5 6 false 5 3 5 [4,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1547 : BadRow (SharedShell.row 5 6 true 5 3 5 [4,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1548 : BadRow (SharedShell.row 5 6 false 5 3 5 [4,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1549 : BadRow (SharedShell.row 5 6 true 5 3 5 [4,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1550 : BadRow (SharedShell.row 5 6 false 5 3 5 [5,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1551 : BadRow (SharedShell.row 5 6 true 5 3 5 [5,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1552 : BadRow (SharedShell.row 5 6 false 6 2 3 [0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1553 : BadRow (SharedShell.row 5 6 true 6 2 3 [0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1554 : BadRow (SharedShell.row 5 6 false 6 2 3 [0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1555 : BadRow (SharedShell.row 5 6 true 6 2 3 [0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1556 : BadRow (SharedShell.row 5 6 false 6 2 3 [0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1557 : BadRow (SharedShell.row 5 6 true 6 2 3 [0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1558 : BadRow (SharedShell.row 5 6 false 6 2 3 [0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1559 : BadRow (SharedShell.row 5 6 true 6 2 3 [0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
