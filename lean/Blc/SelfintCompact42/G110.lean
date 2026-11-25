import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2200 : BadRow (SharedShell.row 5 6 false 6 3 3 [0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2201 : BadRow (SharedShell.row 5 6 true 6 3 3 [0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2202 : BadRow (SharedShell.row 5 6 false 6 3 3 [0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2203 : BadRow (SharedShell.row 5 6 true 6 3 3 [0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2204 : BadRow (SharedShell.row 5 6 false 6 3 3 [0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2205 : BadRow (SharedShell.row 5 6 true 6 3 3 [0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2206 : BadRow (SharedShell.row 5 6 false 6 3 3 [0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2207 : BadRow (SharedShell.row 5 6 true 6 3 3 [0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2208 : BadRow (SharedShell.row 5 6 false 6 3 3 [0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2209 : BadRow (SharedShell.row 5 6 true 6 3 3 [0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2210 : BadRow (SharedShell.row 5 6 false 6 3 3 [1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2211 : BadRow (SharedShell.row 5 6 true 6 3 3 [1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2212 : BadRow (SharedShell.row 5 6 false 6 3 3 [1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2213 : BadRow (SharedShell.row 5 6 true 6 3 3 [1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2214 : BadRow (SharedShell.row 5 6 false 6 3 3 [1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2215 : BadRow (SharedShell.row 5 6 true 6 3 3 [1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2216 : BadRow (SharedShell.row 5 6 false 6 3 3 [1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2217 : BadRow (SharedShell.row 5 6 true 6 3 3 [1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2218 : BadRow (SharedShell.row 5 6 false 6 3 3 [1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2219 : BadRow (SharedShell.row 5 6 true 6 3 3 [1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
