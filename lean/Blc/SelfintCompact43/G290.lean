import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4640 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4641 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4642 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4643 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4644 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4645 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4646 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4647 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4648 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4649 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4650 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4651 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4652 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4653 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4654 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4655 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
