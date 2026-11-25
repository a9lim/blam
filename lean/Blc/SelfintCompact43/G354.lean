import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5664 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 3 [1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5665 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 3 [1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5666 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 3 [1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5667 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 3 [1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5668 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 3 [1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5669 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 3 [1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5670 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 3 [1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5671 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 3 [1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5672 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 3 [2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5673 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 3 [2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5674 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 3 [2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5675 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 3 [2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5676 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 3 [2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5677 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 3 [2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5678 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 3 [3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5679 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 3 [3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
