import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g688 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [1,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g689 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [1,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g690 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [1,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g691 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [1,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g692 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [1,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g693 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [1,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g694 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [1,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g695 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [1,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g696 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [1,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g697 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [1,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g698 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [1,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g699 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [1,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g700 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [1,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g701 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [1,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g702 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [1,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g703 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [1,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
