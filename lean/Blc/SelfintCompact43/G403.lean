import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6448 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6449 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6450 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6451 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6452 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6453 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6454 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6455 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6456 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6457 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6458 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6459 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6460 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6461 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6462 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6463 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
