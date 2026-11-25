import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5088 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 4 [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5089 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 4 [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5090 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 4 [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5091 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 4 [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5092 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 4 [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5093 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 4 [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5094 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 4 [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5095 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 4 [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5096 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 4 [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5097 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 4 [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5098 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 4 [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5099 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 4 [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5100 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 4 [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5101 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 4 [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5102 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 4 [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5103 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 4 [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
