import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1300 : BadRow (SharedShell.row 5 5 false 5 3 5 [0,0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1301 : BadRow (SharedShell.row 5 5 true 5 3 5 [0,0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1302 : BadRow (SharedShell.row 5 5 false 5 3 5 [0,0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1303 : BadRow (SharedShell.row 5 5 true 5 3 5 [0,0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1304 : BadRow (SharedShell.row 5 5 false 5 3 5 [0,0,0,2,3]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,1,1] (hard := []) (by decide +kernel) .nil)

theorem g1305 : BadRow (SharedShell.row 5 5 true 5 3 5 [0,0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1306 : BadRow (SharedShell.row 5 5 false 5 3 5 [0,0,0,3,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,1,1] (hard := []) (by decide +kernel) .nil)

theorem g1307 : BadRow (SharedShell.row 5 5 true 5 3 5 [0,0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1308 : BadRow (SharedShell.row 5 5 false 5 3 5 [0,0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1309 : BadRow (SharedShell.row 5 5 true 5 3 5 [0,0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1310 : BadRow (SharedShell.row 5 5 false 5 3 5 [0,0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1311 : BadRow (SharedShell.row 5 5 true 5 3 5 [0,0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1312 : BadRow (SharedShell.row 5 5 false 5 3 5 [0,0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1313 : BadRow (SharedShell.row 5 5 true 5 3 5 [0,0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1314 : BadRow (SharedShell.row 5 5 false 5 3 5 [0,0,1,1,3]) :=
  row_of_forall (discharge bank [12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1315 : BadRow (SharedShell.row 5 5 true 5 3 5 [0,0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1316 : BadRow (SharedShell.row 5 5 false 5 3 5 [0,0,1,2,2]) :=
  row_of_forall (discharge bank [12,12,11,12,12,10,11,10,10,10] (hard := []) (by decide +kernel) .nil)

theorem g1317 : BadRow (SharedShell.row 5 5 true 5 3 5 [0,0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1318 : BadRow (SharedShell.row 5 5 false 5 3 5 [0,0,1,3,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,1] (hard := []) (by decide +kernel) .nil)

theorem g1319 : BadRow (SharedShell.row 5 5 true 5 3 5 [0,0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
