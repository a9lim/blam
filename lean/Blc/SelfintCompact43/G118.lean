import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1888 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1889 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1890 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,2,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1891 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,2,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1892 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1893 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1894 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1895 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1896 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1897 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1898 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,2,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1899 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,2,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1900 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,2,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1901 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,2,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1902 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,2,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1903 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,2,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
