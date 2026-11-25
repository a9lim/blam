import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2480 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,1,0,2,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,12,1,1,1,1,12,1,1] (hard := []) (by decide +kernel) .nil)

theorem g2481 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,1,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2482 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,1,0,3,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,9,9,9,9,9,9,9,9,9,9,1,1,12,1,1,1,1,12,1,1] (hard := []) (by decide +kernel) .nil)

theorem g2483 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,1,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2484 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,1,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2485 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,1,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2486 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,1,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2487 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,1,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2488 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,1,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2489 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,1,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2490 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,1,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2491 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,1,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2492 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2493 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2494 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,1,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2495 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,1,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2496 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,1,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2497 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,1,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2498 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,1,2,0,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,9,9,9,9,9,9,9,9,9,9,1,1,12,1,1,1,1,12,1,1] (hard := []) (by decide +kernel) .nil)

theorem g2499 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,1,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
