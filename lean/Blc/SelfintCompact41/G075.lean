import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1500 : BadRow (SharedShell.row 5 5 false 5 3 5 [2,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1501 : BadRow (SharedShell.row 5 5 true 5 3 5 [2,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1502 : BadRow (SharedShell.row 5 5 false 5 3 5 [2,1,0,0,2]) :=
  row_of_forall (discharge bank [9,1,27,1,1,9,1,27,1,1,12,1,12,1,1,1,1,12,13,12,12,13,13,13,13,13,13,13,13,13,13] (hard := []) (by decide +kernel) .nil)

theorem g1503 : BadRow (SharedShell.row 5 5 true 5 3 5 [2,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1504 : BadRow (SharedShell.row 5 5 false 5 3 5 [2,1,0,1,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1505 : BadRow (SharedShell.row 5 5 true 5 3 5 [2,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1506 : BadRow (SharedShell.row 5 5 false 5 3 5 [2,1,0,2,0]) :=
  row_of_forall (discharge bank [1,27,1,27,1,12,12,1,27,1,27,1,12,8,1,12,8,8,1,1,12,1,12,13,13,12,13,12,13,13,13,1,1,13,13,13,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1507 : BadRow (SharedShell.row 5 5 true 5 3 5 [2,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1508 : BadRow (SharedShell.row 5 5 false 5 3 5 [2,1,1,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1509 : BadRow (SharedShell.row 5 5 true 5 3 5 [2,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1510 : BadRow (SharedShell.row 5 5 false 5 3 5 [2,1,1,1,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1511 : BadRow (SharedShell.row 5 5 true 5 3 5 [2,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1512 : BadRow (SharedShell.row 5 5 false 5 3 5 [2,1,2,0,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,12,12,1,1,1,1,1,8,8,8,1,8,1,12,8,1,13,13,13,27,1,13,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1513 : BadRow (SharedShell.row 5 5 true 5 3 5 [2,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1514 : BadRow (SharedShell.row 5 5 false 5 3 5 [2,2,0,0,1]) :=
  row_of_forall (discharge bank [9,1,27,1,1,9,1,27,1,1,6,6,6,6,6,4,12,17,4,17,17,17,4,7,4,12,7,4] (hard := []) (by decide +kernel) .nil)

theorem g1515 : BadRow (SharedShell.row 5 5 true 5 3 5 [2,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1516 : BadRow (SharedShell.row 5 5 false 5 3 5 [2,2,0,1,0]) :=
  row_of_forall (discharge bank [1,27,1,27,1,12,12,1,27,1,27,1,6,6,6,6,6,6,6,4,4,17,4,12,17,4,17,17,4,7,4,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1517 : BadRow (SharedShell.row 5 5 true 5 3 5 [2,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1518 : BadRow (SharedShell.row 5 5 false 5 3 5 [2,2,1,0,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,12,12,1,1,1,1,1,6,6,6,6,6,6,6,6,4,4,4,17,17,4,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1519 : BadRow (SharedShell.row 5 5 true 5 3 5 [2,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
