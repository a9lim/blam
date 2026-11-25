import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g280 : BadRow (SharedShell.row 5 6 false 4 2 3 [2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g281 : BadRow (SharedShell.row 5 6 true 4 2 3 [2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g282 : BadRow (SharedShell.row 5 6 false 4 2 3 [2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g283 : BadRow (SharedShell.row 5 6 true 4 2 3 [2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g284 : BadRow (SharedShell.row 5 6 false 4 2 3 [3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g285 : BadRow (SharedShell.row 5 6 true 4 2 3 [3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g286 : BadRow (SharedShell.row 5 6 false 4 2 3 [3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g287 : BadRow (SharedShell.row 5 6 true 4 2 3 [3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g288 : BadRow (SharedShell.row 5 6 false 4 2 3 [4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g289 : BadRow (SharedShell.row 5 6 true 4 2 3 [4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g290 : BadRow (SharedShell.row 5 6 false 4 2 4 [0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g291 : BadRow (SharedShell.row 5 6 true 4 2 4 [0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g292 : BadRow (SharedShell.row 5 6 false 4 2 4 [0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g293 : BadRow (SharedShell.row 5 6 true 4 2 4 [0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g294 : BadRow (SharedShell.row 5 6 false 4 2 4 [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g295 : BadRow (SharedShell.row 5 6 true 4 2 4 [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g296 : BadRow (SharedShell.row 5 6 false 4 2 4 [0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g297 : BadRow (SharedShell.row 5 6 true 4 2 4 [0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g298 : BadRow (SharedShell.row 5 6 false 4 2 4 [0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g299 : BadRow (SharedShell.row 5 6 true 4 2 4 [0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
