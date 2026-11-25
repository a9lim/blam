import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5792 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5793 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5794 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5795 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5796 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5797 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5798 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5799 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5800 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5801 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5802 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5803 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5804 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5805 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5806 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5807 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
