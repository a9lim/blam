import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1440 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1441 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1442 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1443 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1444 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1445 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1446 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1447 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1448 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1449 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1450 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1451 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1452 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1453 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1454 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [1,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1455 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [1,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
