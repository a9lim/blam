import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1872 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,1,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1873 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,1,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1874 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,2,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1875 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,2,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1876 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,2,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1877 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,2,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1878 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1879 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1880 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,2,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1881 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,2,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1882 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,2,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1883 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,2,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1884 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,2,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1885 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,2,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1886 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1887 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
