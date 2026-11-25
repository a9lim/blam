import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4064 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [3,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4065 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [3,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4066 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [3,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4067 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [3,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4068 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [3,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4069 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [3,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4070 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [3,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4071 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [3,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4072 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [3,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4073 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [3,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4074 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [3,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4075 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [3,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4076 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [3,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4077 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [3,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4078 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [3,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4079 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [3,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
