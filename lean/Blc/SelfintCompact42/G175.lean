import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3500 : BadRow (SharedShell.row 6 4 false 4 3 4 [0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3501 : BadRow (SharedShell.row 6 4 true 4 3 4 [0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3502 : BadRow (SharedShell.row 6 4 false 4 3 4 [0,0,1,3]) :=
  row_of_forall (discharge bank [9,9,9,29,9,9,9,29,9,9,9,29,9,9,9,29,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,5,5,10,10,4,10,5,10,9,12,10,10,4,10,12,10,9] (hard := []) (by decide +kernel) .nil)

theorem g3503 : BadRow (SharedShell.row 6 4 true 4 3 4 [0,0,1,3]) :=
  row_of_forall (discharge bank [9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,5,8,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3504 : BadRow (SharedShell.row 6 4 false 4 3 4 [0,0,2,2]) :=
  row_of_forall (discharge bank [9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,5,9,9,9,5,20,10,10,4,10,20,10,9,15,10,10,4,10,15,10,9] (hard := []) (by decide +kernel) .nil)

theorem g3505 : BadRow (SharedShell.row 6 4 true 4 3 4 [0,0,2,2]) :=
  row_of_forall (discharge bank [9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3506 : BadRow (SharedShell.row 6 4 false 4 3 4 [0,0,3,1]) :=
  row_of_forall (discharge bank [9,9,9,29,9,9,9,29,9,9,9,29,9,9,9,29,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,5,5,10,10,4,10,5,10,9,41,10,10,4,10,41,10,9] (hard := []) (by decide +kernel) .nil)

theorem g3507 : BadRow (SharedShell.row 6 4 true 4 3 4 [0,0,3,1]) :=
  row_of_forall (discharge bank [9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,5,8,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3508 : BadRow (SharedShell.row 6 4 false 4 3 4 [0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3509 : BadRow (SharedShell.row 6 4 true 4 3 4 [0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3510 : BadRow (SharedShell.row 6 4 false 4 3 4 [0,1,0,3]) :=
  row_of_forall (discharge bank [9,9,9,29,9,9,9,29,9,9,9,29,9,9,9,29,9,9,9,29,9,9,9,29,9,9,9,29,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,5,9,9,9,5,5,10,10,4,10,5,10,9,5,10,10,4,10,5,10,9,43,10,10,4,10,43,10,9,42,10,10,4,10,42,10,9] (hard := []) (by decide +kernel) .nil)

theorem g3511 : BadRow (SharedShell.row 6 4 true 4 3 4 [0,1,0,3]) :=
  row_of_forall (discharge bank [9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,5,8,1,1,1,1,5,8,1,1,1,1,12,1,1,1,1,1,12,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3512 : BadRow (SharedShell.row 6 4 false 4 3 4 [0,1,1,2]) :=
  row_of_forall (discharge bank [2,2,2,4,2,2,2,4,2,2,2,4,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,5,20,10,10,4,10,20,10,9] (hard := []) (by decide +kernel) .nil)

theorem g3513 : BadRow (SharedShell.row 6 4 true 4 3 4 [0,1,1,2]) :=
  row_of_forall (discharge bank [2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,20,27,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3514 : BadRow (SharedShell.row 6 4 false 4 3 4 [0,1,2,1]) :=
  row_of_forall (discharge bank [2,2,2,4,2,2,2,4,2,2,2,4,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,5,15,10,10,4,10,15,10,9] (hard := []) (by decide +kernel) .nil)

theorem g3515 : BadRow (SharedShell.row 6 4 true 4 3 4 [0,1,2,1]) :=
  row_of_forall (discharge bank [2,6,1,1,1,2,6,1,1,1,2,6,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,15,23,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3516 : BadRow (SharedShell.row 6 4 false 4 3 4 [0,1,3,0]) :=
  row_of_forall (discharge bank [9,9,9,29,9,9,9,29,9,9,9,29,9,9,9,29,9,9,9,4,5,10,10,4,10,5,10,9] (hard := []) (by decide +kernel) .nil)

theorem g3517 : BadRow (SharedShell.row 6 4 true 4 3 4 [0,1,3,0]) :=
  row_of_forall (discharge bank [9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,5,8,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3518 : BadRow (SharedShell.row 6 4 false 4 3 4 [0,2,0,2]) :=
  row_of_forall (discharge bank [9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,4,9,9,9,5,9,9,9,5,20,10,10,4,10,20,10,9,18,10,10,4,10,18,10,9] (hard := []) (by decide +kernel) .nil)

theorem g3519 : BadRow (SharedShell.row 6 4 true 4 3 4 [0,2,0,2]) :=
  row_of_forall (discharge bank [9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,9,32,1,1,1,12,1,1,1,1,1,18,16,1,1,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
