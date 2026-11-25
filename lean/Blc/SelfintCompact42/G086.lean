import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1720 : BadRow (SharedShell.row 5 6 false 6 2 4 [2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1721 : BadRow (SharedShell.row 5 6 true 6 2 4 [2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1722 : BadRow (SharedShell.row 5 6 false 6 2 4 [2,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1723 : BadRow (SharedShell.row 5 6 true 6 2 4 [2,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1724 : BadRow (SharedShell.row 5 6 false 6 2 4 [2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1725 : BadRow (SharedShell.row 5 6 true 6 2 4 [2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1726 : BadRow (SharedShell.row 5 6 false 6 2 4 [2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1727 : BadRow (SharedShell.row 5 6 true 6 2 4 [2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1728 : BadRow (SharedShell.row 5 6 false 6 2 4 [2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1729 : BadRow (SharedShell.row 5 6 true 6 2 4 [2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1730 : BadRow (SharedShell.row 5 6 false 6 2 4 [2,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1731 : BadRow (SharedShell.row 5 6 true 6 2 4 [2,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1732 : BadRow (SharedShell.row 5 6 false 6 2 4 [2,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1733 : BadRow (SharedShell.row 5 6 true 6 2 4 [2,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1734 : BadRow (SharedShell.row 5 6 false 6 2 4 [2,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1735 : BadRow (SharedShell.row 5 6 true 6 2 4 [2,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1736 : BadRow (SharedShell.row 5 6 false 6 2 4 [3,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1737 : BadRow (SharedShell.row 5 6 true 6 2 4 [3,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1738 : BadRow (SharedShell.row 5 6 false 6 2 4 [3,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1739 : BadRow (SharedShell.row 5 6 true 6 2 4 [3,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
