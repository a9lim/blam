import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5440 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 3 [3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5441 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 3 [3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5442 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 3 [4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5443 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 3 [4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5444 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5445 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5446 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [0,0,1,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,3,3,3,7,3,3,3,17,3,3,3,3,3,1,3,3,3,1,3,3] (hard := []) (by decide +kernel) .nil)

theorem g5447 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [0,0,1,3]) :=
  row_of_forall (discharge bank [4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,7,41,1,5,6,5,7,5,1,14,4,16,25,1,1,20,6,1,1,1,1,19,4,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g5448 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [0,0,2,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,3,3,3,1,3,3,3,1,3,3,3,3,3,1,3,3,3,1,3,3] (hard := []) (by decide +kernel) .nil)

theorem g5449 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [0,0,2,2]) :=
  row_of_forall (discharge bank [4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,7,41,1,4,4,4,7,41,1,20,6,1,1,14,1,19,4,1,1,1,1,20,6,1,1,14,1,19,4,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g5450 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [0,0,3,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,3,3,3,7,3,3,3,17,3,3,3,3,3,1,3,3,3,1,3,3] (hard := []) (by decide +kernel) .nil)

theorem g5451 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [0,0,3,1]) :=
  row_of_forall (discharge bank [4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,7,41,1,5,6,5,7,5,1,14,4,16,25,1,1,20,6,1,1,14,1,19,4,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g5452 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5453 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5454 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [0,1,0,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,3,3,3,7,3,3,3,17,3,3,3,3,3,7,3,3,3,17,3,3,3,3,3,1,3,3,3,14,3,3,3,3,3,17,3,3,3,14,3,3] (hard := []) (by decide +kernel) .nil)

theorem g5455 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [0,1,0,3]) :=
  row_of_forall (discharge bank [4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,7,41,1,4,4,4,7,41,1,5,6,5,7,5,1,18,4,16,25,1,1,5,6,5,7,5,1,8,4,16,25,1,1,22,6,19,14,14,1,23,4,1,1,1,1,22,6,19,14,1,1,1,4,23,1,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
