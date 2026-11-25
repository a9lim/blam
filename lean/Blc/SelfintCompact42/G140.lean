import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2800 : BadRow (SharedShell.row 5 6 false 6 3 5 [3,1,2,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2801 : BadRow (SharedShell.row 5 6 true 6 3 5 [3,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2802 : BadRow (SharedShell.row 5 6 false 6 3 5 [3,2,0,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2803 : BadRow (SharedShell.row 5 6 true 6 3 5 [3,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2804 : BadRow (SharedShell.row 5 6 false 6 3 5 [3,2,0,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2805 : BadRow (SharedShell.row 5 6 true 6 3 5 [3,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2806 : BadRow (SharedShell.row 5 6 false 6 3 5 [3,2,1,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2807 : BadRow (SharedShell.row 5 6 true 6 3 5 [3,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2808 : BadRow (SharedShell.row 5 6 false 6 3 5 [3,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2809 : BadRow (SharedShell.row 5 6 true 6 3 5 [3,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2810 : BadRow (SharedShell.row 5 6 false 6 3 5 [4,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2811 : BadRow (SharedShell.row 5 6 true 6 3 5 [4,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2812 : BadRow (SharedShell.row 5 6 false 6 3 5 [4,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2813 : BadRow (SharedShell.row 5 6 true 6 3 5 [4,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2814 : BadRow (SharedShell.row 5 6 false 6 3 5 [4,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2815 : BadRow (SharedShell.row 5 6 true 6 3 5 [4,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2816 : BadRow (SharedShell.row 5 6 false 6 3 5 [4,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2817 : BadRow (SharedShell.row 5 6 true 6 3 5 [4,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2818 : BadRow (SharedShell.row 5 6 false 6 3 5 [4,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2819 : BadRow (SharedShell.row 5 6 true 6 3 5 [4,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
