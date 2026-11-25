import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2360 : BadRow (SharedShell.row 5 6 false 6 3 4 [2,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2361 : BadRow (SharedShell.row 5 6 true 6 3 4 [2,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2362 : BadRow (SharedShell.row 5 6 false 6 3 4 [2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2363 : BadRow (SharedShell.row 5 6 true 6 3 4 [2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2364 : BadRow (SharedShell.row 5 6 false 6 3 4 [2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2365 : BadRow (SharedShell.row 5 6 true 6 3 4 [2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2366 : BadRow (SharedShell.row 5 6 false 6 3 4 [2,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2367 : BadRow (SharedShell.row 5 6 true 6 3 4 [2,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2368 : BadRow (SharedShell.row 5 6 false 6 3 4 [2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2369 : BadRow (SharedShell.row 5 6 true 6 3 4 [2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2370 : BadRow (SharedShell.row 5 6 false 6 3 4 [2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2371 : BadRow (SharedShell.row 5 6 true 6 3 4 [2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2372 : BadRow (SharedShell.row 5 6 false 6 3 4 [2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2373 : BadRow (SharedShell.row 5 6 true 6 3 4 [2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2374 : BadRow (SharedShell.row 5 6 false 6 3 4 [2,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2375 : BadRow (SharedShell.row 5 6 true 6 3 4 [2,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2376 : BadRow (SharedShell.row 5 6 false 6 3 4 [2,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2377 : BadRow (SharedShell.row 5 6 true 6 3 4 [2,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2378 : BadRow (SharedShell.row 5 6 false 6 3 4 [2,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2379 : BadRow (SharedShell.row 5 6 true 6 3 4 [2,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
