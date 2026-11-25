import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2280 : BadRow (SharedShell.row 5 6 false 6 3 4 [0,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2281 : BadRow (SharedShell.row 5 6 true 6 3 4 [0,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2282 : BadRow (SharedShell.row 5 6 false 6 3 4 [0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2283 : BadRow (SharedShell.row 5 6 true 6 3 4 [0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2284 : BadRow (SharedShell.row 5 6 false 6 3 4 [0,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2285 : BadRow (SharedShell.row 5 6 true 6 3 4 [0,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2286 : BadRow (SharedShell.row 5 6 false 6 3 4 [0,2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2287 : BadRow (SharedShell.row 5 6 true 6 3 4 [0,2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2288 : BadRow (SharedShell.row 5 6 false 6 3 4 [0,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2289 : BadRow (SharedShell.row 5 6 true 6 3 4 [0,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2290 : BadRow (SharedShell.row 5 6 false 6 3 4 [0,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2291 : BadRow (SharedShell.row 5 6 true 6 3 4 [0,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2292 : BadRow (SharedShell.row 5 6 false 6 3 4 [0,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2293 : BadRow (SharedShell.row 5 6 true 6 3 4 [0,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2294 : BadRow (SharedShell.row 5 6 false 6 3 4 [0,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2295 : BadRow (SharedShell.row 5 6 true 6 3 4 [0,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2296 : BadRow (SharedShell.row 5 6 false 6 3 4 [0,4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2297 : BadRow (SharedShell.row 5 6 true 6 3 4 [0,4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2298 : BadRow (SharedShell.row 5 6 false 6 3 4 [0,4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2299 : BadRow (SharedShell.row 5 6 true 6 3 4 [0,4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
