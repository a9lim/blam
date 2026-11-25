import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g720 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [2,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g721 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [2,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g722 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [2,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g723 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [2,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g724 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [2,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g725 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [2,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g726 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [2,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g727 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [2,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g728 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [2,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g729 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [2,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g730 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [3,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g731 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [3,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g732 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [3,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g733 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [3,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g734 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [3,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g735 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [3,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
