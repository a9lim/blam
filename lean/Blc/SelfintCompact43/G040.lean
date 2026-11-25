import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g640 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g641 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g642 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g643 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g644 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g645 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g646 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g647 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g648 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g649 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g650 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g651 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g652 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g653 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g654 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g655 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
