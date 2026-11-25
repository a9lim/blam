import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6048 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6049 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6050 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6051 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6052 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6053 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6054 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6055 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6056 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6057 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6058 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6059 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6060 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6061 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6062 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6063 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
