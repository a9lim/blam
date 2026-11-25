import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1460 : BadRow (SharedShell.row 5 5 false 5 3 5 [1,1,3,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,26] (hard := []) (by decide +kernel) .nil)

theorem g1461 : BadRow (SharedShell.row 5 5 true 5 3 5 [1,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1462 : BadRow (SharedShell.row 5 5 false 5 3 5 [1,2,0,0,2]) :=
  row_of_forall (discharge bank [12,1,12,34,34,34,34,12,10,12,12,12,34,1,34,34,34,1,34,1,12,34,1,26,4] (hard := []) (by decide +kernel) .nil)

theorem g1463 : BadRow (SharedShell.row 5 5 true 5 3 5 [1,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1464 : BadRow (SharedShell.row 5 5 false 5 3 5 [1,2,0,1,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,1,1,1,1,1,4,13,13] (hard := []) (by decide +kernel) .nil)

theorem g1465 : BadRow (SharedShell.row 5 5 true 5 3 5 [1,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1466 : BadRow (SharedShell.row 5 5 false 5 3 5 [1,2,0,2,0]) :=
  row_of_forall (discharge bank [12,8,1,12,34,34,1,34,12,34,12,34,10,12,34,12,34,12,34,34,1,34,1,34,1,26,4] (hard := []) (by decide +kernel) .nil)

theorem g1467 : BadRow (SharedShell.row 5 5 true 5 3 5 [1,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1468 : BadRow (SharedShell.row 5 5 false 5 3 5 [1,2,1,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,1,27,1,27,1,1,4,13] (hard := []) (by decide +kernel) .nil)

theorem g1469 : BadRow (SharedShell.row 5 5 true 5 3 5 [1,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1470 : BadRow (SharedShell.row 5 5 false 5 3 5 [1,2,1,1,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,9,1,27,1] (hard := []) (by decide +kernel) .nil)

theorem g1471 : BadRow (SharedShell.row 5 5 true 5 3 5 [1,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1472 : BadRow (SharedShell.row 5 5 false 5 3 5 [1,2,2,0,0]) :=
  row_of_forall (discharge bank [8,8,8,1,9,1,12,27,1,34,34,34,8,1,34] (hard := []) (by decide +kernel) .nil)

theorem g1473 : BadRow (SharedShell.row 5 5 true 5 3 5 [1,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1474 : BadRow (SharedShell.row 5 5 false 5 3 5 [1,3,0,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1475 : BadRow (SharedShell.row 5 5 true 5 3 5 [1,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1476 : BadRow (SharedShell.row 5 5 false 5 3 5 [1,3,0,1,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,10,14] (hard := []) (by decide +kernel) .nil)

theorem g1477 : BadRow (SharedShell.row 5 5 true 5 3 5 [1,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1478 : BadRow (SharedShell.row 5 5 false 5 3 5 [1,3,1,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,10] (hard := []) (by decide +kernel) .nil)

theorem g1479 : BadRow (SharedShell.row 5 5 true 5 3 5 [1,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
