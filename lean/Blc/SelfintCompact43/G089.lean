import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1424 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1425 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1426 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1427 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1428 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1429 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1430 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1431 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1432 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1433 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1434 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1435 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1436 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1437 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1438 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1439 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
