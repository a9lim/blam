import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1800 : BadRow (SharedShell.row 6 3 false 3 3 5 [1,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1801 : BadRow (SharedShell.row 6 3 true 3 3 5 [1,2,0,0,0]) :=
  row_of_forall (discharge bank [1,12,12,12,23,12,12,12,12,21,12,12,12,1,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1802 : BadRow (SharedShell.row 6 3 false 3 3 5 [2,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1803 : BadRow (SharedShell.row 6 3 true 3 3 5 [2,0,0,0,1]) :=
  row_of_forall (discharge bank [12,12,1,12,12,12,12,12,12,4,12,12,12,1,12,12,12,19,12,12,12,12,4,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1804 : BadRow (SharedShell.row 6 3 false 3 3 5 [2,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1805 : BadRow (SharedShell.row 6 3 true 3 3 5 [2,0,0,1,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,4,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1806 : BadRow (SharedShell.row 6 3 false 3 3 5 [2,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1807 : BadRow (SharedShell.row 6 3 true 3 3 5 [2,0,1,0,0]) :=
  row_of_forall (discharge bank [1,12,12,12,1,12,12,12,12,12,1,12,12,12,12,12,2,12,20,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1808 : BadRow (SharedShell.row 6 3 false 3 3 5 [2,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1809 : BadRow (SharedShell.row 6 3 true 3 3 5 [2,1,0,0,0]) :=
  row_of_forall (discharge bank [1,12,12,12,1,12,12,12,12,1,12,12,12,2,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1810 : BadRow (SharedShell.row 6 3 false 3 3 5 [3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1811 : BadRow (SharedShell.row 6 3 true 3 3 5 [3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1812 : BadRow (SharedShell.row 6 3 false 3 4 3 [0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1813 : BadRow (SharedShell.row 6 3 true 3 4 3 [0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1814 : BadRow (SharedShell.row 6 3 false 3 4 3 [0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1815 : BadRow (SharedShell.row 6 3 true 3 4 3 [0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1816 : BadRow (SharedShell.row 6 3 false 3 4 3 [0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1817 : BadRow (SharedShell.row 6 3 true 3 4 3 [0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1818 : BadRow (SharedShell.row 6 3 false 3 4 3 [0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1819 : BadRow (SharedShell.row 6 3 true 3 4 3 [0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
