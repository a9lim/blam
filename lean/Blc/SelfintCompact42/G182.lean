import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3640 : BadRow (SharedShell.row 6 4 false 4 3 5 [1,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3641 : BadRow (SharedShell.row 6 4 true 4 3 5 [1,0,0,0,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3642 : BadRow (SharedShell.row 6 4 false 4 3 5 [1,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3643 : BadRow (SharedShell.row 6 4 true 4 3 5 [1,0,0,1,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,1,1,9,9,9,9,9,9,9,5,5,5,3,1,9,9,4,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g3644 : BadRow (SharedShell.row 6 4 false 4 3 5 [1,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3645 : BadRow (SharedShell.row 6 4 true 4 3 5 [1,0,0,2,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,5,5,5,1,1,9,9,4,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g3646 : BadRow (SharedShell.row 6 4 false 4 3 5 [1,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3647 : BadRow (SharedShell.row 6 4 true 4 3 5 [1,0,0,3,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3648 : BadRow (SharedShell.row 6 4 false 4 3 5 [1,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3649 : BadRow (SharedShell.row 6 4 true 4 3 5 [1,0,1,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,1,1,9,9,9,9,9,9,9,9,9,9,5,5,5,5,5,24,3,1,1,9,9,9,9,4,4,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g3650 : BadRow (SharedShell.row 6 4 false 4 3 5 [1,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3651 : BadRow (SharedShell.row 6 4 true 4 3 5 [1,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3652 : BadRow (SharedShell.row 6 4 false 4 3 5 [1,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3653 : BadRow (SharedShell.row 6 4 true 4 3 5 [1,0,1,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,5,5,5,1,25,1,9,9,4,11,9,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g3654 : BadRow (SharedShell.row 6 4 false 4 3 5 [1,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3655 : BadRow (SharedShell.row 6 4 true 4 3 5 [1,0,2,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,5,5,5,5,5,1,1,18,3,9,9,9,9,4,4,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g3656 : BadRow (SharedShell.row 6 4 false 4 3 5 [1,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3657 : BadRow (SharedShell.row 6 4 true 4 3 5 [1,0,2,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,5,5,5,1,3,3,9,9,4,3,9,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g3658 : BadRow (SharedShell.row 6 4 false 4 3 5 [1,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3659 : BadRow (SharedShell.row 6 4 true 4 3 5 [1,0,3,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
