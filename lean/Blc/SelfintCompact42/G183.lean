import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3660 : BadRow (SharedShell.row 6 4 false 4 3 5 [1,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3661 : BadRow (SharedShell.row 6 4 true 4 3 5 [1,1,0,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,1,1,9,9,9,9,9,9,9,9,9,5,5,5,5,5,1,1,1,1,1,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g3662 : BadRow (SharedShell.row 6 4 false 4 3 5 [1,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3663 : BadRow (SharedShell.row 6 4 true 4 3 5 [1,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3664 : BadRow (SharedShell.row 6 4 false 4 3 5 [1,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3665 : BadRow (SharedShell.row 6 4 true 4 3 5 [1,1,0,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,5,5,5,5,5,23,1,23,1,1,1,21,21,9,9,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g3666 : BadRow (SharedShell.row 6 4 false 4 3 5 [1,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3667 : BadRow (SharedShell.row 6 4 true 4 3 5 [1,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3668 : BadRow (SharedShell.row 6 4 false 4 3 5 [1,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3669 : BadRow (SharedShell.row 6 4 true 4 3 5 [1,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3670 : BadRow (SharedShell.row 6 4 false 4 3 5 [1,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3671 : BadRow (SharedShell.row 6 4 true 4 3 5 [1,1,2,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,5,5,5,25,1,16,1,21,9,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g3672 : BadRow (SharedShell.row 6 4 false 4 3 5 [1,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3673 : BadRow (SharedShell.row 6 4 true 4 3 5 [1,2,0,0,1]) :=
  row_of_forall (discharge bank [23,1,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,5,5,5,5,5,20,14,17,3,14,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g3674 : BadRow (SharedShell.row 6 4 false 4 3 5 [1,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3675 : BadRow (SharedShell.row 6 4 true 4 3 5 [1,2,0,1,0]) :=
  row_of_forall (discharge bank [1,16,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,5,5,5,5,5,20,20,3,14,17,3,24,3,9,9,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g3676 : BadRow (SharedShell.row 6 4 false 4 3 5 [1,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3677 : BadRow (SharedShell.row 6 4 true 4 3 5 [1,2,1,0,0]) :=
  row_of_forall (discharge bank [1,1,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,5,5,5,25,1,1,1,21,9,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g3678 : BadRow (SharedShell.row 6 4 false 4 3 5 [1,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3679 : BadRow (SharedShell.row 6 4 true 4 3 5 [1,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
