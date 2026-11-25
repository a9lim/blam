import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3820 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,0,1,0,3]) :=
  row_of_forall (discharge bank [2,9,9,1,1,9,9,2,2,9,9,9,9,9,9,9,9,2,2,2,2,2,2,2,2,9,9,2,2,2,2,63,9,12,9,9,9,1,1,9,9,9,9,9,9,9,9,9,9,2,2,2,9,9,1,11,23,9,1,9,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,1,1,22,22,12,12,4,5,4,5,4,5,4,5,3,3,3,3,3,3,3,3,5,4,5,4,12,4,12,4] (hard := []) (by decide +kernel) .nil)

theorem g3821 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3822 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,0,1,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,9,9,9,1,9,9,9,9,9,9,4,9,9,9,9,9,12,9,9,9,9,2,2,2,9,9,9,1,9,19,19,19,5,5,5,5,5,1,1,1,17,4,5,3,3,41,4] (hard := []) (by decide +kernel) .nil)

theorem g3823 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3824 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,0,1,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,9,9,9,1,9,9,9,9,9,9,9,9,9,9,9,12,9,9,9,9,2,2,2,9,9,9,25,9,9,19,19,19,5,5,5,5,5,23,1,1,20,4,5,3,3,15,4,15,4] (hard := []) (by decide +kernel) .nil)

theorem g3825 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3826 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,0,1,3,0]) :=
  row_of_forall (discharge bank [2,9,9,1,9,2,9,2,9,9,9,9,9,9,2,2,2,2,2,9,9,2,2,63,9,9,2,9,9,9,9,9,9,9,9,2,2,9,9,41,9,5,5,5,5,5,5,5,23,1,22,4,5,3,3,5,4,5,45,9,4,9,4] (hard := []) (by decide +kernel) .nil)

theorem g3827 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3828 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,0,2,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,1,11,9,9,9,9,9,9,9,15,9,9,9,9,9,9,9,9,9,9,2,2,9,9,9,9,11,9,3,9,5,5,5,5,5,5,5,5,5,16,1,1,1,12,15,4,5,4,5,3,3,3,3,12,4,18,4] (hard := []) (by decide +kernel) .nil)

theorem g3829 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3830 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,0,2,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,9,9,9,9,1,20,9,9,9,9,9,9,9,9,9,9,9,9,9,15,9,9,9,9,9,9,2,2,2,9,9,9,9,12,9,17,9,9,19,19,19,5,5,5,5,5,5,5,5,1,1,16,1,28,15,4,5,4,5,3,3,3,3,57,4,18,4,41,4] (hard := []) (by decide +kernel) .nil)

theorem g3831 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3832 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,0,2,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,2,9,9,9,9,9,9,5,5,5,1,23,1,1,20,15,9,4,9,4] (hard := []) (by decide +kernel) .nil)

theorem g3833 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3834 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,0,3,0,1]) :=
  row_of_forall (discharge bank [2,9,9,54,1,9,9,2,9,2,2,2,9,9,2,9,54,9,9,9,2,9,2,2,2,2,2,2,2,2,9,9,2,2,2,2,24,9,3,9,9,9,9,9,9,9,9,9,9,2,2,2,9,9,1,22,5,5,5,5,5,5,5,5,5,5,5,16,1,22,22,4,5,4,5,3,3,3,3,5,4,5,4] (hard := []) (by decide +kernel) .nil)

theorem g3835 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3836 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,0,3,1,0]) :=
  row_of_forall (discharge bank [9,9,54,9,9,9,2,9,9,9,9,2,9,2,2,2,2,9,9,2,2,1,9,9,2,9,9,9,9,9,9,9,9,9,2,9,9,1,9,5,5,5,5,5,5,5,5,1,1,22,4,5,3,3,5,4,5,41,9,4,9,4] (hard := []) (by decide +kernel) .nil)

theorem g3837 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3838 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3839 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
