import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1360 : BadRow (SharedShell.row 5 5 false 5 3 5 [0,1,2,0,2]) :=
  row_of_forall (discharge bank [12,12,12,34,12,12,12,12,12,34,1,12,34,1,1,1,27,10,27,1] (hard := []) (by decide +kernel) .nil)

theorem g1361 : BadRow (SharedShell.row 5 5 true 5 3 5 [0,1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1362 : BadRow (SharedShell.row 5 5 false 5 3 5 [0,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1363 : BadRow (SharedShell.row 5 5 true 5 3 5 [0,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1364 : BadRow (SharedShell.row 5 5 false 5 3 5 [0,1,2,2,0]) :=
  row_of_forall (discharge bank [12,8,1,12,34,12,34,1,1,1,9,1,27] (hard := []) (by decide +kernel) .nil)

theorem g1365 : BadRow (SharedShell.row 5 5 true 5 3 5 [0,1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1366 : BadRow (SharedShell.row 5 5 false 5 3 5 [0,1,3,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,27,1,1,1,10,4,10,4] (hard := []) (by decide +kernel) .nil)

theorem g1367 : BadRow (SharedShell.row 5 5 true 5 3 5 [0,1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1368 : BadRow (SharedShell.row 5 5 false 5 3 5 [0,1,3,1,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,10,14,10,14] (hard := []) (by decide +kernel) .nil)

theorem g1369 : BadRow (SharedShell.row 5 5 true 5 3 5 [0,1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1370 : BadRow (SharedShell.row 5 5 false 5 3 5 [0,1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1371 : BadRow (SharedShell.row 5 5 true 5 3 5 [0,1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1372 : BadRow (SharedShell.row 5 5 false 5 3 5 [0,2,0,0,3]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1373 : BadRow (SharedShell.row 5 5 true 5 3 5 [0,2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1374 : BadRow (SharedShell.row 5 5 false 5 3 5 [0,2,0,1,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,34,10,12,12,34,12,34,10,12,12,12,12,1,1,17,17,17,10,10,10,10] (hard := []) (by decide +kernel) .nil)

theorem g1375 : BadRow (SharedShell.row 5 5 true 5 3 5 [0,2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1376 : BadRow (SharedShell.row 5 5 false 5 3 5 [0,2,0,2,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,34,34,12,34,12,12,34,11,12,12,12,12,9,1,17,10,17,10,4,10,4] (hard := []) (by decide +kernel) .nil)

theorem g1377 : BadRow (SharedShell.row 5 5 true 5 3 5 [0,2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1378 : BadRow (SharedShell.row 5 5 false 5 3 5 [0,2,0,3,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1379 : BadRow (SharedShell.row 5 5 true 5 3 5 [0,2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
