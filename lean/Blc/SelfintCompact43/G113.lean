import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1808 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,0,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1809 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,0,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1810 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,0,2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1811 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,0,2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1812 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,0,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1813 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,0,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1814 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,0,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1815 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,0,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1816 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,0,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1817 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,0,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1818 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,0,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1819 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,0,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1820 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,0,4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1821 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,0,4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1822 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,0,4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1823 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,0,4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
