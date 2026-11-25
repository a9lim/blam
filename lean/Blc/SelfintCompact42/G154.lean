import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3080 : BadRow (SharedShell.row 6 4 false 3 3 5 [1,0,2,0,0]) :=
  row_of_forall (discharge bank [7,9,9,9,1,9,9,9,9,9,7,9,9,9,9,9,1,9,1,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3081 : BadRow (SharedShell.row 6 4 true 3 3 5 [1,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3082 : BadRow (SharedShell.row 6 4 false 3 3 5 [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3083 : BadRow (SharedShell.row 6 4 true 3 3 5 [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3084 : BadRow (SharedShell.row 6 4 false 3 3 5 [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3085 : BadRow (SharedShell.row 6 4 true 3 3 5 [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3086 : BadRow (SharedShell.row 6 4 false 3 3 5 [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3087 : BadRow (SharedShell.row 6 4 true 3 3 5 [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3088 : BadRow (SharedShell.row 6 4 false 3 3 5 [1,2,0,0,0]) :=
  row_of_forall (discharge bank [33,9,9,9,40,9,9,9,9,7,9,9,9,1,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3089 : BadRow (SharedShell.row 6 4 true 3 3 5 [1,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3090 : BadRow (SharedShell.row 6 4 false 3 3 5 [2,0,0,0,1]) :=
  row_of_forall (discharge bank [9,9,29,9,9,9,9,9,9,4,9,9,9,29,9,9,9,19,9,9,9,9,4,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3091 : BadRow (SharedShell.row 6 4 true 3 3 5 [2,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3092 : BadRow (SharedShell.row 6 4 false 3 3 5 [2,0,0,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,4,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3093 : BadRow (SharedShell.row 6 4 true 3 3 5 [2,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3094 : BadRow (SharedShell.row 6 4 false 3 3 5 [2,0,1,0,0]) :=
  row_of_forall (discharge bank [29,9,9,9,29,9,9,9,9,9,1,9,9,9,9,9,19,9,54,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3095 : BadRow (SharedShell.row 6 4 true 3 3 5 [2,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3096 : BadRow (SharedShell.row 6 4 false 3 3 5 [2,1,0,0,0]) :=
  row_of_forall (discharge bank [29,9,9,9,29,9,9,9,9,29,9,9,9,19,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3097 : BadRow (SharedShell.row 6 4 true 3 3 5 [2,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3098 : BadRow (SharedShell.row 6 4 false 3 3 5 [3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3099 : BadRow (SharedShell.row 6 4 true 3 3 5 [3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
