import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5952 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [0,1,2,2]) :=
  row_of_forall (discharge bank [1,3,3,3,3,3,3,39,3,1,3,4,28,3,3,3,3,3,3,39,3,28,3,4,1,3,3,3,3,3,3,39,3,1,3,4] (hard := []) (by decide +kernel) .nil)

theorem g5953 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [0,1,2,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g5954 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5955 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5956 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5957 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5958 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5959 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5960 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [0,2,1,2]) :=
  row_of_forall (discharge bank [28,3,3,3,3,3,3,39,3,28,3,4,25,3,3,3,3,3,3,39,3,25,3,4,1,3,3,3,3,3,3,39,3,1,3,4] (hard := []) (by decide +kernel) .nil)

theorem g5961 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [0,2,1,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g5962 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [0,2,2,1]) :=
  row_of_forall (discharge bank [25,3,3,3,3,3,3,39,3,25,3,4,1,3,3,3,3,3,3,39,3,1,3,4,1,3,3,3,3,3,3,39,3,1,3,4] (hard := []) (by decide +kernel) .nil)

theorem g5963 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [0,2,2,1]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g5964 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5965 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5966 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5967 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
