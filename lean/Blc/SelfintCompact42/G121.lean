import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2420 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,0,0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2421 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,0,0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2422 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,0,0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2423 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,0,0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2424 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,0,0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2425 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,0,0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2426 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,0,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2427 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,0,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2428 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,0,0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2429 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,0,0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2430 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,0,0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2431 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,0,0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2432 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,0,0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2433 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,0,0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2434 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,0,1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2435 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,0,1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2436 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,0,1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2437 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,0,1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2438 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,0,1,2,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g2439 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,0,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
