import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2580 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,5,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2581 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,5,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2582 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,5,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2583 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,5,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2584 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,5,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2585 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,5,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2586 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,6,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2587 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,6,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2588 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2589 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2590 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2591 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2592 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,0,0,2,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,12,12] (hard := []) (by decide +kernel) .nil)

theorem g2593 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2594 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,0,0,3,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,9,9,1,1,3,3] (hard := []) (by decide +kernel) .nil)

theorem g2595 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2596 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2597 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2598 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2599 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
