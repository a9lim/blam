import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1696 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [1,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1697 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [1,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1698 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [1,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1699 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [1,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1700 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [1,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1701 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [1,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1702 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [1,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1703 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [1,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1704 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [1,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1705 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [1,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1706 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [2,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1707 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [2,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1708 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [2,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1709 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [2,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1710 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1711 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
