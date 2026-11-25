import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4048 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [2,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4049 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [2,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4050 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [2,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4051 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [2,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4052 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [2,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4053 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [2,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4054 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [3,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4055 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [3,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4056 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [3,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4057 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [3,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4058 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [3,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4059 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [3,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4060 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [3,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4061 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [3,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4062 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [3,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4063 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [3,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
