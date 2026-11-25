import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3712 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3713 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3714 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3715 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,1,1,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3716 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3717 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,1,2,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3718 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3719 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,1,2,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3720 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3721 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3722 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3723 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3724 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3725 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,2,0,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3726 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3727 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
