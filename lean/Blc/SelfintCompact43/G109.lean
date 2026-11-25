import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1744 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [3,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1745 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [3,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1746 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [3,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1747 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [3,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1748 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [3,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1749 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [3,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1750 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [3,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1751 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [3,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1752 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [3,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1753 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [3,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1754 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [3,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1755 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [3,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1756 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [4,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1757 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [4,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1758 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [4,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1759 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [4,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
