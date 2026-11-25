import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3480 : BadRow (SharedShell.row 6 4 false 4 3 3 [1,0,3]) :=
  row_of_forall (discharge bank [76,9,3,76,9,3,76,9,3,76,9,3] (hard := []) (by decide +kernel) .nil)

theorem g3481 : BadRow (SharedShell.row 6 4 true 4 3 3 [1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3482 : BadRow (SharedShell.row 6 4 false 4 3 3 [1,1,2]) :=
  row_of_forall (discharge bank [76,9,3] (hard := []) (by decide +kernel) .nil)

theorem g3483 : BadRow (SharedShell.row 6 4 true 4 3 3 [1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3484 : BadRow (SharedShell.row 6 4 false 4 3 3 [1,2,1]) :=
  row_of_forall (discharge bank [76,9,3] (hard := []) (by decide +kernel) .nil)

theorem g3485 : BadRow (SharedShell.row 6 4 true 4 3 3 [1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3486 : BadRow (SharedShell.row 6 4 false 4 3 3 [1,3,0]) :=
  row_of_forall (discharge bank [76,9,3] (hard := []) (by decide +kernel) .nil)

theorem g3487 : BadRow (SharedShell.row 6 4 true 4 3 3 [1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3488 : BadRow (SharedShell.row 6 4 false 4 3 3 [2,0,2]) :=
  row_of_forall (discharge bank [76,9,3,76,9,3] (hard := []) (by decide +kernel) .nil)

theorem g3489 : BadRow (SharedShell.row 6 4 true 4 3 3 [2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3490 : BadRow (SharedShell.row 6 4 false 4 3 3 [2,1,1]) :=
  row_of_forall (discharge bank [76,9,3,76,9,3] (hard := []) (by decide +kernel) .nil)

theorem g3491 : BadRow (SharedShell.row 6 4 true 4 3 3 [2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3492 : BadRow (SharedShell.row 6 4 false 4 3 3 [2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3493 : BadRow (SharedShell.row 6 4 true 4 3 3 [2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3494 : BadRow (SharedShell.row 6 4 false 4 3 3 [3,0,1]) :=
  row_of_forall (discharge bank [76,9,3,76,9,3] (hard := []) (by decide +kernel) .nil)

theorem g3495 : BadRow (SharedShell.row 6 4 true 4 3 3 [3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3496 : BadRow (SharedShell.row 6 4 false 4 3 3 [3,1,0]) :=
  row_of_forall (discharge bank [76,9,3] (hard := []) (by decide +kernel) .nil)

theorem g3497 : BadRow (SharedShell.row 6 4 true 4 3 3 [3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3498 : BadRow (SharedShell.row 6 4 false 4 3 3 [4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3499 : BadRow (SharedShell.row 6 4 true 4 3 3 [4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
