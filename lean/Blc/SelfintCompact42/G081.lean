import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1620 : BadRow (SharedShell.row 5 6 false 6 2 4 [0,0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1621 : BadRow (SharedShell.row 5 6 true 6 2 4 [0,0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1622 : BadRow (SharedShell.row 5 6 false 6 2 4 [0,1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1623 : BadRow (SharedShell.row 5 6 true 6 2 4 [0,1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1624 : BadRow (SharedShell.row 5 6 false 6 2 4 [0,1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1625 : BadRow (SharedShell.row 5 6 true 6 2 4 [0,1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1626 : BadRow (SharedShell.row 5 6 false 6 2 4 [0,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1627 : BadRow (SharedShell.row 5 6 true 6 2 4 [0,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1628 : BadRow (SharedShell.row 5 6 false 6 2 4 [0,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1629 : BadRow (SharedShell.row 5 6 true 6 2 4 [0,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1630 : BadRow (SharedShell.row 5 6 false 6 2 4 [0,1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1631 : BadRow (SharedShell.row 5 6 true 6 2 4 [0,1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1632 : BadRow (SharedShell.row 5 6 false 6 2 4 [0,1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1633 : BadRow (SharedShell.row 5 6 true 6 2 4 [0,1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1634 : BadRow (SharedShell.row 5 6 false 6 2 4 [0,2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1635 : BadRow (SharedShell.row 5 6 true 6 2 4 [0,2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1636 : BadRow (SharedShell.row 5 6 false 6 2 4 [0,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1637 : BadRow (SharedShell.row 5 6 true 6 2 4 [0,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1638 : BadRow (SharedShell.row 5 6 false 6 2 4 [0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1639 : BadRow (SharedShell.row 5 6 true 6 2 4 [0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
