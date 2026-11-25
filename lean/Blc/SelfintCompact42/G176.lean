import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3520 : BadRow (SharedShell.row 6 4 false 4 3 4 [0,2,1,1]) :=
  row_of_forall (discharge bank [2,2,2,4,2,2,2,4,2,2,2,4,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,5,9,9,9,5,30,10,10,4,10,30,10,9,18,10,10,4,10,18,10,9] (hard := []) (by decide +kernel) .nil)

theorem g3521 : BadRow (SharedShell.row 6 4 true 4 3 4 [0,2,1,1]) :=
  row_of_forall (discharge bank [2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,30,1,1,1,1,1,18,16,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3522 : BadRow (SharedShell.row 6 4 false 4 3 4 [0,2,2,0]) :=
  row_of_forall (discharge bank [9,9,9,4,9,9,9,4,9,9,9,4] (hard := []) (by decide +kernel) .nil)

theorem g3523 : BadRow (SharedShell.row 6 4 true 4 3 4 [0,2,2,0]) :=
  row_of_forall (discharge bank [9,32,1,1,1,9,32,1,1,1,9,32,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3524 : BadRow (SharedShell.row 6 4 false 4 3 4 [0,3,0,1]) :=
  row_of_forall (discharge bank [9,9,9,29,9,9,9,29,9,9,9,29,9,9,9,29,9,9,9,29,9,9,9,29,9,9,9,29,9,9,9,4,9,9,9,4,5,10,10,4,10,5,10,9,5,10,10,4,10,5,10,9] (hard := []) (by decide +kernel) .nil)

theorem g3525 : BadRow (SharedShell.row 6 4 true 4 3 4 [0,3,0,1]) :=
  row_of_forall (discharge bank [9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,5,8,1,1,1,1,5,8,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3526 : BadRow (SharedShell.row 6 4 false 4 3 4 [0,3,1,0]) :=
  row_of_forall (discharge bank [9,9,9,29,9,9,9,29,9,9,9,29,9,9,9,29,9,9,9,4,9,9,9,4,5,10,10,4,10,5,10,9] (hard := []) (by decide +kernel) .nil)

theorem g3527 : BadRow (SharedShell.row 6 4 true 4 3 4 [0,3,1,0]) :=
  row_of_forall (discharge bank [9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,5,8,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3528 : BadRow (SharedShell.row 6 4 false 4 3 4 [0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3529 : BadRow (SharedShell.row 6 4 true 4 3 4 [0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3530 : BadRow (SharedShell.row 6 4 false 4 3 4 [1,0,0,3]) :=
  row_of_forall (discharge bank [9,9,9,29,9,9,9,29,9,9,9,29,9,9,9,29,9,9,9,29,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,4] (hard := []) (by decide +kernel) .nil)

theorem g3531 : BadRow (SharedShell.row 6 4 true 4 3 4 [1,0,0,3]) :=
  row_of_forall (discharge bank [9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3532 : BadRow (SharedShell.row 6 4 false 4 3 4 [1,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,4,2,2,2,4,2,2,2,4,2,2,2,4,2,2,2,4,2,2,2,19,9,9,9,4,9,9,9,4,9,9,9,4] (hard := []) (by decide +kernel) .nil)

theorem g3533 : BadRow (SharedShell.row 6 4 true 4 3 4 [1,0,1,2]) :=
  row_of_forall (discharge bank [2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3534 : BadRow (SharedShell.row 6 4 false 4 3 4 [1,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,4,2,2,2,4,2,2,2,4,2,2,2,4,2,2,2,4,2,2,2,19,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,4] (hard := []) (by decide +kernel) .nil)

theorem g3535 : BadRow (SharedShell.row 6 4 true 4 3 4 [1,0,2,1]) :=
  row_of_forall (discharge bank [2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3536 : BadRow (SharedShell.row 6 4 false 4 3 4 [1,0,3,0]) :=
  row_of_forall (discharge bank [9,9,9,29,9,9,9,29,9,9,9,29,9,9,9,29,9,9,9,29,9,9,9,4,9,9,9,4,9,9,9,4] (hard := []) (by decide +kernel) .nil)

theorem g3537 : BadRow (SharedShell.row 6 4 true 4 3 4 [1,0,3,0]) :=
  row_of_forall (discharge bank [9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3538 : BadRow (SharedShell.row 6 4 false 4 3 4 [1,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,4,2,2,2,4,2,2,2,4,2,2,2,4,2,2,2,4,2,2,2,19,2,2,2,19,9,9,9,4,9,9,9,4] (hard := []) (by decide +kernel) .nil)

theorem g3539 : BadRow (SharedShell.row 6 4 true 4 3 4 [1,1,0,2]) :=
  row_of_forall (discharge bank [2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,9,32,1,1,1,9,32,1,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
