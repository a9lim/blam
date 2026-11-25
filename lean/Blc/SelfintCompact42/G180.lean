import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3600 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3601 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,1,0,0,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,12] (hard := []) (by decide +kernel) .nil)

theorem g3602 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,1,0,1,2]) :=
  row_of_forall (discharge bank [10,2] (hard := []) (by decide +kernel) .nil)

theorem g3603 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,1,0,1,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,5,5,5,5,5,1,12,11] (hard := []) (by decide +kernel) .nil)

theorem g3604 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,1,0,2,1]) :=
  row_of_forall (discharge bank [2] (hard := []) (by decide +kernel) .nil)

theorem g3605 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,1,0,2,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,5,5,5,5,5,3,11] (hard := []) (by decide +kernel) .nil)

theorem g3606 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3607 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,1,0,3,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,12] (hard := []) (by decide +kernel) .nil)

theorem g3608 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,1,1,0,2]) :=
  row_of_forall (discharge bank [10,2,2] (hard := []) (by decide +kernel) .nil)

theorem g3609 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,1,1,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,5,5,5,5,5,1,1,12,12,21] (hard := []) (by decide +kernel) .nil)

theorem g3610 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3611 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3612 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,1,1,2,0]) :=
  row_of_forall (discharge bank [2] (hard := []) (by decide +kernel) .nil)

theorem g3613 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,1,1,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,5,5,5,1,28] (hard := []) (by decide +kernel) .nil)

theorem g3614 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,1,2,0,1]) :=
  row_of_forall (discharge bank [10,2,2] (hard := []) (by decide +kernel) .nil)

theorem g3615 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,1,2,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,5,5,5,5,5,24,3,18,12,17] (hard := []) (by decide +kernel) .nil)

theorem g3616 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,1,2,1,0]) :=
  row_of_forall (discharge bank [10,2] (hard := []) (by decide +kernel) .nil)

theorem g3617 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,1,2,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,5,5,5,1,18,12] (hard := []) (by decide +kernel) .nil)

theorem g3618 : BadRow (SharedShell.row 6 4 false 4 3 5 [0,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3619 : BadRow (SharedShell.row 6 4 true 4 3 5 [0,1,3,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
