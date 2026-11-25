import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1504 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [2,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1505 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [2,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1506 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [2,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1507 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [2,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1508 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [2,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1509 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [2,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1510 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [2,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1511 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [2,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1512 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [2,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1513 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [2,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1514 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [2,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1515 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [2,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1516 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [2,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1517 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [2,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1518 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [2,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1519 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [2,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
