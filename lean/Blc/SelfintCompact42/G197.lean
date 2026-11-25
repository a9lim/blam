import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3940 : BadRow (SharedShell.row 6 4 false 4 4 5 [3,0,0,0,1]) :=
  row_of_forall (discharge bank [9,9,1,9,9,9,9,9,9,3,9,9,9,1,9,9,9,19,9,9,9,9,3,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3941 : BadRow (SharedShell.row 6 4 true 4 4 5 [3,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3942 : BadRow (SharedShell.row 6 4 false 4 4 5 [3,0,0,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,3,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3943 : BadRow (SharedShell.row 6 4 true 4 4 5 [3,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3944 : BadRow (SharedShell.row 6 4 false 4 4 5 [3,0,1,0,0]) :=
  row_of_forall (discharge bank [1,9,9,9,1,9,9,9,9,9,19,9,9,9,9,9,19,9,54,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3945 : BadRow (SharedShell.row 6 4 true 4 4 5 [3,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3946 : BadRow (SharedShell.row 6 4 false 4 4 5 [3,1,0,0,0]) :=
  row_of_forall (discharge bank [1,9,9,9,1,9,9,9,9,1,9,9,9,19,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3947 : BadRow (SharedShell.row 6 4 true 4 4 5 [3,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3948 : BadRow (SharedShell.row 6 4 false 4 4 5 [4,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3949 : BadRow (SharedShell.row 6 4 true 4 4 5 [4,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
