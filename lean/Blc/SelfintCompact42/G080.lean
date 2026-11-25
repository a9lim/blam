import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1600 : BadRow (SharedShell.row 5 6 false 6 2 3 [4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1601 : BadRow (SharedShell.row 5 6 true 6 2 3 [4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1602 : BadRow (SharedShell.row 5 6 false 6 2 3 [5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1603 : BadRow (SharedShell.row 5 6 true 6 2 3 [5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1604 : BadRow (SharedShell.row 5 6 false 6 2 3 [5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1605 : BadRow (SharedShell.row 5 6 true 6 2 3 [5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1606 : BadRow (SharedShell.row 5 6 false 6 2 3 [6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1607 : BadRow (SharedShell.row 5 6 true 6 2 3 [6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1608 : BadRow (SharedShell.row 5 6 false 6 2 4 [0,0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1609 : BadRow (SharedShell.row 5 6 true 6 2 4 [0,0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1610 : BadRow (SharedShell.row 5 6 false 6 2 4 [0,0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1611 : BadRow (SharedShell.row 5 6 true 6 2 4 [0,0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1612 : BadRow (SharedShell.row 5 6 false 6 2 4 [0,0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1613 : BadRow (SharedShell.row 5 6 true 6 2 4 [0,0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1614 : BadRow (SharedShell.row 5 6 false 6 2 4 [0,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1615 : BadRow (SharedShell.row 5 6 true 6 2 4 [0,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1616 : BadRow (SharedShell.row 5 6 false 6 2 4 [0,0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1617 : BadRow (SharedShell.row 5 6 true 6 2 4 [0,0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1618 : BadRow (SharedShell.row 5 6 false 6 2 4 [0,0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1619 : BadRow (SharedShell.row 5 6 true 6 2 4 [0,0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
