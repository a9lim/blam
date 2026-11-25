import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2980 : BadRow (SharedShell.row 6 4 false 3 3 3 [1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2981 : BadRow (SharedShell.row 6 4 true 3 3 3 [1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2982 : BadRow (SharedShell.row 6 4 false 3 3 3 [1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2983 : BadRow (SharedShell.row 6 4 true 3 3 3 [1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2984 : BadRow (SharedShell.row 6 4 false 3 3 3 [2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2985 : BadRow (SharedShell.row 6 4 true 3 3 3 [2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2986 : BadRow (SharedShell.row 6 4 false 3 3 3 [2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2987 : BadRow (SharedShell.row 6 4 true 3 3 3 [2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2988 : BadRow (SharedShell.row 6 4 false 3 3 3 [3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2989 : BadRow (SharedShell.row 6 4 true 3 3 3 [3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2990 : BadRow (SharedShell.row 6 4 false 3 3 4 [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2991 : BadRow (SharedShell.row 6 4 true 3 3 4 [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2992 : BadRow (SharedShell.row 6 4 false 3 3 4 [0,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g2993 : BadRow (SharedShell.row 6 4 true 3 3 4 [0,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,19,6,1] (hard := []) (by decide +kernel) .nil)

theorem g2994 : BadRow (SharedShell.row 6 4 false 3 3 4 [0,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g2995 : BadRow (SharedShell.row 6 4 true 3 3 4 [0,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,19,6,1] (hard := []) (by decide +kernel) .nil)

theorem g2996 : BadRow (SharedShell.row 6 4 false 3 3 4 [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2997 : BadRow (SharedShell.row 6 4 true 3 3 4 [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2998 : BadRow (SharedShell.row 6 4 false 3 3 4 [0,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g2999 : BadRow (SharedShell.row 6 4 true 3 3 4 [0,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,19,6,1,2,2,2,19,6,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
