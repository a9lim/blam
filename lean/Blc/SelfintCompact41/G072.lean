import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1440 : BadRow (SharedShell.row 5 5 false 5 3 5 [1,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1441 : BadRow (SharedShell.row 5 5 true 5 3 5 [1,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1442 : BadRow (SharedShell.row 5 5 false 5 3 5 [1,1,0,0,3]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1] (hard := []) (by decide +kernel) .nil)

theorem g1443 : BadRow (SharedShell.row 5 5 true 5 3 5 [1,1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1444 : BadRow (SharedShell.row 5 5 false 5 3 5 [1,1,0,1,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,9,1,17,1,17,12,1,6,4] (hard := []) (by decide +kernel) .nil)

theorem g1445 : BadRow (SharedShell.row 5 5 true 5 3 5 [1,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1446 : BadRow (SharedShell.row 5 5 false 5 3 5 [1,1,0,2,1]) :=
  row_of_forall (discharge bank [12,12,1,1,17,17,17,12,6,4,13,13] (hard := []) (by decide +kernel) .nil)

theorem g1447 : BadRow (SharedShell.row 5 5 true 5 3 5 [1,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1448 : BadRow (SharedShell.row 5 5 false 5 3 5 [1,1,0,3,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,10,10] (hard := []) (by decide +kernel) .nil)

theorem g1449 : BadRow (SharedShell.row 5 5 true 5 3 5 [1,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1450 : BadRow (SharedShell.row 5 5 false 5 3 5 [1,1,1,0,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,7,7,4,14,4,12,12,1,6,6,4,4] (hard := []) (by decide +kernel) .nil)

theorem g1451 : BadRow (SharedShell.row 5 5 true 5 3 5 [1,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1452 : BadRow (SharedShell.row 5 5 false 5 3 5 [1,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1453 : BadRow (SharedShell.row 5 5 true 5 3 5 [1,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1454 : BadRow (SharedShell.row 5 5 false 5 3 5 [1,1,1,2,0]) :=
  row_of_forall (discharge bank [7,7,4,12,6,4] (hard := []) (by decide +kernel) .nil)

theorem g1455 : BadRow (SharedShell.row 5 5 true 5 3 5 [1,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1456 : BadRow (SharedShell.row 5 5 false 5 3 5 [1,1,2,0,1]) :=
  row_of_forall (discharge bank [12,12,12,1,1,17,17,17,12,12,1,6,6,4,4,13] (hard := []) (by decide +kernel) .nil)

theorem g1457 : BadRow (SharedShell.row 5 5 true 5 3 5 [1,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1458 : BadRow (SharedShell.row 5 5 false 5 3 5 [1,1,2,1,0]) :=
  row_of_forall (discharge bank [12,12,12,9,1,17,12,1,6,4] (hard := []) (by decide +kernel) .nil)

theorem g1459 : BadRow (SharedShell.row 5 5 true 5 3 5 [1,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
