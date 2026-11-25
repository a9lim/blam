import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2460 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,0,3,2,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,7,9,9,12,9,9,9,9,9,9,9,9,12,12,11,12,12,12,11,12] (hard := []) (by decide +kernel) .nil)

theorem g2461 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,0,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2462 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,0,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2463 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,0,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2464 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,0,4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2465 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,0,4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2466 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,0,4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2467 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,0,4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2468 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,0,4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2469 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,0,4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2470 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,0,5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2471 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,0,5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2472 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,0,5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2473 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,0,5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2474 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,0,6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2475 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,0,6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2476 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,1,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2477 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,1,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2478 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,1,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2479 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,1,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
