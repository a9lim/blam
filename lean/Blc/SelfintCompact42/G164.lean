import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3280 : BadRow (SharedShell.row 6 4 false 4 2 4 [0,2,1,1]) :=
  row_of_forall (discharge bank [9,9,9,8,9,9,9,40,9,9,9,1] (hard := []) (by decide +kernel) .nil)

theorem g3281 : BadRow (SharedShell.row 6 4 true 4 2 4 [0,2,1,1]) :=
  row_of_forall (discharge bank [9,1,9,9,8,1,9,1,9,9,12,1,9,1,9,9,12,1] (hard := []) (by decide +kernel) .nil)

theorem g3282 : BadRow (SharedShell.row 6 4 false 4 2 4 [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3283 : BadRow (SharedShell.row 6 4 true 4 2 4 [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3284 : BadRow (SharedShell.row 6 4 false 4 2 4 [0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3285 : BadRow (SharedShell.row 6 4 true 4 2 4 [0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3286 : BadRow (SharedShell.row 6 4 false 4 2 4 [0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3287 : BadRow (SharedShell.row 6 4 true 4 2 4 [0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3288 : BadRow (SharedShell.row 6 4 false 4 2 4 [0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3289 : BadRow (SharedShell.row 6 4 true 4 2 4 [0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3290 : BadRow (SharedShell.row 6 4 false 4 2 4 [1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3291 : BadRow (SharedShell.row 6 4 true 4 2 4 [1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3292 : BadRow (SharedShell.row 6 4 false 4 2 4 [1,0,1,2]) :=
  row_of_forall (discharge bank [9,9,9,5,9,9,9,5,9,9,9,15,9,9,9,5,9,9,9,13,24,10,10,10,10,10,10,4,10,24,10,9] (hard := []) (by decide +kernel) .nil)

theorem g3293 : BadRow (SharedShell.row 6 4 true 4 2 4 [1,0,1,2]) :=
  row_of_forall (discharge bank [9,1,9,9,5,1,9,1,9,9,5,1,9,1,9,9,15,1,9,1,9,9,5,1,9,1,9,9,13,1,11,1,10,10,4,10,11,10,9,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3294 : BadRow (SharedShell.row 6 4 false 4 2 4 [1,0,2,1]) :=
  row_of_forall (discharge bank [9,9,9,5,9,9,9,5,9,9,9,18,9,9,9,12,9,9,9,14,3,10,10,10,10,10,10,4,3,3,10,9] (hard := []) (by decide +kernel) .nil)

theorem g3295 : BadRow (SharedShell.row 6 4 true 4 2 4 [1,0,2,1]) :=
  row_of_forall (discharge bank [9,1,9,9,5,1,9,1,9,9,5,1,9,1,9,9,1,1,9,1,9,9,1,1,9,1,9,9,14,1,3,1,3,10,4,3,3,10,9,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3296 : BadRow (SharedShell.row 6 4 false 4 2 4 [1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3297 : BadRow (SharedShell.row 6 4 true 4 2 4 [1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3298 : BadRow (SharedShell.row 6 4 false 4 2 4 [1,1,0,2]) :=
  row_of_forall (discharge bank [9,9,9,5,9,9,9,5,9,9,9,5,9,9,9,5,9,9,9,5,22,10,10,10,10,10,10,4,10,22,10,9,22,10,10,10,10,10,10,4,10,22,10,9] (hard := []) (by decide +kernel) .nil)

theorem g3299 : BadRow (SharedShell.row 6 4 true 4 2 4 [1,1,0,2]) :=
  row_of_forall (discharge bank [9,1,9,9,5,1,9,1,9,9,5,1,9,1,9,9,5,1,9,1,9,9,5,1,9,1,9,9,5,1,11,1,10,10,4,10,11,10,9,1,1,12,1,10,10,4,10,12,10,9,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
