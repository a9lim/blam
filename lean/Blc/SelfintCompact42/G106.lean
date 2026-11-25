import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2120 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2121 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,3,0,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2122 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2123 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,3,1,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2124 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2125 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2126 : BadRow (SharedShell.row 5 6 false 6 2 5 [3,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2127 : BadRow (SharedShell.row 5 6 true 6 2 5 [3,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2128 : BadRow (SharedShell.row 5 6 false 6 2 5 [3,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2129 : BadRow (SharedShell.row 5 6 true 6 2 5 [3,0,0,1,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2130 : BadRow (SharedShell.row 5 6 false 6 2 5 [3,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2131 : BadRow (SharedShell.row 5 6 true 6 2 5 [3,0,0,2,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2132 : BadRow (SharedShell.row 5 6 false 6 2 5 [3,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2133 : BadRow (SharedShell.row 5 6 true 6 2 5 [3,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2134 : BadRow (SharedShell.row 5 6 false 6 2 5 [3,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2135 : BadRow (SharedShell.row 5 6 true 6 2 5 [3,0,1,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2136 : BadRow (SharedShell.row 5 6 false 6 2 5 [3,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2137 : BadRow (SharedShell.row 5 6 true 6 2 5 [3,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2138 : BadRow (SharedShell.row 5 6 false 6 2 5 [3,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2139 : BadRow (SharedShell.row 5 6 true 6 2 5 [3,0,1,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
