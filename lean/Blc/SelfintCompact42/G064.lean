import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1280 : BadRow (SharedShell.row 5 6 false 5 3 4 [3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1281 : BadRow (SharedShell.row 5 6 true 5 3 4 [3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1282 : BadRow (SharedShell.row 5 6 false 5 3 4 [3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1283 : BadRow (SharedShell.row 5 6 true 5 3 4 [3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1284 : BadRow (SharedShell.row 5 6 false 5 3 4 [3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1285 : BadRow (SharedShell.row 5 6 true 5 3 4 [3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1286 : BadRow (SharedShell.row 5 6 false 5 3 4 [3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1287 : BadRow (SharedShell.row 5 6 true 5 3 4 [3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1288 : BadRow (SharedShell.row 5 6 false 5 3 4 [3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1289 : BadRow (SharedShell.row 5 6 true 5 3 4 [3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1290 : BadRow (SharedShell.row 5 6 false 5 3 4 [3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1291 : BadRow (SharedShell.row 5 6 true 5 3 4 [3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1292 : BadRow (SharedShell.row 5 6 false 5 3 4 [4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1293 : BadRow (SharedShell.row 5 6 true 5 3 4 [4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1294 : BadRow (SharedShell.row 5 6 false 5 3 4 [4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1295 : BadRow (SharedShell.row 5 6 true 5 3 4 [4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1296 : BadRow (SharedShell.row 5 6 false 5 3 4 [4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1297 : BadRow (SharedShell.row 5 6 true 5 3 4 [4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1298 : BadRow (SharedShell.row 5 6 false 5 3 4 [5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1299 : BadRow (SharedShell.row 5 6 true 5 3 4 [5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
