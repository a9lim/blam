import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2660 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,2,0,0,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,7,12,7,1] (hard := []) (by decide +kernel) .nil)

theorem g2661 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2662 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,2,0,1,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,7,9,9,9,9,7,1,9,9,9,9,9,28,3,28,3] (hard := []) (by decide +kernel) .nil)

theorem g2663 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2664 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,2,0,2,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g2665 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2666 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,2,0,3,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,7,1,12,7,1,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2667 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2668 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,2,1,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,7,9,9,9,9,7,1,9,9,9,9,9,72,3,72,3] (hard := []) (by decide +kernel) .nil)

theorem g2669 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2670 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2671 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2672 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,2,1,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,1,17,1,17] (hard := []) (by decide +kernel) .nil)

theorem g2673 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2674 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,2,2,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,8,1,9,9,7,9,9,9,9,9,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g2675 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2676 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,2,2,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,8,1,9,9,7,9,9,9,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g2677 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2678 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,2,3,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,9] (hard := []) (by decide +kernel) .nil)

theorem g2679 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
