import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4016 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [2,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4017 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [2,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4018 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [2,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4019 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [2,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4020 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [2,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4021 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [2,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4022 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [2,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4023 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [2,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4024 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [2,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4025 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [2,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4026 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [2,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4027 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [2,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4028 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [2,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4029 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [2,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4030 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [2,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4031 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [2,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
