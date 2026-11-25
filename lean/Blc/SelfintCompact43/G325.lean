import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5200 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 3 [3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5201 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 3 [3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5202 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 3 [4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5203 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 3 [4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5204 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5205 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5206 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5207 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5208 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5209 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5210 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5211 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5212 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5213 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5214 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5215 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
