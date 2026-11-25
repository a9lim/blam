import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4528 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,5,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4529 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,5,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4530 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,6,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4531 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,6,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4532 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4533 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4534 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4535 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4536 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,0,0,2,3]) :=
  row_of_forall (discharge bank [1,1,6,6,1,1,6,6] (hard := []) (by decide +kernel) .nil)

theorem g4537 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4538 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,0,0,3,2]) :=
  row_of_forall (discharge bank [25,1,6,6,25,1,6,6] (hard := []) (by decide +kernel) .nil)

theorem g4539 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4540 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4541 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4542 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4543 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
