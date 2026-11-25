import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3460 : BadRow (SharedShell.row 6 4 false 4 2 5 [3,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3461 : BadRow (SharedShell.row 6 4 true 4 2 5 [3,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3462 : BadRow (SharedShell.row 6 4 false 4 2 5 [3,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3463 : BadRow (SharedShell.row 6 4 true 4 2 5 [3,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3464 : BadRow (SharedShell.row 6 4 false 4 2 5 [3,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3465 : BadRow (SharedShell.row 6 4 true 4 2 5 [3,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3466 : BadRow (SharedShell.row 6 4 false 4 2 5 [3,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3467 : BadRow (SharedShell.row 6 4 true 4 2 5 [3,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3468 : BadRow (SharedShell.row 6 4 false 4 2 5 [4,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3469 : BadRow (SharedShell.row 6 4 true 4 2 5 [4,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3470 : BadRow (SharedShell.row 6 4 false 4 3 3 [0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3471 : BadRow (SharedShell.row 6 4 true 4 3 3 [0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3472 : BadRow (SharedShell.row 6 4 false 4 3 3 [0,1,3]) :=
  row_of_forall (discharge bank [76,9,3,76,9,3] (hard := []) (by decide +kernel) .nil)

theorem g3473 : BadRow (SharedShell.row 6 4 true 4 3 3 [0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3474 : BadRow (SharedShell.row 6 4 false 4 3 3 [0,2,2]) :=
  row_of_forall (discharge bank [76,9,3,76,9,3] (hard := []) (by decide +kernel) .nil)

theorem g3475 : BadRow (SharedShell.row 6 4 true 4 3 3 [0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3476 : BadRow (SharedShell.row 6 4 false 4 3 3 [0,3,1]) :=
  row_of_forall (discharge bank [76,9,3,76,9,3] (hard := []) (by decide +kernel) .nil)

theorem g3477 : BadRow (SharedShell.row 6 4 true 4 3 3 [0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3478 : BadRow (SharedShell.row 6 4 false 4 3 3 [0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3479 : BadRow (SharedShell.row 6 4 true 4 3 3 [0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
