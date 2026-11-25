import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3260 : BadRow (SharedShell.row 6 4 false 4 2 4 [0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3261 : BadRow (SharedShell.row 6 4 true 4 2 4 [0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3262 : BadRow (SharedShell.row 6 4 false 4 2 4 [0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3263 : BadRow (SharedShell.row 6 4 true 4 2 4 [0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3264 : BadRow (SharedShell.row 6 4 false 4 2 4 [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3265 : BadRow (SharedShell.row 6 4 true 4 2 4 [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3266 : BadRow (SharedShell.row 6 4 false 4 2 4 [0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3267 : BadRow (SharedShell.row 6 4 true 4 2 4 [0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3268 : BadRow (SharedShell.row 6 4 false 4 2 4 [0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3269 : BadRow (SharedShell.row 6 4 true 4 2 4 [0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3270 : BadRow (SharedShell.row 6 4 false 4 2 4 [0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3271 : BadRow (SharedShell.row 6 4 true 4 2 4 [0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3272 : BadRow (SharedShell.row 6 4 false 4 2 4 [0,1,1,2]) :=
  row_of_forall (discharge bank [9,9,9,1,9,9,9,8,9,9,9,1] (hard := []) (by decide +kernel) .nil)

theorem g3273 : BadRow (SharedShell.row 6 4 true 4 2 4 [0,1,1,2]) :=
  row_of_forall (discharge bank [9,1,9,9,11,1,9,1,9,9,8,1,9,1,9,9,11,1] (hard := []) (by decide +kernel) .nil)

theorem g3274 : BadRow (SharedShell.row 6 4 false 4 2 4 [0,1,2,1]) :=
  row_of_forall (discharge bank [9,9,9,40,9,9,9,1,9,9,9,1] (hard := []) (by decide +kernel) .nil)

theorem g3275 : BadRow (SharedShell.row 6 4 true 4 2 4 [0,1,2,1]) :=
  row_of_forall (discharge bank [9,1,9,9,12,1,9,1,9,9,11,1,9,1,9,9,12,1] (hard := []) (by decide +kernel) .nil)

theorem g3276 : BadRow (SharedShell.row 6 4 false 4 2 4 [0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3277 : BadRow (SharedShell.row 6 4 true 4 2 4 [0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3278 : BadRow (SharedShell.row 6 4 false 4 2 4 [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3279 : BadRow (SharedShell.row 6 4 true 4 2 4 [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
