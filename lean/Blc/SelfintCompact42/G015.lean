import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g300 : BadRow (SharedShell.row 5 6 false 4 2 4 [0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g301 : BadRow (SharedShell.row 5 6 true 4 2 4 [0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g302 : BadRow (SharedShell.row 5 6 false 4 2 4 [0,1,1,2]) :=
  row_of_forall (discharge bank [32,1,9,11,9,9,32,1,9,8,9,9,32,1,9,11,9,9] (hard := []) (by decide +kernel) .nil)

theorem g303 : BadRow (SharedShell.row 5 6 true 4 2 4 [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g304 : BadRow (SharedShell.row 5 6 false 4 2 4 [0,1,2,1]) :=
  row_of_forall (discharge bank [32,1,9,12,9,9,32,1,9,12,9,9,32,1,9,12,9,9] (hard := []) (by decide +kernel) .nil)

theorem g305 : BadRow (SharedShell.row 5 6 true 4 2 4 [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g306 : BadRow (SharedShell.row 5 6 false 4 2 4 [0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g307 : BadRow (SharedShell.row 5 6 true 4 2 4 [0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g308 : BadRow (SharedShell.row 5 6 false 4 2 4 [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g309 : BadRow (SharedShell.row 5 6 true 4 2 4 [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g310 : BadRow (SharedShell.row 5 6 false 4 2 4 [0,2,1,1]) :=
  row_of_forall (discharge bank [32,1,9,8,9,9,32,1,9,1,9,9,32,1,9,1,9,9] (hard := []) (by decide +kernel) .nil)

theorem g311 : BadRow (SharedShell.row 5 6 true 4 2 4 [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g312 : BadRow (SharedShell.row 5 6 false 4 2 4 [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g313 : BadRow (SharedShell.row 5 6 true 4 2 4 [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g314 : BadRow (SharedShell.row 5 6 false 4 2 4 [0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g315 : BadRow (SharedShell.row 5 6 true 4 2 4 [0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g316 : BadRow (SharedShell.row 5 6 false 4 2 4 [0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g317 : BadRow (SharedShell.row 5 6 true 4 2 4 [0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g318 : BadRow (SharedShell.row 5 6 false 4 2 4 [0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g319 : BadRow (SharedShell.row 5 6 true 4 2 4 [0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
