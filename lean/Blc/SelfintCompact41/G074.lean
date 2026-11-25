import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1480 : BadRow (SharedShell.row 5 5 false 5 3 5 [1,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1481 : BadRow (SharedShell.row 5 5 true 5 3 5 [1,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1482 : BadRow (SharedShell.row 5 5 false 5 3 5 [2,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1483 : BadRow (SharedShell.row 5 5 true 5 3 5 [2,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1484 : BadRow (SharedShell.row 5 5 false 5 3 5 [2,0,0,1,2]) :=
  row_of_forall (discharge bank [7,7,4,7,4,12,12,12,12,7,7,4,7,4,12,12,1,1,12,12,13,13,13,13,13,13,13,13,13,13] (hard := []) (by decide +kernel) .nil)

theorem g1485 : BadRow (SharedShell.row 5 5 true 5 3 5 [2,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1486 : BadRow (SharedShell.row 5 5 false 5 3 5 [2,0,0,2,1]) :=
  row_of_forall (discharge bank [7,7,4,7,4,12,12,12,12,7,7,4,7,4,12,12,8,12,1,12,12,13,13,13,13,13,12,1,12,13,13,13,13] (hard := []) (by decide +kernel) .nil)

theorem g1487 : BadRow (SharedShell.row 5 5 true 5 3 5 [2,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1488 : BadRow (SharedShell.row 5 5 false 5 3 5 [2,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1489 : BadRow (SharedShell.row 5 5 true 5 3 5 [2,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1490 : BadRow (SharedShell.row 5 5 false 5 3 5 [2,0,1,0,2]) :=
  row_of_forall (discharge bank [9,1,17,1,17,12,12,12,12,9,1,17,1,17,12,12,12,1,12,1,1,12,12,12,13,13,13,12,12,13,13,13,13,13,13,13,13] (hard := []) (by decide +kernel) .nil)

theorem g1491 : BadRow (SharedShell.row 5 5 true 5 3 5 [2,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1492 : BadRow (SharedShell.row 5 5 false 5 3 5 [2,0,1,1,1]) :=
  row_of_forall (discharge bank [12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1493 : BadRow (SharedShell.row 5 5 true 5 3 5 [2,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1494 : BadRow (SharedShell.row 5 5 false 5 3 5 [2,0,1,2,0]) :=
  row_of_forall (discharge bank [1,1,17,17,17,12,12,12,12,12,12,1,1,17,17,17,12,12,12,8,1,12,8,1,1,12,12,12,13,13,13,13,12,13,12,13,13,1,1,13,13,13,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1495 : BadRow (SharedShell.row 5 5 true 5 3 5 [2,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1496 : BadRow (SharedShell.row 5 5 false 5 3 5 [2,0,2,0,1]) :=
  row_of_forall (discharge bank [9,1,17,1,17,12,12,12,12,9,1,17,1,17,12,12,8,12,8,1,12,12,13,13,13,12,13,12,27,1,12,13,13,10,13,12,13] (hard := []) (by decide +kernel) .nil)

theorem g1497 : BadRow (SharedShell.row 5 5 true 5 3 5 [2,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1498 : BadRow (SharedShell.row 5 5 false 5 3 5 [2,0,2,1,0]) :=
  row_of_forall (discharge bank [1,1,17,17,17,12,12,12,12,12,12,1,1,17,17,17,12,12,8,8,1,8,1,12,12,13,13,13,13,1,13,12,13,27,1,13,11,13,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1499 : BadRow (SharedShell.row 5 5 true 5 3 5 [2,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
