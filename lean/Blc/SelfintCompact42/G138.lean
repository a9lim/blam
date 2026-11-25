import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2760 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,2,2,0,0]) :=
  row_of_forall (discharge bank [5] (hard := []) (by decide +kernel) .nil)

theorem g2761 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2762 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,3,0,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,3,3] (hard := []) (by decide +kernel) .nil)

theorem g2763 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2764 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,3,0,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,3] (hard := []) (by decide +kernel) .nil)

theorem g2765 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2766 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,3,1,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2767 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2768 : BadRow (SharedShell.row 5 6 false 6 3 5 [2,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2769 : BadRow (SharedShell.row 5 6 true 6 3 5 [2,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2770 : BadRow (SharedShell.row 5 6 false 6 3 5 [3,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2771 : BadRow (SharedShell.row 5 6 true 6 3 5 [3,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2772 : BadRow (SharedShell.row 5 6 false 6 3 5 [3,0,0,1,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2773 : BadRow (SharedShell.row 5 6 true 6 3 5 [3,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2774 : BadRow (SharedShell.row 5 6 false 6 3 5 [3,0,0,2,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2775 : BadRow (SharedShell.row 5 6 true 6 3 5 [3,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2776 : BadRow (SharedShell.row 5 6 false 6 3 5 [3,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2777 : BadRow (SharedShell.row 5 6 true 6 3 5 [3,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2778 : BadRow (SharedShell.row 5 6 false 6 3 5 [3,0,1,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2779 : BadRow (SharedShell.row 5 6 true 6 3 5 [3,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
