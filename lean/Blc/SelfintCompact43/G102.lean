import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1632 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [0,1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1633 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [0,1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1634 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [0,2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1635 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [0,2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1636 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [0,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1637 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [0,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1638 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1639 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1640 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [0,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1641 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [0,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1642 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [0,2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1643 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [0,2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1644 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [0,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1645 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [0,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1646 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [0,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1647 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [0,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
