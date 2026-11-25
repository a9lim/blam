import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2720 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,0,2,1,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2721 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2722 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,0,2,2,0]) :=
  row_of_forall (discharge bank [9,9,8,1,9,9,4,1,4,4] (hard := []) (by decide +kernel) .nil)

theorem g2723 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2724 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,0,3,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,3,1,4,3] (hard := []) (by decide +kernel) .nil)

theorem g2725 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2726 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,0,3,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,3] (hard := []) (by decide +kernel) .nil)

theorem g2727 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2728 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2729 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2730 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,1,0,0,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g2731 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2732 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,1,0,1,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,9,9,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g2733 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2734 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,1,0,2,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,4,9,9,4] (hard := []) (by decide +kernel) .nil)

theorem g2735 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2736 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,1,0,3,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g2737 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2738 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,1,1,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,9,9,4,4] (hard := []) (by decide +kernel) .nil)

theorem g2739 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
