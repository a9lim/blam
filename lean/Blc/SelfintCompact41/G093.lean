import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1860 : BadRow (SharedShell.row 6 3 false 3 4 4 [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1861 : BadRow (SharedShell.row 6 3 true 3 4 4 [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1862 : BadRow (SharedShell.row 6 3 false 3 4 4 [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1863 : BadRow (SharedShell.row 6 3 true 3 4 4 [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1864 : BadRow (SharedShell.row 6 3 false 3 4 4 [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1865 : BadRow (SharedShell.row 6 3 true 3 4 4 [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1866 : BadRow (SharedShell.row 6 3 false 3 4 4 [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1867 : BadRow (SharedShell.row 6 3 true 3 4 4 [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1868 : BadRow (SharedShell.row 6 3 false 3 4 4 [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1869 : BadRow (SharedShell.row 6 3 true 3 4 4 [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1870 : BadRow (SharedShell.row 6 3 false 3 4 4 [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1871 : BadRow (SharedShell.row 6 3 true 3 4 4 [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1872 : BadRow (SharedShell.row 6 3 false 3 4 5 [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1873 : BadRow (SharedShell.row 6 3 true 3 4 5 [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1874 : BadRow (SharedShell.row 6 3 false 3 4 5 [0,0,0,1,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,11,12,12,12,31,31,31,31,31,31,12,31,31,31,31,12,19,19,19,19,19,1,13,6,4,4,31,13] (hard := []) (by decide +kernel) .nil)

theorem g1875 : BadRow (SharedShell.row 6 3 true 3 4 5 [0,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1876 : BadRow (SharedShell.row 6 3 false 3 4 5 [0,0,0,2,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,10,12,12,12,31,31,31,31,31,31,12,31,31,31,31,12,19,19,19,19,19,1,13,6,4,4,31,13] (hard := []) (by decide +kernel) .nil)

theorem g1877 : BadRow (SharedShell.row 6 3 true 3 4 5 [0,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1878 : BadRow (SharedShell.row 6 3 false 3 4 5 [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1879 : BadRow (SharedShell.row 6 3 true 3 4 5 [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
