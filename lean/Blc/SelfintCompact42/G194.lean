import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3880 : BadRow (SharedShell.row 6 4 false 4 4 5 [1,0,0,0,3]) :=
  row_of_forall (discharge bank [2,2,2,9,2,1,9,1,9,9,9,2,2,2,9,9,9,2,2,1,9,9,9,1,9,9,9,1,9,9,9,9,1,9,9,9,9,1,9,1,9,9,9,9,9,9,1,9,9,9,1,9,9,9,1,9,9,9,9,1,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3881 : BadRow (SharedShell.row 6 4 true 4 4 5 [1,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3882 : BadRow (SharedShell.row 6 4 false 4 4 5 [1,0,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,1,9,9,9,9,9,9,9,9,9,9,9,1,9,9,9,9,1,9,9,9,9,9,1,9,9,9,9,9,9,5,5,5,5,12,11,4] (hard := []) (by decide +kernel) .nil)

theorem g3883 : BadRow (SharedShell.row 6 4 true 4 4 5 [1,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3884 : BadRow (SharedShell.row 6 4 false 4 4 5 [1,0,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,25,9,9,9,9,9,9,9,9,9,9,9,9,9,9,66,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,5,5,5,5,12,11,4] (hard := []) (by decide +kernel) .nil)

theorem g3885 : BadRow (SharedShell.row 6 4 true 4 4 5 [1,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3886 : BadRow (SharedShell.row 6 4 false 4 4 5 [1,0,0,3,0]) :=
  row_of_forall (discharge bank [2,2,2,9,9,2,9,36,9,9,9,2,9,2,2,2,9,9,9,9,2,9,2,9,1,9,9,9,9,9,9,9,9,2,9,2,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3887 : BadRow (SharedShell.row 6 4 true 4 4 5 [1,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3888 : BadRow (SharedShell.row 6 4 false 4 4 5 [1,0,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,1,9,9,9,9,9,9,9,9,9,1,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,9,9,9,9,5,5,5,5,5,5,5,12,12,12,12,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3889 : BadRow (SharedShell.row 6 4 true 4 4 5 [1,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3890 : BadRow (SharedShell.row 6 4 false 4 4 5 [1,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3891 : BadRow (SharedShell.row 6 4 true 4 4 5 [1,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3892 : BadRow (SharedShell.row 6 4 false 4 4 5 [1,0,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,23,9,9,9,9,9,9,9,9,9,9,9,9,9,1,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,5,5,5,5,20,39,12,4,12] (hard := []) (by decide +kernel) .nil)

theorem g3893 : BadRow (SharedShell.row 6 4 true 4 4 5 [1,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3894 : BadRow (SharedShell.row 6 4 false 4 4 5 [1,0,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,62,9,9,9,9,1,9,9,9,9,9,9,9,62,9,9,9,9,9,9,9,9,1,9,1,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,5,5,5,5,5,5,5,12,15,18,3,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3895 : BadRow (SharedShell.row 6 4 true 4 4 5 [1,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3896 : BadRow (SharedShell.row 6 4 false 4 4 5 [1,0,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,5,5,5,5,12,3,3,4,3] (hard := []) (by decide +kernel) .nil)

theorem g3897 : BadRow (SharedShell.row 6 4 true 4 4 5 [1,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3898 : BadRow (SharedShell.row 6 4 false 4 4 5 [1,0,3,0,0]) :=
  row_of_forall (discharge bank [2,2,62,9,9,9,1,9,9,9,2,9,9,2,2,62,9,9,9,9,9,1,9,1,9,9,9,9,9,9,2,9,9,2,9,9,9,9,62,1,9,9,9,9,62,1,9,1,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3899 : BadRow (SharedShell.row 6 4 true 4 4 5 [1,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
