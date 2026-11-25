import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2640 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,1,1,0,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g2641 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2642 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2643 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2644 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2645 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2646 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,1,1,3,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,23,1,23,1] (hard := []) (by decide +kernel) .nil)

theorem g2647 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2648 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,1,2,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2649 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2650 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2651 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2652 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,1,2,2,0]) :=
  row_of_forall (discharge bank [9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2653 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2654 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,1,3,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,16,1,16] (hard := []) (by decide +kernel) .nil)

theorem g2655 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2656 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,1,3,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g2657 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2658 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2659 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
