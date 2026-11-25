import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g672 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [1,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g673 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [1,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g674 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [1,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g675 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [1,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g676 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [1,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g677 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [1,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g678 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [1,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g679 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [1,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g680 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [1,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g681 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [1,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g682 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [1,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g683 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [1,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g684 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [1,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g685 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [1,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g686 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [1,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g687 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [1,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
