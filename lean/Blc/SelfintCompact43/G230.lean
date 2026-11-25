import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3680 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3681 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3682 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3683 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3684 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3685 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,0,1,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3686 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3687 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,0,1,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3688 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3689 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3690 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3691 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3692 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3693 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,0,2,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3694 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3695 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
