import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1856 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1857 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1858 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1859 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1860 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,1,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1861 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,1,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1862 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,1,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1863 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,1,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1864 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,1,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1865 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,1,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1866 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,1,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1867 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,1,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1868 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,1,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1869 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,1,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1870 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,1,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1871 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,1,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
