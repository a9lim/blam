import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3020 : BadRow (SharedShell.row 6 4 false 3 3 4 [1,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g3021 : BadRow (SharedShell.row 6 4 true 3 3 4 [1,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1] (hard := []) (by decide +kernel) .nil)

theorem g3022 : BadRow (SharedShell.row 6 4 false 3 3 4 [2,0,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g3023 : BadRow (SharedShell.row 6 4 true 3 3 4 [2,0,0,1]) :=
  row_of_forall (discharge bank [2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1] (hard := []) (by decide +kernel) .nil)

theorem g3024 : BadRow (SharedShell.row 6 4 false 3 3 4 [2,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g3025 : BadRow (SharedShell.row 6 4 true 3 3 4 [2,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1] (hard := []) (by decide +kernel) .nil)

theorem g3026 : BadRow (SharedShell.row 6 4 false 3 3 4 [2,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g3027 : BadRow (SharedShell.row 6 4 true 3 3 4 [2,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1] (hard := []) (by decide +kernel) .nil)

theorem g3028 : BadRow (SharedShell.row 6 4 false 3 3 4 [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3029 : BadRow (SharedShell.row 6 4 true 3 3 4 [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3030 : BadRow (SharedShell.row 6 4 false 3 3 5 [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3031 : BadRow (SharedShell.row 6 4 true 3 3 5 [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3032 : BadRow (SharedShell.row 6 4 false 3 3 5 [0,0,0,1,2]) :=
  row_of_forall (discharge bank [9,12,9,9,9,12,9,9,9,9,1,9,29,29,29,29,10,29,29,4,29,19,4,1,10,59] (hard := []) (by decide +kernel) .nil)

theorem g3033 : BadRow (SharedShell.row 6 4 true 3 3 5 [0,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3034 : BadRow (SharedShell.row 6 4 false 3 3 5 [0,0,0,2,1]) :=
  row_of_forall (discharge bank [9,26,9,9,12,9,12,9,9,9,9,22,9,29,29,29,29,10,29,29,4,29,19,4,1,10,12] (hard := []) (by decide +kernel) .nil)

theorem g3035 : BadRow (SharedShell.row 6 4 true 3 3 5 [0,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3036 : BadRow (SharedShell.row 6 4 false 3 3 5 [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3037 : BadRow (SharedShell.row 6 4 true 3 3 5 [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3038 : BadRow (SharedShell.row 6 4 false 3 3 5 [0,0,1,0,2]) :=
  row_of_forall (discharge bank [9,9,1,1,9,9,9,9,9,9,9,9,9,9,9,9,55,9,1,9,29,29,29,29,29,29,29,10,29,10,29,29,29,4,29,4,29,19,4,19,4,12,10,42,12,10,11] (hard := []) (by decide +kernel) .nil)

theorem g3039 : BadRow (SharedShell.row 6 4 true 3 3 5 [0,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
