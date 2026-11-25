import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1760 : BadRow (SharedShell.row 5 6 false 6 2 4 [4,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1761 : BadRow (SharedShell.row 5 6 true 6 2 4 [4,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1762 : BadRow (SharedShell.row 5 6 false 6 2 4 [4,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1763 : BadRow (SharedShell.row 5 6 true 6 2 4 [4,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1764 : BadRow (SharedShell.row 5 6 false 6 2 4 [4,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1765 : BadRow (SharedShell.row 5 6 true 6 2 4 [4,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1766 : BadRow (SharedShell.row 5 6 false 6 2 4 [4,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1767 : BadRow (SharedShell.row 5 6 true 6 2 4 [4,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1768 : BadRow (SharedShell.row 5 6 false 6 2 4 [5,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1769 : BadRow (SharedShell.row 5 6 true 6 2 4 [5,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1770 : BadRow (SharedShell.row 5 6 false 6 2 4 [5,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1771 : BadRow (SharedShell.row 5 6 true 6 2 4 [5,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1772 : BadRow (SharedShell.row 5 6 false 6 2 4 [5,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1773 : BadRow (SharedShell.row 5 6 true 6 2 4 [5,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1774 : BadRow (SharedShell.row 5 6 false 6 2 4 [6,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1775 : BadRow (SharedShell.row 5 6 true 6 2 4 [6,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1776 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,0,0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1777 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,0,0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1778 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,0,0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1779 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,0,0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
