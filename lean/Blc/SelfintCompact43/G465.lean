import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7440 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [0,0,1,0,2]) :=
  row_of_forall (discharge bank [3,3,2,2,2,2,3,3] (hard := []) (by decide +kernel) .nil)

theorem g7441 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [0,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7442 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7443 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7444 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [0,0,1,2,0]) :=
  row_of_forall (discharge bank [3,3,2,2,3,3,2] (hard := []) (by decide +kernel) .nil)

theorem g7445 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [0,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7446 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [0,0,2,0,1]) :=
  row_of_forall (discharge bank [3,3,2,2,2,2,3,3] (hard := []) (by decide +kernel) .nil)

theorem g7447 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [0,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7448 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [0,0,2,1,0]) :=
  row_of_forall (discharge bank [3,3,2,2,3,3,2] (hard := []) (by decide +kernel) .nil)

theorem g7449 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [0,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7450 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7451 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7452 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [0,1,0,0,2]) :=
  row_of_forall (discharge bank [3,3,3,3,3] (hard := []) (by decide +kernel) .nil)

theorem g7453 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [0,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7454 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7455 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
