import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3664 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3665 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3666 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3667 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3668 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3669 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3670 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3671 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3672 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3673 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3674 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3675 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3676 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3677 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3678 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3679 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
