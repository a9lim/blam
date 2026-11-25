import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1380 : BadRow (SharedShell.row 5 5 false 5 3 5 [0,2,1,0,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,10,12,12,12,12,34,34,10,34,10,12,12,12,12,1,1,17,17,17,10,10,10,10] (hard := []) (by decide +kernel) .nil)

theorem g1381 : BadRow (SharedShell.row 5 5 true 5 3 5 [0,2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1382 : BadRow (SharedShell.row 5 5 false 5 3 5 [0,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1383 : BadRow (SharedShell.row 5 5 true 5 3 5 [0,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1384 : BadRow (SharedShell.row 5 5 false 5 3 5 [0,2,1,2,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,34,10,12,34,12,34,10,34,10,12,12,12,12,9,1,17,10,10,10,10] (hard := []) (by decide +kernel) .nil)

theorem g1385 : BadRow (SharedShell.row 5 5 true 5 3 5 [0,2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1386 : BadRow (SharedShell.row 5 5 false 5 3 5 [0,2,2,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,34,12,8,54,12,34,11,11,12,12,12,12,7,7,4,14,4,10,4,10,4] (hard := []) (by decide +kernel) .nil)

theorem g1387 : BadRow (SharedShell.row 5 5 true 5 3 5 [0,2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1388 : BadRow (SharedShell.row 5 5 false 5 3 5 [0,2,2,1,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,34,34,11,11,34,11,11,12,12,12,12,7,7,4,10,10,10,10] (hard := []) (by decide +kernel) .nil)

theorem g1389 : BadRow (SharedShell.row 5 5 true 5 3 5 [0,2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1390 : BadRow (SharedShell.row 5 5 false 5 3 5 [0,2,3,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1391 : BadRow (SharedShell.row 5 5 true 5 3 5 [0,2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1392 : BadRow (SharedShell.row 5 5 false 5 3 5 [0,3,0,0,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1393 : BadRow (SharedShell.row 5 5 true 5 3 5 [0,3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1394 : BadRow (SharedShell.row 5 5 false 5 3 5 [0,3,0,1,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,1,1] (hard := []) (by decide +kernel) .nil)

theorem g1395 : BadRow (SharedShell.row 5 5 true 5 3 5 [0,3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1396 : BadRow (SharedShell.row 5 5 false 5 3 5 [0,3,0,2,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1397 : BadRow (SharedShell.row 5 5 true 5 3 5 [0,3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1398 : BadRow (SharedShell.row 5 5 false 5 3 5 [0,3,1,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,1] (hard := []) (by decide +kernel) .nil)

theorem g1399 : BadRow (SharedShell.row 5 5 true 5 3 5 [0,3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
