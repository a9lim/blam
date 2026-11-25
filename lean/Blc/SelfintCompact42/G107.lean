import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2140 : BadRow (SharedShell.row 5 6 false 6 2 5 [3,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2141 : BadRow (SharedShell.row 5 6 true 6 2 5 [3,0,2,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2142 : BadRow (SharedShell.row 5 6 false 6 2 5 [3,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2143 : BadRow (SharedShell.row 5 6 true 6 2 5 [3,0,2,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2144 : BadRow (SharedShell.row 5 6 false 6 2 5 [3,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2145 : BadRow (SharedShell.row 5 6 true 6 2 5 [3,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2146 : BadRow (SharedShell.row 5 6 false 6 2 5 [3,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2147 : BadRow (SharedShell.row 5 6 true 6 2 5 [3,1,0,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2148 : BadRow (SharedShell.row 5 6 false 6 2 5 [3,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2149 : BadRow (SharedShell.row 5 6 true 6 2 5 [3,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2150 : BadRow (SharedShell.row 5 6 false 6 2 5 [3,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2151 : BadRow (SharedShell.row 5 6 true 6 2 5 [3,1,0,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2152 : BadRow (SharedShell.row 5 6 false 6 2 5 [3,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2153 : BadRow (SharedShell.row 5 6 true 6 2 5 [3,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2154 : BadRow (SharedShell.row 5 6 false 6 2 5 [3,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2155 : BadRow (SharedShell.row 5 6 true 6 2 5 [3,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2156 : BadRow (SharedShell.row 5 6 false 6 2 5 [3,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2157 : BadRow (SharedShell.row 5 6 true 6 2 5 [3,1,2,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2158 : BadRow (SharedShell.row 5 6 false 6 2 5 [3,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2159 : BadRow (SharedShell.row 5 6 true 6 2 5 [3,2,0,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
