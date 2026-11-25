import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2840 : BadRow (SharedShell.row 6 4 false 3 2 3 [0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2841 : BadRow (SharedShell.row 6 4 true 3 2 3 [0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2842 : BadRow (SharedShell.row 6 4 false 3 2 3 [0,1,2]) :=
  row_of_forall (discharge bank [76,9,76,9,19] (hard := []) (by decide +kernel) .nil)

theorem g2843 : BadRow (SharedShell.row 6 4 true 3 2 3 [0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2844 : BadRow (SharedShell.row 6 4 false 3 2 3 [0,2,1]) :=
  row_of_forall (discharge bank [76,9,76,9,19] (hard := []) (by decide +kernel) .nil)

theorem g2845 : BadRow (SharedShell.row 6 4 true 3 2 3 [0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2846 : BadRow (SharedShell.row 6 4 false 3 2 3 [0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2847 : BadRow (SharedShell.row 6 4 true 3 2 3 [0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2848 : BadRow (SharedShell.row 6 4 false 3 2 3 [1,0,2]) :=
  row_of_forall (discharge bank [76,9,76,9,19,76,9,76,9,19] (hard := []) (by decide +kernel) .nil)

theorem g2849 : BadRow (SharedShell.row 6 4 true 3 2 3 [1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2850 : BadRow (SharedShell.row 6 4 false 3 2 3 [1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2851 : BadRow (SharedShell.row 6 4 true 3 2 3 [1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2852 : BadRow (SharedShell.row 6 4 false 3 2 3 [1,2,0]) :=
  row_of_forall (discharge bank [76,9,76,9,19] (hard := []) (by decide +kernel) .nil)

theorem g2853 : BadRow (SharedShell.row 6 4 true 3 2 3 [1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2854 : BadRow (SharedShell.row 6 4 false 3 2 3 [2,0,1]) :=
  row_of_forall (discharge bank [76,9,76,9,19,76,9,76,9,19] (hard := []) (by decide +kernel) .nil)

theorem g2855 : BadRow (SharedShell.row 6 4 true 3 2 3 [2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2856 : BadRow (SharedShell.row 6 4 false 3 2 3 [2,1,0]) :=
  row_of_forall (discharge bank [76,9,76,9,19] (hard := []) (by decide +kernel) .nil)

theorem g2857 : BadRow (SharedShell.row 6 4 true 3 2 3 [2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2858 : BadRow (SharedShell.row 6 4 false 3 2 3 [3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2859 : BadRow (SharedShell.row 6 4 true 3 2 3 [3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
