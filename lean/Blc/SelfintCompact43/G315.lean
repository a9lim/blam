import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5040 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [2,1,0,0,0]) :=
  row_of_forall (discharge bank [1,4,4,4,1,4,4,4,4,1,4,4,4,15,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5041 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [2,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5042 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5043 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5044 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 3 [0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5045 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 3 [0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5046 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 3 [0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5047 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 3 [0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5048 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 3 [0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5049 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 3 [0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5050 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 3 [0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5051 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 3 [0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5052 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 3 [1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5053 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 3 [1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5054 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 3 [1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5055 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 3 [1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
