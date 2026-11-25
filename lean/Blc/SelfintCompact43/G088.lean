import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1408 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1409 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1410 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1411 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1412 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1413 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1414 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1415 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1416 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1417 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1418 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1419 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1420 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1421 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1422 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1423 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
