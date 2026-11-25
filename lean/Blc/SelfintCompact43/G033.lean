import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g528 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 3 [4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g529 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 3 [4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g530 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 4 [0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g531 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 4 [0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g532 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 4 [0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g533 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 4 [0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g534 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 4 [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g535 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 4 [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g536 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 4 [0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g537 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 4 [0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g538 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 4 [0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g539 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 4 [0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g540 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 4 [0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g541 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 4 [0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g542 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 4 [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g543 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 4 [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
