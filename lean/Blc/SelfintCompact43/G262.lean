import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4192 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,6,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4193 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,6,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4194 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,7,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4195 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,7,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4196 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,1,0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4197 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,1,0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4198 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,1,0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4199 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,1,0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4200 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,1,0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4201 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,1,0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4202 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,1,0,3,3]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g4203 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,1,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4204 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,1,0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4205 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,1,0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4206 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,1,0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4207 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,1,0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
