import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1260 : BadRow (SharedShell.row 5 6 false 5 3 4 [2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1261 : BadRow (SharedShell.row 5 6 true 5 3 4 [2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1262 : BadRow (SharedShell.row 5 6 false 5 3 4 [2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1263 : BadRow (SharedShell.row 5 6 true 5 3 4 [2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1264 : BadRow (SharedShell.row 5 6 false 5 3 4 [2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1265 : BadRow (SharedShell.row 5 6 true 5 3 4 [2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1266 : BadRow (SharedShell.row 5 6 false 5 3 4 [2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1267 : BadRow (SharedShell.row 5 6 true 5 3 4 [2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1268 : BadRow (SharedShell.row 5 6 false 5 3 4 [2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1269 : BadRow (SharedShell.row 5 6 true 5 3 4 [2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1270 : BadRow (SharedShell.row 5 6 false 5 3 4 [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1271 : BadRow (SharedShell.row 5 6 true 5 3 4 [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1272 : BadRow (SharedShell.row 5 6 false 5 3 4 [2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1273 : BadRow (SharedShell.row 5 6 true 5 3 4 [2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1274 : BadRow (SharedShell.row 5 6 false 5 3 4 [2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1275 : BadRow (SharedShell.row 5 6 true 5 3 4 [2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1276 : BadRow (SharedShell.row 5 6 false 5 3 4 [2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1277 : BadRow (SharedShell.row 5 6 true 5 3 4 [2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1278 : BadRow (SharedShell.row 5 6 false 5 3 4 [2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1279 : BadRow (SharedShell.row 5 6 true 5 3 4 [2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
