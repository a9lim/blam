import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g340 : BadRow (SharedShell.row 5 6 false 4 2 4 [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g341 : BadRow (SharedShell.row 5 6 true 4 2 4 [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g342 : BadRow (SharedShell.row 5 6 false 4 2 4 [2,0,1,1]) :=
  row_of_forall (discharge bank [32,1,9,8,9,9,32,1,9,1,9,9,32,1,9,8,9,9,32,1,9,1,9,9,32,1,9,1,9,9] (hard := []) (by decide +kernel) .nil)

theorem g343 : BadRow (SharedShell.row 5 6 true 4 2 4 [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g344 : BadRow (SharedShell.row 5 6 false 4 2 4 [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g345 : BadRow (SharedShell.row 5 6 true 4 2 4 [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g346 : BadRow (SharedShell.row 5 6 false 4 2 4 [2,1,0,1]) :=
  row_of_forall (discharge bank [32,1,9,8,9,9,32,1,9,1,9,9,32,1,9,12,9,9,32,1,9,1,9,9,32,1,9,1,9,9] (hard := []) (by decide +kernel) .nil)

theorem g347 : BadRow (SharedShell.row 5 6 true 4 2 4 [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g348 : BadRow (SharedShell.row 5 6 false 4 2 4 [2,1,1,0]) :=
  row_of_forall (discharge bank [32,1,9,8,9,9,32,1,9,8,9,9,32,1,9,1,9,9] (hard := []) (by decide +kernel) .nil)

theorem g349 : BadRow (SharedShell.row 5 6 true 4 2 4 [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g350 : BadRow (SharedShell.row 5 6 false 4 2 4 [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g351 : BadRow (SharedShell.row 5 6 true 4 2 4 [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g352 : BadRow (SharedShell.row 5 6 false 4 2 4 [3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g353 : BadRow (SharedShell.row 5 6 true 4 2 4 [3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g354 : BadRow (SharedShell.row 5 6 false 4 2 4 [3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g355 : BadRow (SharedShell.row 5 6 true 4 2 4 [3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g356 : BadRow (SharedShell.row 5 6 false 4 2 4 [3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g357 : BadRow (SharedShell.row 5 6 true 4 2 4 [3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g358 : BadRow (SharedShell.row 5 6 false 4 2 4 [4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g359 : BadRow (SharedShell.row 5 6 true 4 2 4 [4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
