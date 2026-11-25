import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g560 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 4 [1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g561 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 4 [1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g562 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 4 [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g563 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 4 [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g564 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 4 [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g565 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 4 [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g566 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 4 [1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g567 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 4 [1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g568 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 4 [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g569 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 4 [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g570 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 4 [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g571 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 4 [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g572 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 4 [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g573 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 4 [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g574 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 4 [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g575 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 4 [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
