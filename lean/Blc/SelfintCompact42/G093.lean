import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1860 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,1,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1861 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,1,2,3,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,18,18,3] (hard := []) (by decide +kernel) .nil)

theorem g1862 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,1,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1863 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,1,3,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1864 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,1,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1865 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,1,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1866 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,1,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1867 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,1,3,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,23,1,25] (hard := []) (by decide +kernel) .nil)

theorem g1868 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,1,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1869 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,1,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1870 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,1,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1871 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,1,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1872 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,1,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1873 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,1,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1874 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,2,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1875 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,2,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1876 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,2,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1877 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,2,0,1,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,11,12,14,12,14] (hard := []) (by decide +kernel) .nil)

theorem g1878 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1879 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
