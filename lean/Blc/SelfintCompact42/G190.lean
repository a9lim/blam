import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3800 : BadRow (SharedShell.row 6 4 false 4 4 4 [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3801 : BadRow (SharedShell.row 6 4 true 4 4 4 [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3802 : BadRow (SharedShell.row 6 4 false 4 4 4 [3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3803 : BadRow (SharedShell.row 6 4 true 4 4 4 [3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3804 : BadRow (SharedShell.row 6 4 false 4 4 4 [3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3805 : BadRow (SharedShell.row 6 4 true 4 4 4 [3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3806 : BadRow (SharedShell.row 6 4 false 4 4 4 [3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3807 : BadRow (SharedShell.row 6 4 true 4 4 4 [3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3808 : BadRow (SharedShell.row 6 4 false 4 4 4 [4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3809 : BadRow (SharedShell.row 6 4 true 4 4 4 [4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3810 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3811 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3812 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,0,0,1,3]) :=
  row_of_forall (discharge bank [9,1,9,9,9,1,9,9,9,2,2,2,2,9,2,2,11,9,9,12,9,9,9,12,9,9,9,2,9,12,1,9,5,5,5,5,5,5,5,5,5,1,22,12,4,5,4,5,3,3,3,3,5,4,1,4] (hard := []) (by decide +kernel) .nil)

theorem g3813 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3814 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,0,0,2,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,9,9,12,12,9,9,9,11,9,12,9,9,9,9,4,9,12,9,9,9,2,9,9,3,9,12,9,5,5,5,5,5,5,5,5,1,1,12,12,4,5,4,5,3,3,3,3,1,4,1,4] (hard := []) (by decide +kernel) .nil)

theorem g3815 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3816 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,0,0,3,1]) :=
  row_of_forall (discharge bank [2,9,1,9,2,2,2,9,2,1,9,1,9,9,9,2,2,2,2,2,9,2,2,3,9,9,11,9,9,12,9,12,9,9,9,2,2,9,11,18,9,5,5,5,5,5,5,5,5,5,1,22,12,4,5,4,5,3,3,3,3,5,4,1,4] (hard := []) (by decide +kernel) .nil)

theorem g3817 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3818 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3819 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
