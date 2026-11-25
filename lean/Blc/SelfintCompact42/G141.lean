import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2820 : BadRow (SharedShell.row 5 6 false 6 3 5 [4,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2821 : BadRow (SharedShell.row 5 6 true 6 3 5 [4,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2822 : BadRow (SharedShell.row 5 6 false 6 3 5 [4,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2823 : BadRow (SharedShell.row 5 6 true 6 3 5 [4,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2824 : BadRow (SharedShell.row 5 6 false 6 3 5 [4,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2825 : BadRow (SharedShell.row 5 6 true 6 3 5 [4,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2826 : BadRow (SharedShell.row 5 6 false 6 3 5 [4,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2827 : BadRow (SharedShell.row 5 6 true 6 3 5 [4,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2828 : BadRow (SharedShell.row 5 6 false 6 3 5 [4,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2829 : BadRow (SharedShell.row 5 6 true 6 3 5 [4,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2830 : BadRow (SharedShell.row 5 6 false 6 3 5 [5,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2831 : BadRow (SharedShell.row 5 6 true 6 3 5 [5,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2832 : BadRow (SharedShell.row 5 6 false 6 3 5 [5,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2833 : BadRow (SharedShell.row 5 6 true 6 3 5 [5,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2834 : BadRow (SharedShell.row 5 6 false 6 3 5 [5,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2835 : BadRow (SharedShell.row 5 6 true 6 3 5 [5,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2836 : BadRow (SharedShell.row 5 6 false 6 3 5 [5,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2837 : BadRow (SharedShell.row 5 6 true 6 3 5 [5,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2838 : BadRow (SharedShell.row 5 6 false 6 3 5 [6,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2839 : BadRow (SharedShell.row 5 6 true 6 3 5 [6,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
