import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3680 : BadRow (SharedShell.row 6 4 false 4 3 5 [2,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3681 : BadRow (SharedShell.row 6 4 true 4 3 5 [2,0,0,0,2]) :=
  row_of_forall (discharge bank [1,1,9,9,5,5,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3682 : BadRow (SharedShell.row 6 4 false 4 3 5 [2,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3683 : BadRow (SharedShell.row 6 4 true 4 3 5 [2,0,0,1,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,15,3,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3684 : BadRow (SharedShell.row 6 4 false 4 3 5 [2,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3685 : BadRow (SharedShell.row 6 4 true 4 3 5 [2,0,0,2,0]) :=
  row_of_forall (discharge bank [1,1,9,9,9,5,5,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3686 : BadRow (SharedShell.row 6 4 false 4 3 5 [2,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3687 : BadRow (SharedShell.row 6 4 true 4 3 5 [2,0,1,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,22,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3688 : BadRow (SharedShell.row 6 4 false 4 3 5 [2,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3689 : BadRow (SharedShell.row 6 4 true 4 3 5 [2,0,1,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3690 : BadRow (SharedShell.row 6 4 false 4 3 5 [2,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3691 : BadRow (SharedShell.row 6 4 true 4 3 5 [2,0,2,0,0]) :=
  row_of_forall (discharge bank [1,1,9,5,5,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3692 : BadRow (SharedShell.row 6 4 false 4 3 5 [2,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3693 : BadRow (SharedShell.row 6 4 true 4 3 5 [2,1,0,0,1]) :=
  row_of_forall (discharge bank [1,1,9,9,9,9,9,9,9,9,9,9,9,9,1,1,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3694 : BadRow (SharedShell.row 6 4 false 4 3 5 [2,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3695 : BadRow (SharedShell.row 6 4 true 4 3 5 [2,1,0,1,0]) :=
  row_of_forall (discharge bank [1,1,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3696 : BadRow (SharedShell.row 6 4 false 4 3 5 [2,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3697 : BadRow (SharedShell.row 6 4 true 4 3 5 [2,1,1,0,0]) :=
  row_of_forall (discharge bank [1,1,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3698 : BadRow (SharedShell.row 6 4 false 4 3 5 [2,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3699 : BadRow (SharedShell.row 6 4 true 4 3 5 [2,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
