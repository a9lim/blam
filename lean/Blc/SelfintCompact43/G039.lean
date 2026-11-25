import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g624 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g625 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g626 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g627 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g628 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g629 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g630 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g631 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g632 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g633 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g634 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g635 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g636 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g637 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g638 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g639 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
