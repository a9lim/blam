import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2700 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2701 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2702 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,0,0,1,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2703 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2704 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,0,0,2,2]) :=
  row_of_forall (discharge bank [9,9,1,9,9,4,4] (hard := []) (by decide +kernel) .nil)

theorem g2705 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2706 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,0,0,3,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,4] (hard := []) (by decide +kernel) .nil)

theorem g2707 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2708 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2709 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2710 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,0,1,0,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g2711 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2712 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,0,1,1,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,4,4] (hard := []) (by decide +kernel) .nil)

theorem g2713 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2714 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,0,1,2,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,4,9,9,4] (hard := []) (by decide +kernel) .nil)

theorem g2715 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2716 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,0,1,3,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g2717 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2718 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,0,2,0,2]) :=
  row_of_forall (discharge bank [9,9,8,1,1,9,9,4,1,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g2719 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
