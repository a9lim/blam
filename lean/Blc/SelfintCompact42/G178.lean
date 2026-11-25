import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3560 : BadRow (SharedShell.row 6 4 false 4 3 4 [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3561 : BadRow (SharedShell.row 6 4 true 4 3 4 [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3562 : BadRow (SharedShell.row 6 4 false 4 3 4 [3,0,0,1]) :=
  row_of_forall (discharge bank [9,9,9,29,9,9,9,29,9,9,9,29,9,9,9,29,9,9,9,29] (hard := []) (by decide +kernel) .nil)

theorem g3563 : BadRow (SharedShell.row 6 4 true 4 3 4 [3,0,0,1]) :=
  row_of_forall (discharge bank [9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3564 : BadRow (SharedShell.row 6 4 false 4 3 4 [3,0,1,0]) :=
  row_of_forall (discharge bank [9,9,9,29,9,9,9,29,9,9,9,29,9,9,9,29,9,9,9,29] (hard := []) (by decide +kernel) .nil)

theorem g3565 : BadRow (SharedShell.row 6 4 true 4 3 4 [3,0,1,0]) :=
  row_of_forall (discharge bank [9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3566 : BadRow (SharedShell.row 6 4 false 4 3 4 [3,1,0,0]) :=
  row_of_forall (discharge bank [9,9,9,29,9,9,9,29,9,9,9,29] (hard := []) (by decide +kernel) .nil)

theorem g3567 : BadRow (SharedShell.row 6 4 true 4 3 4 [3,1,0,0]) :=
  row_of_forall (discharge bank [9,32,1,1,1,9,32,1,1,1,9,32,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3568 : BadRow (SharedShell.row 6 4 false 4 3 4 [4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3569 : BadRow (SharedShell.row 6 4 true 4 3 4 [4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3570 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3571 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3572 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3573 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,0,0,1,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,11] (hard := []) (by decide +kernel) .nil)

theorem g3574 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,0,0,2,2]) :=
  row_of_forall (discharge bank [10] (hard := []) (by decide +kernel) .nil)

theorem g3575 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,0,0,2,2]) :=
  row_of_forall (discharge bank [9,1,1,9,9,9,12] (hard := []) (by decide +kernel) .nil)

theorem g3576 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3577 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,0,0,3,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,12,12] (hard := []) (by decide +kernel) .nil)

theorem g3578 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3579 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
