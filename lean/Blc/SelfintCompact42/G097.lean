import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1940 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,5,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1941 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,5,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1942 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,6,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1943 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,6,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1944 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1945 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1946 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1947 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1948 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1949 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,0,0,2,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g1950 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1951 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,0,0,3,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g1952 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1953 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1954 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1955 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1956 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1957 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1958 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1959 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
