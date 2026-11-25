import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1580 : BadRow (SharedShell.row 5 6 false 6 2 3 [2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1581 : BadRow (SharedShell.row 5 6 true 6 2 3 [2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1582 : BadRow (SharedShell.row 5 6 false 6 2 3 [2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1583 : BadRow (SharedShell.row 5 6 true 6 2 3 [2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1584 : BadRow (SharedShell.row 5 6 false 6 2 3 [2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1585 : BadRow (SharedShell.row 5 6 true 6 2 3 [2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1586 : BadRow (SharedShell.row 5 6 false 6 2 3 [2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1587 : BadRow (SharedShell.row 5 6 true 6 2 3 [2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1588 : BadRow (SharedShell.row 5 6 false 6 2 3 [3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1589 : BadRow (SharedShell.row 5 6 true 6 2 3 [3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1590 : BadRow (SharedShell.row 5 6 false 6 2 3 [3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1591 : BadRow (SharedShell.row 5 6 true 6 2 3 [3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1592 : BadRow (SharedShell.row 5 6 false 6 2 3 [3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1593 : BadRow (SharedShell.row 5 6 true 6 2 3 [3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1594 : BadRow (SharedShell.row 5 6 false 6 2 3 [3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1595 : BadRow (SharedShell.row 5 6 true 6 2 3 [3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1596 : BadRow (SharedShell.row 5 6 false 6 2 3 [4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1597 : BadRow (SharedShell.row 5 6 true 6 2 3 [4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1598 : BadRow (SharedShell.row 5 6 false 6 2 3 [4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1599 : BadRow (SharedShell.row 5 6 true 6 2 3 [4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
