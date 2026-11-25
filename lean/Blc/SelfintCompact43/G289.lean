import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4624 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4625 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4626 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,3,0,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,55,36,4,4,4,4,4,4,4,4,4,4,4,4,4,4,55,36] (hard := []) (by decide +kernel) .nil)

theorem g4627 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4628 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,3,0,2,0]) :=
  row_of_forall (discharge bank [55,36,55,36] (hard := []) (by decide +kernel) .nil)

theorem g4629 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4630 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,3,1,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,9,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,9] (hard := []) (by decide +kernel) .nil)

theorem g4631 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4632 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,3,1,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4633 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4634 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,3,2,0,0]) :=
  row_of_forall (discharge bank [1,1] (hard := []) (by decide +kernel) .nil)

theorem g4635 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4636 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4637 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4638 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4639 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
