import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5120 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [0,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5121 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [0,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5122 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5123 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5124 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [0,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5125 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [0,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5126 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5127 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5128 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [0,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5129 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [0,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5130 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5131 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5132 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5133 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5134 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [0,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5135 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [0,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
