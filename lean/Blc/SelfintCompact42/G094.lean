import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1880 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,2,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1881 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,2,0,3,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,12,12,14,14,14] (hard := []) (by decide +kernel) .nil)

theorem g1882 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,2,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1883 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,2,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1884 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,2,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1885 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,2,1,0,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,12,12,3,26,3] (hard := []) (by decide +kernel) .nil)

theorem g1886 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1887 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1888 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1889 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1890 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,2,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1891 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,2,1,3,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,12,12,3] (hard := []) (by decide +kernel) .nil)

theorem g1892 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1893 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1894 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1895 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1896 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1897 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1898 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,2,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1899 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,2,3,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,12,12,14,14,14] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
