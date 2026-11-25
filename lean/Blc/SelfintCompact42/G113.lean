import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2260 : BadRow (SharedShell.row 5 6 false 6 3 4 [0,0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2261 : BadRow (SharedShell.row 5 6 true 6 3 4 [0,0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2262 : BadRow (SharedShell.row 5 6 false 6 3 4 [0,0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2263 : BadRow (SharedShell.row 5 6 true 6 3 4 [0,0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2264 : BadRow (SharedShell.row 5 6 false 6 3 4 [0,0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2265 : BadRow (SharedShell.row 5 6 true 6 3 4 [0,0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2266 : BadRow (SharedShell.row 5 6 false 6 3 4 [0,1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2267 : BadRow (SharedShell.row 5 6 true 6 3 4 [0,1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2268 : BadRow (SharedShell.row 5 6 false 6 3 4 [0,1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2269 : BadRow (SharedShell.row 5 6 true 6 3 4 [0,1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2270 : BadRow (SharedShell.row 5 6 false 6 3 4 [0,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2271 : BadRow (SharedShell.row 5 6 true 6 3 4 [0,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2272 : BadRow (SharedShell.row 5 6 false 6 3 4 [0,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2273 : BadRow (SharedShell.row 5 6 true 6 3 4 [0,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2274 : BadRow (SharedShell.row 5 6 false 6 3 4 [0,1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2275 : BadRow (SharedShell.row 5 6 true 6 3 4 [0,1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2276 : BadRow (SharedShell.row 5 6 false 6 3 4 [0,1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2277 : BadRow (SharedShell.row 5 6 true 6 3 4 [0,1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2278 : BadRow (SharedShell.row 5 6 false 6 3 4 [0,2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2279 : BadRow (SharedShell.row 5 6 true 6 3 4 [0,2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
