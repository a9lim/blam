import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3040 : BadRow (SharedShell.row 6 4 false 3 3 5 [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3041 : BadRow (SharedShell.row 6 4 true 3 3 5 [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3042 : BadRow (SharedShell.row 6 4 false 3 3 5 [0,0,1,2,0]) :=
  row_of_forall (discharge bank [9,9,1,9,9,9,9,9,9,9,9,9,9,36,9,9,29,29,29,29,10,29,10,29,29,4,29,19,4,57,10,43,10,29,9,58] (hard := []) (by decide +kernel) .nil)

theorem g3043 : BadRow (SharedShell.row 6 4 true 3 3 5 [0,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3044 : BadRow (SharedShell.row 6 4 false 3 3 5 [0,0,2,0,1]) :=
  row_of_forall (discharge bank [9,9,1,12,9,9,9,9,9,9,28,9,9,9,9,9,9,54,9,54,9,29,29,29,29,29,29,29,10,29,10,29,29,29,4,29,4,29,19,4,19,4,54,10,41,56,10,41] (hard := []) (by decide +kernel) .nil)

theorem g3045 : BadRow (SharedShell.row 6 4 true 3 3 5 [0,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3046 : BadRow (SharedShell.row 6 4 false 3 3 5 [0,0,2,1,0]) :=
  row_of_forall (discharge bank [9,9,1,9,9,9,9,9,9,9,9,9,9,54,9,9,29,29,29,29,10,29,10,29,29,4,29,19,4,54,10,41,10,29,9,58] (hard := []) (by decide +kernel) .nil)

theorem g3047 : BadRow (SharedShell.row 6 4 true 3 3 5 [0,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3048 : BadRow (SharedShell.row 6 4 false 3 3 5 [0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3049 : BadRow (SharedShell.row 6 4 true 3 3 5 [0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3050 : BadRow (SharedShell.row 6 4 false 3 3 5 [0,1,0,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,1,9,9,9,1,9,9,9,9,9,9,9,9,9,9,29,29,29,29,29,10,29,10,29,10,29,10,29,10,29] (hard := []) (by decide +kernel) .nil)

theorem g3051 : BadRow (SharedShell.row 6 4 true 3 3 5 [0,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3052 : BadRow (SharedShell.row 6 4 false 3 3 5 [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3053 : BadRow (SharedShell.row 6 4 true 3 3 5 [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3054 : BadRow (SharedShell.row 6 4 false 3 3 5 [0,1,0,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,29,29,29,29,29,10,29,10,29,10,29,10,29,10,29,10,29,10,29,10,29,9,58,9,58] (hard := []) (by decide +kernel) .nil)

theorem g3055 : BadRow (SharedShell.row 6 4 true 3 3 5 [0,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3056 : BadRow (SharedShell.row 6 4 false 3 3 5 [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3057 : BadRow (SharedShell.row 6 4 true 3 3 5 [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3058 : BadRow (SharedShell.row 6 4 false 3 3 5 [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3059 : BadRow (SharedShell.row 6 4 true 3 3 5 [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
