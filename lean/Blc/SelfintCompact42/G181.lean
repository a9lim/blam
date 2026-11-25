import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3620 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,2,0,0,2]) :=
  row_of_forall (discharge bank [10,10] (hard := []) (by decide +kernel) .nil)

theorem g3621 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,2,0,0,2]) :=
  row_of_forall (discharge bank [9,9,1,1,9,9,9,9,1,1,9,9,9,12,14] (hard := []) (by decide +kernel) .nil)

theorem g3622 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,2,0,1,1]) :=
  row_of_forall (discharge bank [10] (hard := []) (by decide +kernel) .nil)

theorem g3623 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,2,0,1,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,5,5,5,5,5,14] (hard := []) (by decide +kernel) .nil)

theorem g3624 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,2,0,2,0]) :=
  row_of_forall (discharge bank [10,10] (hard := []) (by decide +kernel) .nil)

theorem g3625 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,2,0,2,0]) :=
  row_of_forall (discharge bank [9,9,1,1,9,9,9,9,9,9,9,9,21,14] (hard := []) (by decide +kernel) .nil)

theorem g3626 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,2,1,0,1]) :=
  row_of_forall (discharge bank [10,10] (hard := []) (by decide +kernel) .nil)

theorem g3627 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,2,1,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,5,5,5,5,5,12,14] (hard := []) (by decide +kernel) .nil)

theorem g3628 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,2,1,1,0]) :=
  row_of_forall (discharge bank [10] (hard := []) (by decide +kernel) .nil)

theorem g3629 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,2,1,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,5,5,5,12] (hard := []) (by decide +kernel) .nil)

theorem g3630 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3631 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,2,2,0,0]) :=
  row_of_forall (discharge bank [1,1,9] (hard := []) (by decide +kernel) .nil)

theorem g3632 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3633 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,3,0,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3634 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3635 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,3,0,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3636 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3637 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,3,1,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3638 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3639 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
