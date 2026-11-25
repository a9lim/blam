import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1840 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,1,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1841 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,1,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1842 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,1,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1843 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,1,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1844 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,1,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1845 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,1,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1846 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,1,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1847 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,1,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1848 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1849 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1850 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,1,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1851 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,1,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1852 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,1,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1853 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,1,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1854 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,1,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1855 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,1,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
