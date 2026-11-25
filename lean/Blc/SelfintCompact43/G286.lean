import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4576 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,1,0,1,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,6,6,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,6,6] (hard := []) (by decide +kernel) .nil)

theorem g4577 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4578 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,1,0,2,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,6,6,4,4,4,4,4,6,6] (hard := []) (by decide +kernel) .nil)

theorem g4579 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4580 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,1,0,3,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,25,1,6,6,1,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,25,1,6,6,1,1] (hard := []) (by decide +kernel) .nil)

theorem g4581 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4582 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4583 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4584 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,1,1,0,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,6,6,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,6,6] (hard := []) (by decide +kernel) .nil)

theorem g4585 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4586 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4587 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4588 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4589 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4590 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,1,1,3,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,6,6,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,6,6] (hard := []) (by decide +kernel) .nil)

theorem g4591 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
