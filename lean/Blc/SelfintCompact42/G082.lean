import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1640 : BadRow (SharedShell.row 5 6 false 6 2 4 [0,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1641 : BadRow (SharedShell.row 5 6 true 6 2 4 [0,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1642 : BadRow (SharedShell.row 5 6 false 6 2 4 [0,2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1643 : BadRow (SharedShell.row 5 6 true 6 2 4 [0,2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1644 : BadRow (SharedShell.row 5 6 false 6 2 4 [0,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1645 : BadRow (SharedShell.row 5 6 true 6 2 4 [0,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1646 : BadRow (SharedShell.row 5 6 false 6 2 4 [0,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1647 : BadRow (SharedShell.row 5 6 true 6 2 4 [0,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1648 : BadRow (SharedShell.row 5 6 false 6 2 4 [0,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1649 : BadRow (SharedShell.row 5 6 true 6 2 4 [0,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1650 : BadRow (SharedShell.row 5 6 false 6 2 4 [0,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1651 : BadRow (SharedShell.row 5 6 true 6 2 4 [0,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1652 : BadRow (SharedShell.row 5 6 false 6 2 4 [0,4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1653 : BadRow (SharedShell.row 5 6 true 6 2 4 [0,4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1654 : BadRow (SharedShell.row 5 6 false 6 2 4 [0,4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1655 : BadRow (SharedShell.row 5 6 true 6 2 4 [0,4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1656 : BadRow (SharedShell.row 5 6 false 6 2 4 [0,4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1657 : BadRow (SharedShell.row 5 6 true 6 2 4 [0,4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1658 : BadRow (SharedShell.row 5 6 false 6 2 4 [0,5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1659 : BadRow (SharedShell.row 5 6 true 6 2 4 [0,5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
