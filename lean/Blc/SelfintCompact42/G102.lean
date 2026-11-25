import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2040 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2041 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,3,0,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2042 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2043 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2044 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2045 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2046 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2047 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,3,2,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2048 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2049 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2050 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2051 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2052 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2053 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2054 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2055 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2056 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2057 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2058 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2059 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,0,0,1,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
