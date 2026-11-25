import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2500 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2501 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2502 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2503 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2504 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,1,2,3,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,9,9,9,9,9,9,9,9,23,1,27,1,23,1,27,1] (hard := []) (by decide +kernel) .nil)

theorem g2505 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,1,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2506 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,1,3,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,9,9,9,9,9,9,9,9,9,9,1,16,12,16,1,1,16,12,16,1] (hard := []) (by decide +kernel) .nil)

theorem g2507 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,1,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2508 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,1,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2509 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,1,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2510 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,1,3,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,12,1,1,1,12,1] (hard := []) (by decide +kernel) .nil)

theorem g2511 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,1,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2512 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,1,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2513 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,1,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2514 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,1,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2515 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,1,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2516 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,1,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2517 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,1,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2518 : BadRow (SharedShell.row 5 6 false 6 3 5 [0,2,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2519 : BadRow (SharedShell.row 5 6 true 6 3 5 [0,2,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
