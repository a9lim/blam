import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2600 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2601 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2602 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,0,1,1,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2603 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2604 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,0,1,2,2]) :=
  row_of_forall (discharge bank [9,9,1,9,9,1,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2605 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2606 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,0,1,3,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2607 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2608 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2609 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2610 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,0,2,0,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,9,9,1,1,1,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g2611 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2612 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,0,2,1,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2613 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2614 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,0,2,2,1]) :=
  row_of_forall (discharge bank [9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2615 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2616 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,0,2,3,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,9,9,1,1,1,9,12,12] (hard := []) (by decide +kernel) .nil)

theorem g2617 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2618 : BadRow (SharedShell.row 5 6 false 6 3 5 [1,0,3,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,9,9,1,1,1,1,12,3,12,3] (hard := []) (by decide +kernel) .nil)

theorem g2619 : BadRow (SharedShell.row 5 6 true 6 3 5 [1,0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
