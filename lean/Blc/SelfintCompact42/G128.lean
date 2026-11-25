import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2560 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,3,1,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,12,12,14,12,14,12,12,14,12,14] (hard := []) (by decide +kernel) .nil)

theorem g2561 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,3,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2562 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,3,2,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,12,12,3,30,3,12,12,3,30,3] (hard := []) (by decide +kernel) .nil)

theorem g2563 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,3,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2564 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,3,2,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,12,12,3,12,12,12,3,12] (hard := []) (by decide +kernel) .nil)

theorem g2565 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,3,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2566 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,3,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2567 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,3,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2568 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,4,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2569 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,4,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2570 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,4,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2571 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,4,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2572 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,4,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2573 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,4,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2574 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,4,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2575 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,4,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2576 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,4,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2577 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,4,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2578 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,4,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2579 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,4,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
