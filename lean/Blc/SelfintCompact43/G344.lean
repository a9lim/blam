import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5504 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5505 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5506 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [3,0,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5507 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [3,0,0,1]) :=
  row_of_forall (discharge bank [4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1] (hard := []) (by decide +kernel) .nil)

theorem g5508 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [3,0,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5509 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [3,0,1,0]) :=
  row_of_forall (discharge bank [4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1] (hard := []) (by decide +kernel) .nil)

theorem g5510 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [3,1,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5511 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [3,1,0,0]) :=
  row_of_forall (discharge bank [4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1] (hard := []) (by decide +kernel) .nil)

theorem g5512 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5513 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5514 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5515 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5516 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,0,0,1,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,3,5] (hard := []) (by decide +kernel) .nil)

theorem g5517 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5518 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,0,0,2,2]) :=
  row_of_forall (discharge bank [4,14,14,4,4,4,3,5] (hard := []) (by decide +kernel) .nil)

theorem g5519 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
