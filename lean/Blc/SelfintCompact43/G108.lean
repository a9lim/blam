import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1728 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1729 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1730 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [2,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1731 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [2,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1732 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [2,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1733 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [2,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1734 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [2,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1735 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [2,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1736 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [3,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1737 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [3,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1738 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [3,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1739 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [3,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1740 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [3,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1741 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [3,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1742 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [3,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1743 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [3,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
