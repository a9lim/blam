import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2440 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,0,1,3,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g2441 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,0,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2442 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,0,1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2443 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,0,1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2444 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,0,1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2445 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,0,1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2446 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,0,2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2447 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,0,2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2448 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,0,2,1,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g2449 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,0,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2450 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,0,2,2,2]) :=
  row_of_forall (discharge bank [12,9,9,12] (hard := []) (by decide +kernel) .nil)

theorem g2451 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2452 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,0,2,3,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,23,27,11,12,23,27,11,12] (hard := []) (by decide +kernel) .nil)

theorem g2453 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,0,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2454 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,0,2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2455 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,0,2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2456 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,0,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2457 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,0,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2458 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,0,3,1,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,12,12,9,9,9,9,9,9,9,9,9,9,12,16,12,16,12,12,16,12,16,12] (hard := []) (by decide +kernel) .nil)

theorem g2459 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,0,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
