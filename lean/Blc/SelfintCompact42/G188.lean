import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3760 : BadRow (SharedShell.row 6 4 false 4 4 4 [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3761 : BadRow (SharedShell.row 6 4 true 4 4 4 [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3762 : BadRow (SharedShell.row 6 4 false 4 4 4 [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3763 : BadRow (SharedShell.row 6 4 true 4 4 4 [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3764 : BadRow (SharedShell.row 6 4 false 4 4 4 [0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3765 : BadRow (SharedShell.row 6 4 true 4 4 4 [0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3766 : BadRow (SharedShell.row 6 4 false 4 4 4 [0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3767 : BadRow (SharedShell.row 6 4 true 4 4 4 [0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3768 : BadRow (SharedShell.row 6 4 false 4 4 4 [0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3769 : BadRow (SharedShell.row 6 4 true 4 4 4 [0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3770 : BadRow (SharedShell.row 6 4 false 4 4 4 [1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3771 : BadRow (SharedShell.row 6 4 true 4 4 4 [1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3772 : BadRow (SharedShell.row 6 4 false 4 4 4 [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3773 : BadRow (SharedShell.row 6 4 true 4 4 4 [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3774 : BadRow (SharedShell.row 6 4 false 4 4 4 [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3775 : BadRow (SharedShell.row 6 4 true 4 4 4 [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3776 : BadRow (SharedShell.row 6 4 false 4 4 4 [1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3777 : BadRow (SharedShell.row 6 4 true 4 4 4 [1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3778 : BadRow (SharedShell.row 6 4 false 4 4 4 [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3779 : BadRow (SharedShell.row 6 4 true 4 4 4 [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
