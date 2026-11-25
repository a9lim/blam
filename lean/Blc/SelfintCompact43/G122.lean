import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1952 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1953 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1954 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1955 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1956 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1957 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1958 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1959 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1960 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1961 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1962 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1963 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1964 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1965 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1966 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1967 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
