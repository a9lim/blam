import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2380 : BadRow (SharedShell.row 5 6 false 6 3 4 [3,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2381 : BadRow (SharedShell.row 5 6 true 6 3 4 [3,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2382 : BadRow (SharedShell.row 5 6 false 6 3 4 [3,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2383 : BadRow (SharedShell.row 5 6 true 6 3 4 [3,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2384 : BadRow (SharedShell.row 5 6 false 6 3 4 [3,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2385 : BadRow (SharedShell.row 5 6 true 6 3 4 [3,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2386 : BadRow (SharedShell.row 5 6 false 6 3 4 [3,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2387 : BadRow (SharedShell.row 5 6 true 6 3 4 [3,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2388 : BadRow (SharedShell.row 5 6 false 6 3 4 [3,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2389 : BadRow (SharedShell.row 5 6 true 6 3 4 [3,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2390 : BadRow (SharedShell.row 5 6 false 6 3 4 [3,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2391 : BadRow (SharedShell.row 5 6 true 6 3 4 [3,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2392 : BadRow (SharedShell.row 5 6 false 6 3 4 [3,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2393 : BadRow (SharedShell.row 5 6 true 6 3 4 [3,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2394 : BadRow (SharedShell.row 5 6 false 6 3 4 [3,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2395 : BadRow (SharedShell.row 5 6 true 6 3 4 [3,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2396 : BadRow (SharedShell.row 5 6 false 6 3 4 [3,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2397 : BadRow (SharedShell.row 5 6 true 6 3 4 [3,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2398 : BadRow (SharedShell.row 5 6 false 6 3 4 [3,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2399 : BadRow (SharedShell.row 5 6 true 6 3 4 [3,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
