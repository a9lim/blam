import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1648 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [0,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1649 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [0,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1650 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [0,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1651 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [0,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1652 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [0,4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1653 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [0,4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1654 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [0,4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1655 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [0,4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1656 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [0,4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1657 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [0,4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1658 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [0,5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1659 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [0,5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1660 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [0,5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1661 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [0,5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1662 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [0,6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1663 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [0,6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
