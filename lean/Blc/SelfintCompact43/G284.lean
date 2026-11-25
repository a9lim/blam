import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4544 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4545 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4546 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,0,1,1,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4547 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4548 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,0,1,2,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,6,6,4,4,4,4,4,6,6] (hard := []) (by decide +kernel) .nil)

theorem g4549 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4550 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,0,1,3,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1] (hard := []) (by decide +kernel) .nil)

theorem g4551 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4552 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4553 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4554 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,0,2,0,3]) :=
  row_of_forall (discharge bank [1,1,6,6,1,1,6,6] (hard := []) (by decide +kernel) .nil)

theorem g4555 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4556 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,0,2,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,6,6,4,4,4,4,4,6,6] (hard := []) (by decide +kernel) .nil)

theorem g4557 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4558 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,0,2,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4559 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
