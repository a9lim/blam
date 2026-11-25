import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2880 : BadRow (SharedShell.row 6 4 false 3 2 4 [1,0,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4] (hard := []) (by decide +kernel) .nil)

theorem g2881 : BadRow (SharedShell.row 6 4 true 3 2 4 [1,0,0,2]) :=
  row_of_forall (discharge bank [9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9] (hard := []) (by decide +kernel) .nil)

theorem g2882 : BadRow (SharedShell.row 6 4 false 3 2 4 [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2883 : BadRow (SharedShell.row 6 4 true 3 2 4 [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2884 : BadRow (SharedShell.row 6 4 false 3 2 4 [1,0,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4] (hard := []) (by decide +kernel) .nil)

theorem g2885 : BadRow (SharedShell.row 6 4 true 3 2 4 [1,0,2,0]) :=
  row_of_forall (discharge bank [9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9] (hard := []) (by decide +kernel) .nil)

theorem g2886 : BadRow (SharedShell.row 6 4 false 3 2 4 [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2887 : BadRow (SharedShell.row 6 4 true 3 2 4 [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2888 : BadRow (SharedShell.row 6 4 false 3 2 4 [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2889 : BadRow (SharedShell.row 6 4 true 3 2 4 [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2890 : BadRow (SharedShell.row 6 4 false 3 2 4 [1,2,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4] (hard := []) (by decide +kernel) .nil)

theorem g2891 : BadRow (SharedShell.row 6 4 true 3 2 4 [1,2,0,0]) :=
  row_of_forall (discharge bank [9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9] (hard := []) (by decide +kernel) .nil)

theorem g2892 : BadRow (SharedShell.row 6 4 false 3 2 4 [2,0,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4] (hard := []) (by decide +kernel) .nil)

theorem g2893 : BadRow (SharedShell.row 6 4 true 3 2 4 [2,0,0,1]) :=
  row_of_forall (discharge bank [9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9] (hard := []) (by decide +kernel) .nil)

theorem g2894 : BadRow (SharedShell.row 6 4 false 3 2 4 [2,0,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4] (hard := []) (by decide +kernel) .nil)

theorem g2895 : BadRow (SharedShell.row 6 4 true 3 2 4 [2,0,1,0]) :=
  row_of_forall (discharge bank [9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9] (hard := []) (by decide +kernel) .nil)

theorem g2896 : BadRow (SharedShell.row 6 4 false 3 2 4 [2,1,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4] (hard := []) (by decide +kernel) .nil)

theorem g2897 : BadRow (SharedShell.row 6 4 true 3 2 4 [2,1,0,0]) :=
  row_of_forall (discharge bank [9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9] (hard := []) (by decide +kernel) .nil)

theorem g2898 : BadRow (SharedShell.row 6 4 false 3 2 4 [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2899 : BadRow (SharedShell.row 6 4 true 3 2 4 [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
