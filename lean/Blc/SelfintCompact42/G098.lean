import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1960 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1961 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,0,1,2,2]) :=
  row_of_forall (discharge bank [12,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g1962 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1963 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1964 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1965 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1966 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1967 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,0,2,0,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g1968 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1969 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,0,2,1,2]) :=
  row_of_forall (discharge bank [3,1,7,1] (hard := []) (by decide +kernel) .nil)

theorem g1970 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1971 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,0,2,2,1]) :=
  row_of_forall (discharge bank [7,1,1] (hard := []) (by decide +kernel) .nil)

theorem g1972 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1973 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,0,2,3,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g1974 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1975 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,0,3,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g1976 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1977 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1978 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1979 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,0,3,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
