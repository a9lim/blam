import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3580 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3581 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,0,1,0,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,12,12,11] (hard := []) (by decide +kernel) .nil)

theorem g3582 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3583 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,0,1,1,2]) :=
  row_of_forall (discharge bank [9,9,9,9,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem g3584 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3585 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,0,1,2,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem g3586 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3587 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,0,1,3,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,12,20] (hard := []) (by decide +kernel) .nil)

theorem g3588 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,0,2,0,2]) :=
  row_of_forall (discharge bank [10,10] (hard := []) (by decide +kernel) .nil)

theorem g3589 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,0,2,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,1,1,9,9,9,9,9,12,11] (hard := []) (by decide +kernel) .nil)

theorem g3590 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3591 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,0,2,1,1]) :=
  row_of_forall (discharge bank [9,9,9,9,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem g3592 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,0,2,2,0]) :=
  row_of_forall (discharge bank [10] (hard := []) (by decide +kernel) .nil)

theorem g3593 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,0,2,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,12] (hard := []) (by decide +kernel) .nil)

theorem g3594 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3595 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,0,3,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,12,11,15] (hard := []) (by decide +kernel) .nil)

theorem g3596 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3597 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,0,3,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,11] (hard := []) (by decide +kernel) .nil)

theorem g3598 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3599 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
