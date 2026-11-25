import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4432 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,1,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4433 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,1,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4434 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,1,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4435 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,1,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4436 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4437 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4438 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,1,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4439 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,1,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4440 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,1,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4441 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,1,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4442 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,1,2,0,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g4443 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,1,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4444 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4445 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4446 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4447 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
