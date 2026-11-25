import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1680 : BadRow (SharedShell.row 5 6 false 6 2 4 [1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1681 : BadRow (SharedShell.row 5 6 true 6 2 4 [1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1682 : BadRow (SharedShell.row 5 6 false 6 2 4 [1,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1683 : BadRow (SharedShell.row 5 6 true 6 2 4 [1,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1684 : BadRow (SharedShell.row 5 6 false 6 2 4 [1,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1685 : BadRow (SharedShell.row 5 6 true 6 2 4 [1,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1686 : BadRow (SharedShell.row 5 6 false 6 2 4 [1,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1687 : BadRow (SharedShell.row 5 6 true 6 2 4 [1,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1688 : BadRow (SharedShell.row 5 6 false 6 2 4 [1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1689 : BadRow (SharedShell.row 5 6 true 6 2 4 [1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1690 : BadRow (SharedShell.row 5 6 false 6 2 4 [1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1691 : BadRow (SharedShell.row 5 6 true 6 2 4 [1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1692 : BadRow (SharedShell.row 5 6 false 6 2 4 [1,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1693 : BadRow (SharedShell.row 5 6 true 6 2 4 [1,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1694 : BadRow (SharedShell.row 5 6 false 6 2 4 [1,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1695 : BadRow (SharedShell.row 5 6 true 6 2 4 [1,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1696 : BadRow (SharedShell.row 5 6 false 6 2 4 [1,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1697 : BadRow (SharedShell.row 5 6 true 6 2 4 [1,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1698 : BadRow (SharedShell.row 5 6 false 6 2 4 [1,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1699 : BadRow (SharedShell.row 5 6 true 6 2 4 [1,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
