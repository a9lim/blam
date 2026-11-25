import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2620 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,0,3,1,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2621 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2622 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,0,3,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,7,9,12,12] (hard := []) (by decide +kernel) .nil)

theorem g2623 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2624 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2625 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2626 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2627 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2628 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2629 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2630 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2631 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2632 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,1,0,1,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g2633 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2634 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,1,0,2,2]) :=
  row_of_forall (discharge bank [9,9,1,9,9,1,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2635 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2636 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,1,0,3,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g2637 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2638 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2639 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
