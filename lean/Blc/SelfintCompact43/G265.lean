import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4240 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,1,4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4241 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,1,4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4242 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,1,4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4243 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,1,4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4244 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,1,4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4245 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,1,4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4246 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,1,5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4247 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,1,5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4248 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,1,5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4249 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,1,5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4250 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,1,6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4251 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,1,6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4252 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,2,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4253 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,2,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4254 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,2,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4255 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,2,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
