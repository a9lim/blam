import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1792 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,0,1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1793 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,0,1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1794 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,0,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1795 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,0,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1796 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,0,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1797 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,0,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1798 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,0,1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1799 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,0,1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1800 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,0,1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1801 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,0,1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1802 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,0,2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1803 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,0,2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1804 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,0,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1805 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,0,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1806 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1807 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
