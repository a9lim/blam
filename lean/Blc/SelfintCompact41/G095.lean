import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1900 : BadRow (SharedShell.row 6 3 false 3 4 5 [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1901 : BadRow (SharedShell.row 6 3 true 3 4 5 [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1902 : BadRow (SharedShell.row 6 3 false 3 4 5 [0,1,2,0,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,21,12,12,12,1,12,12,12,12,12,12,31,31,31,31,31,31,31,12,12,12,12,12,31,31,19,19,19,7,7,7,14,26,12,13] (hard := []) (by decide +kernel) .nil)

theorem g1903 : BadRow (SharedShell.row 6 3 true 3 4 5 [0,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1904 : BadRow (SharedShell.row 6 3 false 3 4 5 [0,2,0,0,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,21,12,12,12,11,12,12,12,12,12,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,19,19,19,19,19,1,17,17,17,17] (hard := []) (by decide +kernel) .nil)

theorem g1905 : BadRow (SharedShell.row 6 3 true 3 4 5 [0,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1906 : BadRow (SharedShell.row 6 3 false 3 4 5 [0,2,0,1,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,31,31,31,31,19,19,19,19,19,1,1,17,17,41,17,14,7,12,13,12,13] (hard := []) (by decide +kernel) .nil)

theorem g1907 : BadRow (SharedShell.row 6 3 true 3 4 5 [0,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1908 : BadRow (SharedShell.row 6 3 false 3 4 5 [0,2,1,0,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,10,12,12,12,10,12,12,12,12,12,12,31,31,31,31,31,31,31,12,12,12,12,12,31,31,19,19,19,10,10,10,10,42,12,13] (hard := []) (by decide +kernel) .nil)

theorem g1909 : BadRow (SharedShell.row 6 3 true 3 4 5 [0,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1910 : BadRow (SharedShell.row 6 3 false 3 4 5 [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1911 : BadRow (SharedShell.row 6 3 true 3 4 5 [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1912 : BadRow (SharedShell.row 6 3 false 3 4 5 [1,0,0,0,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,1,12,12,12,12,12,12,10,12,12,12,1,12,12,12,1,12,12,12,12,1,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1913 : BadRow (SharedShell.row 6 3 true 3 4 5 [1,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1914 : BadRow (SharedShell.row 6 3 false 3 4 5 [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1915 : BadRow (SharedShell.row 6 3 true 3 4 5 [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1916 : BadRow (SharedShell.row 6 3 false 3 4 5 [1,0,0,2,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,1,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1917 : BadRow (SharedShell.row 6 3 true 3 4 5 [1,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1918 : BadRow (SharedShell.row 6 3 false 3 4 5 [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1919 : BadRow (SharedShell.row 6 3 true 3 4 5 [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
