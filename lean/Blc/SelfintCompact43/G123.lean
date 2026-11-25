import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1968 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1969 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1970 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1971 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1972 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1973 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1974 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1975 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1976 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1977 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1978 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1979 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1980 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1981 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1982 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1983 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
