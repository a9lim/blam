import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5264 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5265 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5266 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5267 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5268 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5269 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5270 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5271 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5272 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5273 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5274 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5275 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5276 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5277 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5278 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5279 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
