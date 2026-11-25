import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2540 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,2,2,2,0]) :=
  row_of_forall (discharge bank [9,9,7,11,11] (hard := []) (by decide +kernel) .nil)

theorem g2541 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2542 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,2,3,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,11,11,9,9,9,9,9,25,1,9,9,9,9,9,18,18,3,15,3,18,18,3,15,3] (hard := []) (by decide +kernel) .nil)

theorem g2543 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,2,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2544 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,2,3,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,9,9,9,9,18,18,3,15,18,18,3,15] (hard := []) (by decide +kernel) .nil)

theorem g2545 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,2,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2546 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,2,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2547 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,2,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2548 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,3,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2549 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,3,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2550 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,3,0,1,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,12,12,9,9,9,9,9,9,9,9,9,9,12,12,14,14,14,12,12,14,14,14] (hard := []) (by decide +kernel) .nil)

theorem g2551 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,3,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2552 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,3,0,2,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,8,9,9,11,9,9,9,9,9,9,9,9,9,9,12,12,14,11,14,12,12,14,11,14] (hard := []) (by decide +kernel) .nil)

theorem g2553 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,3,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2554 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,3,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2555 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,3,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2556 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,3,1,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,12,12,14,14,14,12,12,14,14,14] (hard := []) (by decide +kernel) .nil)

theorem g2557 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,3,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2558 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,3,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2559 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,3,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
