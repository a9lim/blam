import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5168 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [2,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5169 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [2,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5170 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [2,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5171 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [2,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5172 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5173 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5174 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 3 [0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5175 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 3 [0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5176 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 3 [0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5177 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 3 [0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5178 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 3 [0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5179 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 3 [0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5180 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 3 [0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5181 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 3 [0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5182 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 3 [0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5183 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 3 [0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
