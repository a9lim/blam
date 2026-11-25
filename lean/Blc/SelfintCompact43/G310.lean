import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4960 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 4 [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4961 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 4 [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4962 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 4 [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4963 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 4 [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4964 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 4 [1,2,0,0]) :=
  row_of_forall (discharge bank [42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2] (hard := []) (by decide +kernel) .nil)

theorem g4965 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 4 [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4966 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 4 [2,0,0,1]) :=
  row_of_forall (discharge bank [42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2] (hard := []) (by decide +kernel) .nil)

theorem g4967 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 4 [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4968 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 4 [2,0,1,0]) :=
  row_of_forall (discharge bank [42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2] (hard := []) (by decide +kernel) .nil)

theorem g4969 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 4 [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4970 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 4 [2,1,0,0]) :=
  row_of_forall (discharge bank [42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2] (hard := []) (by decide +kernel) .nil)

theorem g4971 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 4 [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4972 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 4 [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4973 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 4 [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4974 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4975 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
