import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6016 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [2,1,0,2]) :=
  row_of_forall (discharge bank [17,3,3,3,3,3,3,6,3,17,3,4,1,3,3,3,3,3,3,6,3,1,3,4,7,3,3,3,3,3,3,6,3,7,3,4,7,3,3,3,3,3,3,6,3,7,3,4,7,3,3,3,3,3,3,6,3,7,3,4] (hard := []) (by decide +kernel) .nil)

theorem g6017 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [2,1,0,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6018 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6019 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6020 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [2,1,2,0]) :=
  row_of_forall (discharge bank [17,3,3,3,3,3,3,6,3,17,3,4,17,3,3,3,3,3,3,6,3,17,3,4,7,3,3,3,3,3,3,6,3,7,3,4] (hard := []) (by decide +kernel) .nil)

theorem g6021 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [2,1,2,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6022 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [2,2,0,1]) :=
  row_of_forall (discharge bank [17,3,3,3,3,3,3,6,3,17,3,4,17,3,3,3,3,3,3,6,3,17,3,4,36,3,3,3,3,3,3,6,36,36,3,4,9,3,3,3,3,3,3,6,3,9,3,4,36,3,3,3,3,3,3,6,36,36,3,4] (hard := []) (by decide +kernel) .nil)

theorem g6023 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [2,2,0,1]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6024 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [2,2,1,0]) :=
  row_of_forall (discharge bank [17,3,3,3,3,3,3,6,3,17,3,4,17,3,3,3,3,3,3,6,3,17,3,4,36,3,3,3,3,3,3,6,36,36,3,4] (hard := []) (by decide +kernel) .nil)

theorem g6025 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [2,2,1,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6026 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6027 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6028 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6029 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6030 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6031 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
