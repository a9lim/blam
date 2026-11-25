import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3060 : BadRow (SharedShell.row 6 4 false 3 3 5 [0,1,2,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,7,9,9,9,1,9,9,9,9,9,9,9,9,9,9,9,29,29,29,10,29,10,29,10,29,10,29,10,29,9,58] (hard := []) (by decide +kernel) .nil)

theorem g3061 : BadRow (SharedShell.row 6 4 true 3 3 5 [0,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3062 : BadRow (SharedShell.row 6 4 false 3 3 5 [0,2,0,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,7,9,9,9,12,9,9,9,9,9,9,9,9,9,9,29,29,29,29,29,10,29,10,29,10,29,10,29,10,29] (hard := []) (by decide +kernel) .nil)

theorem g3063 : BadRow (SharedShell.row 6 4 true 3 3 5 [0,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3064 : BadRow (SharedShell.row 6 4 false 3 3 5 [0,2,0,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,29,29,29,29,29,10,29,10,29,10,29,10,29,10,29,10,29,10,29,10,29,9,58,9,58] (hard := []) (by decide +kernel) .nil)

theorem g3065 : BadRow (SharedShell.row 6 4 true 3 3 5 [0,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3066 : BadRow (SharedShell.row 6 4 false 3 3 5 [0,2,1,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,12,9,9,9,11,9,9,9,9,9,9,9,9,9,9,9,29,29,29,10,29,10,29,10,29,10,29,10,29,9,58] (hard := []) (by decide +kernel) .nil)

theorem g3067 : BadRow (SharedShell.row 6 4 true 3 3 5 [0,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3068 : BadRow (SharedShell.row 6 4 false 3 3 5 [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3069 : BadRow (SharedShell.row 6 4 true 3 3 5 [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3070 : BadRow (SharedShell.row 6 4 false 3 3 5 [1,0,0,0,2]) :=
  row_of_forall (discharge bank [9,1,9,1,9,9,9,9,9,9,1,9,9,9,1,9,9,9,1,9,9,9,9,1,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3071 : BadRow (SharedShell.row 6 4 true 3 3 5 [1,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3072 : BadRow (SharedShell.row 6 4 false 3 3 5 [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3073 : BadRow (SharedShell.row 6 4 true 3 3 5 [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3074 : BadRow (SharedShell.row 6 4 false 3 3 5 [1,0,0,2,0]) :=
  row_of_forall (discharge bank [9,9,9,1,9,9,9,9,9,9,9,9,9,9,1,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3075 : BadRow (SharedShell.row 6 4 true 3 3 5 [1,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3076 : BadRow (SharedShell.row 6 4 false 3 3 5 [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3077 : BadRow (SharedShell.row 6 4 true 3 3 5 [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3078 : BadRow (SharedShell.row 6 4 false 3 3 5 [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3079 : BadRow (SharedShell.row 6 4 true 3 3 5 [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
