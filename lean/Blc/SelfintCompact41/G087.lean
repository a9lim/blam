import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1740 : BadRow (SharedShell.row 6 3 false 3 3 4 [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1741 : BadRow (SharedShell.row 6 3 true 3 3 4 [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1742 : BadRow (SharedShell.row 6 3 false 3 3 5 [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1743 : BadRow (SharedShell.row 6 3 true 3 3 5 [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1744 : BadRow (SharedShell.row 6 3 false 3 3 5 [0,0,0,1,2]) :=
  row_of_forall (discharge bank [18,31,31,18] (hard := []) (by decide +kernel) .nil)

theorem g1745 : BadRow (SharedShell.row 6 3 true 3 3 5 [0,0,0,1,2]) :=
  row_of_forall (discharge bank [12,1,12,12,12,1,12,12,12,12,24,12,6,6,6,6,10,11,13,6,4,4,10,13] (hard := []) (by decide +kernel) .nil)

theorem g1746 : BadRow (SharedShell.row 6 3 false 3 3 5 [0,0,0,2,1]) :=
  row_of_forall (discharge bank [18,31,31,18] (hard := []) (by decide +kernel) .nil)

theorem g1747 : BadRow (SharedShell.row 6 3 true 3 3 5 [0,0,0,2,1]) :=
  row_of_forall (discharge bank [12,1,12,12,1,12,1,12,12,12,12,4,12,6,6,6,6,11,10,13,6,4,4,11,13] (hard := []) (by decide +kernel) .nil)

theorem g1748 : BadRow (SharedShell.row 6 3 false 3 3 5 [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1749 : BadRow (SharedShell.row 6 3 true 3 3 5 [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1750 : BadRow (SharedShell.row 6 3 false 3 3 5 [0,0,1,0,2]) :=
  row_of_forall (discharge bank [18,18,31,31,31,31,18,18] (hard := []) (by decide +kernel) .nil)

theorem g1751 : BadRow (SharedShell.row 6 3 true 3 3 5 [0,0,1,0,2]) :=
  row_of_forall (discharge bank [12,12,1,1,12,12,12,12,12,12,12,12,12,12,12,12,24,12,10,12,6,6,6,6,6,6,6,11,11,10,10,13,6,13,6,4,4,4,4,1,13,11,13] (hard := []) (by decide +kernel) .nil)

theorem g1752 : BadRow (SharedShell.row 6 3 false 3 3 5 [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1753 : BadRow (SharedShell.row 6 3 true 3 3 5 [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1754 : BadRow (SharedShell.row 6 3 false 3 3 5 [0,0,1,2,0]) :=
  row_of_forall (discharge bank [18,18,31,31,18,18,31] (hard := []) (by decide +kernel) .nil)

theorem g1755 : BadRow (SharedShell.row 6 3 true 3 3 5 [0,0,1,2,0]) :=
  row_of_forall (discharge bank [12,12,1,12,12,12,12,12,12,12,12,12,12,11,12,12,6,6,6,6,9,24,26,13,6,4,4,14,13,11,12,13] (hard := []) (by decide +kernel) .nil)

theorem g1756 : BadRow (SharedShell.row 6 3 false 3 3 5 [0,0,2,0,1]) :=
  row_of_forall (discharge bank [18,18,31,31,31,31,18,18] (hard := []) (by decide +kernel) .nil)

theorem g1757 : BadRow (SharedShell.row 6 3 true 3 3 5 [0,0,2,0,1]) :=
  row_of_forall (discharge bank [12,12,1,1,12,12,12,12,12,12,14,12,12,12,12,12,12,1,12,4,12,6,6,6,6,6,6,6,27,11,24,14,13,6,13,6,4,4,4,4,10,13,7,13] (hard := []) (by decide +kernel) .nil)

theorem g1758 : BadRow (SharedShell.row 6 3 false 3 3 5 [0,0,2,1,0]) :=
  row_of_forall (discharge bank [18,18,31,31,18,18,31] (hard := []) (by decide +kernel) .nil)

theorem g1759 : BadRow (SharedShell.row 6 3 true 3 3 5 [0,0,2,1,0]) :=
  row_of_forall (discharge bank [12,12,1,12,12,12,12,12,12,12,12,12,12,1,12,12,6,6,6,6,10,10,10,13,6,4,4,10,13,24,12,13] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
