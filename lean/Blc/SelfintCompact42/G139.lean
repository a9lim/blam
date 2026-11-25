import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2780 : BadRow (SharedShell.row 5 6 false 6 3 5 [3,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2781 : BadRow (SharedShell.row 5 6 true 6 3 5 [3,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2782 : BadRow (SharedShell.row 5 6 false 6 3 5 [3,0,1,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2783 : BadRow (SharedShell.row 5 6 true 6 3 5 [3,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2784 : BadRow (SharedShell.row 5 6 false 6 3 5 [3,0,2,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2785 : BadRow (SharedShell.row 5 6 true 6 3 5 [3,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2786 : BadRow (SharedShell.row 5 6 false 6 3 5 [3,0,2,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2787 : BadRow (SharedShell.row 5 6 true 6 3 5 [3,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2788 : BadRow (SharedShell.row 5 6 false 6 3 5 [3,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2789 : BadRow (SharedShell.row 5 6 true 6 3 5 [3,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2790 : BadRow (SharedShell.row 5 6 false 6 3 5 [3,1,0,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2791 : BadRow (SharedShell.row 5 6 true 6 3 5 [3,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2792 : BadRow (SharedShell.row 5 6 false 6 3 5 [3,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2793 : BadRow (SharedShell.row 5 6 true 6 3 5 [3,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2794 : BadRow (SharedShell.row 5 6 false 6 3 5 [3,1,0,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2795 : BadRow (SharedShell.row 5 6 true 6 3 5 [3,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2796 : BadRow (SharedShell.row 5 6 false 6 3 5 [3,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2797 : BadRow (SharedShell.row 5 6 true 6 3 5 [3,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2798 : BadRow (SharedShell.row 5 6 false 6 3 5 [3,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2799 : BadRow (SharedShell.row 5 6 true 6 3 5 [3,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
