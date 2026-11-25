import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2680 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,3,0,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,12,1] (hard := []) (by decide +kernel) .nil)

theorem g2681 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2682 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,3,0,1,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2683 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2684 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,3,0,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,8,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2685 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2686 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,3,1,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2687 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2688 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,3,1,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2689 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2690 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,3,2,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2691 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2692 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2693 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2694 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2695 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2696 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2697 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2698 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2699 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
