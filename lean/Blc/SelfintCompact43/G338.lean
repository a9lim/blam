import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5408 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [3,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5409 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [3,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5410 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [3,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5411 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [3,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5412 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [4,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5413 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [4,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5414 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 3 [0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5415 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 3 [0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5416 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 3 [0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5417 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 3 [0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5418 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 3 [0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5419 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 3 [0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5420 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 3 [0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5421 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 3 [0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5422 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 3 [0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5423 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 3 [0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
