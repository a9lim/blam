import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2520 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,2,0,1,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,9,9,9,9,9,1,1,12,12,12,1,1,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g2521 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,2,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2522 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,2,0,2,2]) :=
  row_of_forall (discharge bank [9,9,12,9,9,7,12,1] (hard := []) (by decide +kernel) .nil)

theorem g2523 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2524 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,2,0,3,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,11,12,9,9,9,9,9,1,9,9,9,9,9,23,1,25,12,12,23,1,25,12,12] (hard := []) (by decide +kernel) .nil)

theorem g2525 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,2,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2526 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,2,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2527 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,2,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2528 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,2,1,0,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,12,7,12,9,9,9,9,9,1,1,9,9,9,9,9,1,1,12,27,12,1,1,12,27,12] (hard := []) (by decide +kernel) .nil)

theorem g2529 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,2,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2530 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2531 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2532 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2533 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2534 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,2,1,3,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,12,7,12,9,9,9,9,9,1,9,9,9,9,9,23,1,27,12,12,23,1,27,12,12] (hard := []) (by decide +kernel) .nil)

theorem g2535 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,2,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2536 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,2,2,0,2]) :=
  row_of_forall (discharge bank [9,9,7,11,11,9,9,7,12] (hard := []) (by decide +kernel) .nil)

theorem g2537 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2538 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2539 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
