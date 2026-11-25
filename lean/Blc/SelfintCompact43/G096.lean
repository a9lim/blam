import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1536 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [3,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1537 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [3,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1538 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [3,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1539 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [3,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1540 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [3,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1541 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [3,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1542 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [4,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1543 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [4,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1544 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [4,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1545 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [4,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1546 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [4,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1547 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [4,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1548 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [4,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1549 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [4,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1550 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [5,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1551 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [5,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
