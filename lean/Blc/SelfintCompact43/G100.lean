import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1600 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 3 [4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1601 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 3 [4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1602 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 3 [5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1603 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 3 [5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1604 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 3 [5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1605 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 3 [5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1606 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 3 [6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1607 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 3 [6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1608 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [0,0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1609 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [0,0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1610 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [0,0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1611 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [0,0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1612 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [0,0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1613 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [0,0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1614 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [0,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1615 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [0,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
