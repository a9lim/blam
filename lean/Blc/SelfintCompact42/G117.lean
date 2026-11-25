import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2340 : BadRow (SharedShell.row 5 6 false 6 3 4 [1,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2341 : BadRow (SharedShell.row 5 6 true 6 3 4 [1,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2342 : BadRow (SharedShell.row 5 6 false 6 3 4 [1,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2343 : BadRow (SharedShell.row 5 6 true 6 3 4 [1,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2344 : BadRow (SharedShell.row 5 6 false 6 3 4 [1,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2345 : BadRow (SharedShell.row 5 6 true 6 3 4 [1,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2346 : BadRow (SharedShell.row 5 6 false 6 3 4 [1,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2347 : BadRow (SharedShell.row 5 6 true 6 3 4 [1,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2348 : BadRow (SharedShell.row 5 6 false 6 3 4 [1,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2349 : BadRow (SharedShell.row 5 6 true 6 3 4 [1,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2350 : BadRow (SharedShell.row 5 6 false 6 3 4 [2,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2351 : BadRow (SharedShell.row 5 6 true 6 3 4 [2,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2352 : BadRow (SharedShell.row 5 6 false 6 3 4 [2,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2353 : BadRow (SharedShell.row 5 6 true 6 3 4 [2,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2354 : BadRow (SharedShell.row 5 6 false 6 3 4 [2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2355 : BadRow (SharedShell.row 5 6 true 6 3 4 [2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2356 : BadRow (SharedShell.row 5 6 false 6 3 4 [2,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2357 : BadRow (SharedShell.row 5 6 true 6 3 4 [2,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2358 : BadRow (SharedShell.row 5 6 false 6 3 4 [2,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2359 : BadRow (SharedShell.row 5 6 true 6 3 4 [2,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
