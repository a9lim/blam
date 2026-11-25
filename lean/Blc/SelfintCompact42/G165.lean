import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3300 : BadRow (SharedShell.row 6 4 false 4 2 4 [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3301 : BadRow (SharedShell.row 6 4 true 4 2 4 [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3302 : BadRow (SharedShell.row 6 4 false 4 2 4 [1,1,2,0]) :=
  row_of_forall (discharge bank [9,9,9,5,9,9,9,5,9,9,9,5,22,10,10,10,10,10,10,4,10,22,10,9] (hard := []) (by decide +kernel) .nil)

theorem g3303 : BadRow (SharedShell.row 6 4 true 4 2 4 [1,1,2,0]) :=
  row_of_forall (discharge bank [9,1,9,9,5,1,9,1,9,9,5,1,9,1,9,9,5,1,12,1,10,10,4,10,12,10,9,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3304 : BadRow (SharedShell.row 6 4 false 4 2 4 [1,2,0,1]) :=
  row_of_forall (discharge bank [9,9,9,5,9,9,9,5,9,9,9,12,9,9,9,12,9,9,9,14,17,10,10,10,10,10,10,4,10,17,10,9,3,10,10,10,10,10,10,4,3,3,10,9] (hard := []) (by decide +kernel) .nil)

theorem g3305 : BadRow (SharedShell.row 6 4 true 4 2 4 [1,2,0,1]) :=
  row_of_forall (discharge bank [9,1,9,9,5,1,9,1,9,9,5,1,9,1,9,9,1,1,9,1,9,9,1,1,9,1,9,9,14,1,17,1,10,10,4,10,17,10,9,1,1,3,1,3,10,4,3,3,10,9,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3306 : BadRow (SharedShell.row 6 4 false 4 2 4 [1,2,1,0]) :=
  row_of_forall (discharge bank [9,9,9,5,9,9,9,5,9,9,9,15,15,10,10,10,10,10,10,4,10,15,10,9] (hard := []) (by decide +kernel) .nil)

theorem g3307 : BadRow (SharedShell.row 6 4 true 4 2 4 [1,2,1,0]) :=
  row_of_forall (discharge bank [9,1,9,9,5,1,9,1,9,9,5,1,9,1,9,9,15,1,12,1,10,10,4,10,12,10,9,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3308 : BadRow (SharedShell.row 6 4 false 4 2 4 [1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3309 : BadRow (SharedShell.row 6 4 true 4 2 4 [1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3310 : BadRow (SharedShell.row 6 4 false 4 2 4 [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3311 : BadRow (SharedShell.row 6 4 true 4 2 4 [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3312 : BadRow (SharedShell.row 6 4 false 4 2 4 [2,0,1,1]) :=
  row_of_forall (discharge bank [9,9,9,19,9,9,9,19,9,9,9,18,9,9,9,19,9,9,9,18] (hard := []) (by decide +kernel) .nil)

theorem g3313 : BadRow (SharedShell.row 6 4 true 4 2 4 [2,0,1,1]) :=
  row_of_forall (discharge bank [9,1,9,9,16,1,9,1,9,9,12,1,9,1,9,9,16,1,9,1,9,9,12,1,9,1,9,9,12,1] (hard := []) (by decide +kernel) .nil)

theorem g3314 : BadRow (SharedShell.row 6 4 false 4 2 4 [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3315 : BadRow (SharedShell.row 6 4 true 4 2 4 [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3316 : BadRow (SharedShell.row 6 4 false 4 2 4 [2,1,0,1]) :=
  row_of_forall (discharge bank [9,9,9,19,9,9,9,19,9,9,9,19,9,9,9,19,9,9,9,19] (hard := []) (by decide +kernel) .nil)

theorem g3317 : BadRow (SharedShell.row 6 4 true 4 2 4 [2,1,0,1]) :=
  row_of_forall (discharge bank [9,1,9,9,14,1,9,1,9,9,12,1,9,1,9,9,14,1,9,1,9,9,12,1,9,1,9,9,12,1] (hard := []) (by decide +kernel) .nil)

theorem g3318 : BadRow (SharedShell.row 6 4 false 4 2 4 [2,1,1,0]) :=
  row_of_forall (discharge bank [9,9,9,19,9,9,9,19,9,9,9,19] (hard := []) (by decide +kernel) .nil)

theorem g3319 : BadRow (SharedShell.row 6 4 true 4 2 4 [2,1,1,0]) :=
  row_of_forall (discharge bank [9,1,9,9,14,1,9,1,9,9,14,1,9,1,9,9,14,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
