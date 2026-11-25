import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4352 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,5,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4353 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,5,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4354 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,5,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4355 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,5,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4356 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,6,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4357 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,6,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4358 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,6,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4359 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,6,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4360 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,6,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4361 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,6,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4362 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,7,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4363 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,7,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4364 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,0,0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4365 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,0,0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4366 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,0,0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4367 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,0,0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
