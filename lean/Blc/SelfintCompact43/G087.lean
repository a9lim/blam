import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1392 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1393 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1394 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1395 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1396 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1397 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1398 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1399 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1400 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1401 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1402 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1403 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1404 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1405 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1406 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1407 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
