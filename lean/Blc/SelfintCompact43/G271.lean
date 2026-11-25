import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4336 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,4,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4337 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,4,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4338 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,4,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4339 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,4,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4340 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,4,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4341 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,4,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4342 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,4,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4343 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,4,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4344 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,5,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4345 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,5,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4346 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,5,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4347 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,5,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4348 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,5,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4349 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,5,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4350 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,5,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4351 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,5,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
