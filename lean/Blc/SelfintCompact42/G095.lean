import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1900 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,2,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1901 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,2,3,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,12,12,14] (hard := []) (by decide +kernel) .nil)

theorem g1902 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,2,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1903 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,2,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1904 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,3,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1905 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,3,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1906 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,3,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1907 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,3,0,1,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,12,1,1] (hard := []) (by decide +kernel) .nil)

theorem g1908 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,3,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1909 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,3,0,2,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,12,1,1] (hard := []) (by decide +kernel) .nil)

theorem g1910 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,3,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1911 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,3,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1912 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,3,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1913 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,3,1,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,12,1,1] (hard := []) (by decide +kernel) .nil)

theorem g1914 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,3,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1915 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,3,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1916 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,3,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1917 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,3,1,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,23,1,27] (hard := []) (by decide +kernel) .nil)

theorem g1918 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,3,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1919 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,3,2,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,16,12,16,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
