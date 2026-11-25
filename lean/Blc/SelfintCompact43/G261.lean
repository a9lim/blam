import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4176 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,4,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4177 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,4,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4178 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,4,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4179 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,4,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4180 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,4,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4181 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,4,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4182 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,4,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4183 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,4,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4184 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,5,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4185 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,5,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4186 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,5,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4187 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,5,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4188 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,5,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4189 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,5,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4190 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,6,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4191 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,6,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
