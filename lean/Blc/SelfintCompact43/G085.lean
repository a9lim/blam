import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1360 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1361 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1362 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1363 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1364 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1365 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1366 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1367 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1368 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1369 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1370 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1371 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1372 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1373 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1374 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1375 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
