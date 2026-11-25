import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1760 : BadRow (SharedShell.row 6 3 false 3 3 5 [0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1761 : BadRow (SharedShell.row 6 3 true 3 3 5 [0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1762 : BadRow (SharedShell.row 6 3 false 3 3 5 [0,1,0,0,2]) :=
  row_of_forall (discharge bank [18,18,18,18,18] (hard := []) (by decide +kernel) .nil)

theorem g1763 : BadRow (SharedShell.row 6 3 true 3 3 5 [0,1,0,0,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,1,12,12,12,1,12,12,12,12,12,12,12,12,12,12,6,6,6,6,6,1,10,29,11,11] (hard := []) (by decide +kernel) .nil)

theorem g1764 : BadRow (SharedShell.row 6 3 false 3 3 5 [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1765 : BadRow (SharedShell.row 6 3 true 3 3 5 [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1766 : BadRow (SharedShell.row 6 3 false 3 3 5 [0,1,0,2,0]) :=
  row_of_forall (discharge bank [18,18,18,18,18,18,18,18,31,31] (hard := []) (by decide +kernel) .nil)

theorem g1767 : BadRow (SharedShell.row 6 3 true 3 3 5 [0,1,0,2,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,6,6,6,6,6,9,1,29,28,11,11,24,25,12,13,12,13] (hard := []) (by decide +kernel) .nil)

theorem g1768 : BadRow (SharedShell.row 6 3 false 3 3 5 [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1769 : BadRow (SharedShell.row 6 3 true 3 3 5 [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1770 : BadRow (SharedShell.row 6 3 false 3 3 5 [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1771 : BadRow (SharedShell.row 6 3 true 3 3 5 [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1772 : BadRow (SharedShell.row 6 3 false 3 3 5 [0,1,2,0,0]) :=
  row_of_forall (discharge bank [18,18,18,18,18,31] (hard := []) (by decide +kernel) .nil)

theorem g1773 : BadRow (SharedShell.row 6 3 true 3 3 5 [0,1,2,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,21,12,12,12,1,12,12,12,12,12,12,12,12,12,12,12,6,6,6,7,7,7,14,26,12,13] (hard := []) (by decide +kernel) .nil)

theorem g1774 : BadRow (SharedShell.row 6 3 false 3 3 5 [0,2,0,0,1]) :=
  row_of_forall (discharge bank [18,18,18,18,18] (hard := []) (by decide +kernel) .nil)

theorem g1775 : BadRow (SharedShell.row 6 3 true 3 3 5 [0,2,0,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,21,12,12,12,1,12,12,12,12,12,12,12,12,12,12,6,6,6,6,6,11,17,17,17,17] (hard := []) (by decide +kernel) .nil)

theorem g1776 : BadRow (SharedShell.row 6 3 false 3 3 5 [0,2,0,1,0]) :=
  row_of_forall (discharge bank [18,18,18,18,18,18,18,18,31,31] (hard := []) (by decide +kernel) .nil)

theorem g1777 : BadRow (SharedShell.row 6 3 true 3 3 5 [0,2,0,1,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,6,6,6,6,6,24,11,17,17,24,17,11,7,12,13,12,13] (hard := []) (by decide +kernel) .nil)

theorem g1778 : BadRow (SharedShell.row 6 3 false 3 3 5 [0,2,1,0,0]) :=
  row_of_forall (discharge bank [18,18,18,18,18,31] (hard := []) (by decide +kernel) .nil)

theorem g1779 : BadRow (SharedShell.row 6 3 true 3 3 5 [0,2,1,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,1,12,12,12,1,12,12,12,12,12,12,12,12,12,12,12,6,6,6,10,24,24,24,24,12,13] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
