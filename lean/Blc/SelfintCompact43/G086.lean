import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1376 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1377 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1378 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1379 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1380 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1381 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1382 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1383 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1384 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1385 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1386 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1387 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1388 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1389 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1390 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1391 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
