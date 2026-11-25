import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1880 : BadRow (SharedShell.row 6 3 false 3 4 5 [0,0,1,0,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,31,31,31,31,31,31,31,31,31,31,31,12,12,31,31,31,31,31,31,31,31,12,12,19,19,19,19,19,19,19,19,19,1,1,13,6,13,6,4,4,4,4,31,31,13,13] (hard := []) (by decide +kernel) .nil)

theorem g1881 : BadRow (SharedShell.row 6 3 true 3 4 5 [0,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1882 : BadRow (SharedShell.row 6 3 false 3 4 5 [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1883 : BadRow (SharedShell.row 6 3 true 3 4 5 [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1884 : BadRow (SharedShell.row 6 3 false 3 4 5 [0,0,1,2,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,31,31,31,31,31,31,31,12,12,31,31,31,31,12,12,31,31,19,19,19,19,19,9,1,13,6,4,4,31,13,7,12,13] (hard := []) (by decide +kernel) .nil)

theorem g1885 : BadRow (SharedShell.row 6 3 true 3 4 5 [0,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1886 : BadRow (SharedShell.row 6 3 false 3 4 5 [0,0,2,0,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,31,31,31,31,31,31,31,31,31,31,31,12,12,31,31,31,31,31,31,31,31,12,12,19,19,19,19,19,19,19,19,19,27,1,13,6,13,6,4,4,4,4,31,31,13,13] (hard := []) (by decide +kernel) .nil)

theorem g1887 : BadRow (SharedShell.row 6 3 true 3 4 5 [0,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1888 : BadRow (SharedShell.row 6 3 false 3 4 5 [0,0,2,1,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,31,31,31,31,31,31,31,12,12,31,31,31,31,12,12,31,31,19,19,19,19,19,1,1,13,6,4,4,31,13,7,12,13] (hard := []) (by decide +kernel) .nil)

theorem g1889 : BadRow (SharedShell.row 6 3 true 3 4 5 [0,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1890 : BadRow (SharedShell.row 6 3 false 3 4 5 [0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1891 : BadRow (SharedShell.row 6 3 true 3 4 5 [0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1892 : BadRow (SharedShell.row 6 3 false 3 4 5 [0,1,0,0,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,1,12,12,12,1,12,12,12,12,12,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,19,19,19,19,19,10,10,29,10,10] (hard := []) (by decide +kernel) .nil)

theorem g1893 : BadRow (SharedShell.row 6 3 true 3 4 5 [0,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1894 : BadRow (SharedShell.row 6 3 false 3 4 5 [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1895 : BadRow (SharedShell.row 6 3 true 3 4 5 [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1896 : BadRow (SharedShell.row 6 3 false 3 4 5 [0,1,0,2,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,31,31,31,31,19,19,19,19,19,9,10,29,28,29,10,26,26,12,13,12,13] (hard := []) (by decide +kernel) .nil)

theorem g1897 : BadRow (SharedShell.row 6 3 true 3 4 5 [0,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1898 : BadRow (SharedShell.row 6 3 false 3 4 5 [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1899 : BadRow (SharedShell.row 6 3 true 3 4 5 [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
