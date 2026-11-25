import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1616 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [0,0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1617 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [0,0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1618 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [0,0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1619 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [0,0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1620 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [0,0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1621 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [0,0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1622 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [0,1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1623 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [0,1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1624 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [0,1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1625 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [0,1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1626 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [0,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1627 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [0,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1628 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [0,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1629 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [0,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1630 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [0,1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1631 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [0,1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
