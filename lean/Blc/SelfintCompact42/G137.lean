import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2740 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2741 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2742 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,1,1,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2743 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2744 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,1,2,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,8,1,9,9,4,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2745 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2746 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,1,2,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,8,1,9,9,4] (hard := []) (by decide +kernel) .nil)

theorem g2747 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2748 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,1,3,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1] (hard := []) (by decide +kernel) .nil)

theorem g2749 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2750 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,2,0,0,2]) :=
  row_of_forall (discharge bank [5,5,3,14,3,4,4] (hard := []) (by decide +kernel) .nil)

theorem g2751 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2752 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,2,0,1,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,5,9,9,14,3] (hard := []) (by decide +kernel) .nil)

theorem g2753 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2754 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,2,0,2,0]) :=
  row_of_forall (discharge bank [5,5,5,3,14,3,4] (hard := []) (by decide +kernel) .nil)

theorem g2755 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2756 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,2,1,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,5,5,5,3,9,9,14,3] (hard := []) (by decide +kernel) .nil)

theorem g2757 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2758 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,2,1,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,5,5,3] (hard := []) (by decide +kernel) .nil)

theorem g2759 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
