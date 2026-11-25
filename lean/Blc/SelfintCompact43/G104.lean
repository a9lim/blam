import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1664 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [1,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1665 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [1,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1666 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [1,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1667 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [1,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1668 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [1,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1669 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [1,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1670 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [1,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1671 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [1,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1672 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [1,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1673 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [1,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1674 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [1,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1675 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [1,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1676 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [1,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1677 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [1,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1678 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [1,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1679 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [1,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
