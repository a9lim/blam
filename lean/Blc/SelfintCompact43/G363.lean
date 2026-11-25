import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5808 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5809 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5810 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5811 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5812 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5813 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5814 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5815 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5816 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5817 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5818 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5819 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5820 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5821 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5822 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5823 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
