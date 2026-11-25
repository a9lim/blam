import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3540 : BadRow (SharedShell.row 6 4 false 4 3 4 [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3541 : BadRow (SharedShell.row 6 4 true 4 3 4 [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3542 : BadRow (SharedShell.row 6 4 false 4 3 4 [1,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,4,2,2,2,4,2,2,2,4,2,2,2,19,9,9,9,4,9,9,9,4] (hard := []) (by decide +kernel) .nil)

theorem g3543 : BadRow (SharedShell.row 6 4 true 4 3 4 [1,1,2,0]) :=
  row_of_forall (discharge bank [2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,9,32,1,1,1,9,32,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3544 : BadRow (SharedShell.row 6 4 false 4 3 4 [1,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,4,2,2,2,4,2,2,2,4,2,2,2,4,2,2,2,4,2,2,2,19,2,2,2,19,9,9,9,4,9,9,9,4,9,9,9,4] (hard := []) (by decide +kernel) .nil)

theorem g3545 : BadRow (SharedShell.row 6 4 true 4 3 4 [1,2,0,1]) :=
  row_of_forall (discharge bank [2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3546 : BadRow (SharedShell.row 6 4 false 4 3 4 [1,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,4,2,2,2,4,2,2,2,4,2,2,2,19,9,9,9,4,9,9,9,4] (hard := []) (by decide +kernel) .nil)

theorem g3547 : BadRow (SharedShell.row 6 4 true 4 3 4 [1,2,1,0]) :=
  row_of_forall (discharge bank [2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,9,32,1,1,1,9,32,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3548 : BadRow (SharedShell.row 6 4 false 4 3 4 [1,3,0,0]) :=
  row_of_forall (discharge bank [9,9,9,29,9,9,9,29,9,9,9,29] (hard := []) (by decide +kernel) .nil)

theorem g3549 : BadRow (SharedShell.row 6 4 true 4 3 4 [1,3,0,0]) :=
  row_of_forall (discharge bank [9,32,1,1,1,9,32,1,1,1,9,32,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3550 : BadRow (SharedShell.row 6 4 false 4 3 4 [2,0,0,2]) :=
  row_of_forall (discharge bank [9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,4] (hard := []) (by decide +kernel) .nil)

theorem g3551 : BadRow (SharedShell.row 6 4 true 4 3 4 [2,0,0,2]) :=
  row_of_forall (discharge bank [9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3552 : BadRow (SharedShell.row 6 4 false 4 3 4 [2,0,1,1]) :=
  row_of_forall (discharge bank [2,2,2,4,2,2,2,4,2,2,2,4,2,2,2,4,2,2,2,4,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,4] (hard := []) (by decide +kernel) .nil)

theorem g3553 : BadRow (SharedShell.row 6 4 true 4 3 4 [2,0,1,1]) :=
  row_of_forall (discharge bank [2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3554 : BadRow (SharedShell.row 6 4 false 4 3 4 [2,0,2,0]) :=
  row_of_forall (discharge bank [9,9,9,4,9,9,9,4,9,9,9,4] (hard := []) (by decide +kernel) .nil)

theorem g3555 : BadRow (SharedShell.row 6 4 true 4 3 4 [2,0,2,0]) :=
  row_of_forall (discharge bank [9,32,1,1,1,9,32,1,1,1,9,32,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3556 : BadRow (SharedShell.row 6 4 false 4 3 4 [2,1,0,1]) :=
  row_of_forall (discharge bank [2,2,2,4,2,2,2,4,2,2,2,4,2,2,2,4,2,2,2,4,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,4] (hard := []) (by decide +kernel) .nil)

theorem g3557 : BadRow (SharedShell.row 6 4 true 4 3 4 [2,1,0,1]) :=
  row_of_forall (discharge bank [2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3558 : BadRow (SharedShell.row 6 4 false 4 3 4 [2,1,1,0]) :=
  row_of_forall (discharge bank [2,2,2,4,2,2,2,4,2,2,2,4,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,4] (hard := []) (by decide +kernel) .nil)

theorem g3559 : BadRow (SharedShell.row 6 4 true 4 3 4 [2,1,1,0]) :=
  row_of_forall (discharge bank [2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
