import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3860 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,2,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,9,9,9,9,9,9,9,62,9,9,9,12,9,9,9,9,9,1,1,9,9,9,9,2,2,9,9,9,9,9,5,5,5,5,5,1,14,14,14,14] (hard := []) (by decide +kernel) .nil)

theorem g3861 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3862 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,2,0,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,62,9,9,9,9,12,9,9,9,9,9,9,9,2,2,2,2,2,2,9,9,9,9,9,9,9,9,9,9,9,9,19,19,19,19,19,5,5,5,5,5,5,5,5,1,1,1,14,14,1,14,14,14,14,20,18,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3863 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3864 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,2,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,2,2,9,9,9,9,9,9,9,5,5,5,1,1,14,1,14,20,18,9,4,9,4] (hard := []) (by decide +kernel) .nil)

theorem g3865 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3866 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,2,1,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,9,9,9,9,12,9,9,9,9,12,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,2,2,2,2,2,2,2,9,9,9,9,9,9,9,9,9,19,19,19,19,19,5,5,5,5,5,12,12,61,14,12,14,14,14,26,4] (hard := []) (by decide +kernel) .nil)

theorem g3867 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3868 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,2,1,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,2,2,2,2,9,9,9,9,9,9,9,9,9,19,19,19,5,5,5,5,24,12,61,14,14,30,14,28,18,9,4,9,4] (hard := []) (by decide +kernel) .nil)

theorem g3869 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3870 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,2,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2,12,62,9,9,9,12,9,1,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3871 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3872 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,3,0,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,2,9,9,2,2,62,9,9,9,1,9,9,9,2,9,9,2,2,2,2,2,9,9,9,9,9,9,9,9,62,12,9,9,9,9,5,5,5,5,5,5,5,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem g3873 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3874 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,3,0,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,2,9,9,9,9,9,9,9,2,9,9,2,2,2,2,2,9,9,9,9,9,9,9,9,2,2,9,9,9,9,9,9,9,9,9,5,5,5,5,5,5,5,5,5,5,5,5,5,9,4,9,4] (hard := []) (by decide +kernel) .nil)

theorem g3875 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3876 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,3,1,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,1,9,9,9,1,9,9,9,9,9,9,2,2,2,9,9,9,9,9,2,12,9,9,9,12,9,9,9,9,9,5,5,5,5,5,5,5,5,9,4] (hard := []) (by decide +kernel) .nil)

theorem g3877 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3878 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3879 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
