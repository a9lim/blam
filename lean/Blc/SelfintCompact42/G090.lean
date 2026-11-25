import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1800 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,0,1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1801 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,0,1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1802 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,0,2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1803 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,0,2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1804 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,0,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1805 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,0,2,1,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,12,26,12] (hard := []) (by decide +kernel) .nil)

theorem g1806 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1807 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1808 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,0,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1809 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,0,2,3,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,12,16,12] (hard := []) (by decide +kernel) .nil)

theorem g1810 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,0,2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1811 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,0,2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1812 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,0,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1813 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,0,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1814 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,0,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1815 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,0,3,1,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1816 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,0,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1817 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,0,3,2,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1818 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,0,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1819 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,0,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
