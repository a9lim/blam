import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g820 : BadRow (SharedShell.row 5 5 false 5 2 4 [0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g821 : BadRow (SharedShell.row 5 5 true 5 2 4 [0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g822 : BadRow (SharedShell.row 5 5 false 5 2 4 [0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g823 : BadRow (SharedShell.row 5 5 true 5 2 4 [0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g824 : BadRow (SharedShell.row 5 5 false 5 2 4 [1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g825 : BadRow (SharedShell.row 5 5 true 5 2 4 [1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g826 : BadRow (SharedShell.row 5 5 false 5 2 4 [1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g827 : BadRow (SharedShell.row 5 5 true 5 2 4 [1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g828 : BadRow (SharedShell.row 5 5 false 5 2 4 [1,0,2,2]) :=
  row_of_forall (discharge bank [1,18,18,34,18,1,18,12,1,18,18,34,18,1,18,12,1,18,18,34,18,1,18,12,1,18,18,34,18,1,18,12,1,18,18,34,18,1,18,12] (hard := []) (by decide +kernel) .nil)

theorem g829 : BadRow (SharedShell.row 5 5 true 5 2 4 [1,0,2,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g830 : BadRow (SharedShell.row 5 5 false 5 2 4 [1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g831 : BadRow (SharedShell.row 5 5 true 5 2 4 [1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g832 : BadRow (SharedShell.row 5 5 false 5 2 4 [1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g833 : BadRow (SharedShell.row 5 5 true 5 2 4 [1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g834 : BadRow (SharedShell.row 5 5 false 5 2 4 [1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g835 : BadRow (SharedShell.row 5 5 true 5 2 4 [1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g836 : BadRow (SharedShell.row 5 5 false 5 2 4 [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g837 : BadRow (SharedShell.row 5 5 true 5 2 4 [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g838 : BadRow (SharedShell.row 5 5 false 5 2 4 [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g839 : BadRow (SharedShell.row 5 5 true 5 2 4 [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
