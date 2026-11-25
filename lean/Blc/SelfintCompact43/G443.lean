import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7088 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [3,0,1,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,9,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7089 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [3,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7090 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [3,0,1,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7091 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [3,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7092 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [3,0,2,0,0]) :=
  row_of_forall (discharge bank [1,1,1,4,4,4,1,4,4,4,4,4,4,15,15,1,4,4,4,4,4,22,4,18,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7093 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [3,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7094 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [3,1,0,0,1]) :=
  row_of_forall (discharge bank [1,1,4,4,4,4,4,4,4,4,4,4,4,4,1,1,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7095 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [3,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7096 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [3,1,0,1,0]) :=
  row_of_forall (discharge bank [1,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7097 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [3,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7098 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [3,1,1,0,0]) :=
  row_of_forall (discharge bank [1,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7099 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [3,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7100 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [3,2,0,0,0]) :=
  row_of_forall (discharge bank [1,4,4,4,1,4,4,4,4,1,4,4,4,22,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7101 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [3,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7102 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [4,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7103 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [4,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
