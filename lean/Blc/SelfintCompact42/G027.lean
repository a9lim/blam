import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g540 : BadRow (SharedShell.row 5 6 false 4 3 4 [0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g541 : BadRow (SharedShell.row 5 6 true 4 3 4 [0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g542 : BadRow (SharedShell.row 5 6 false 4 3 4 [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g543 : BadRow (SharedShell.row 5 6 true 4 3 4 [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g544 : BadRow (SharedShell.row 5 6 false 4 3 4 [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g545 : BadRow (SharedShell.row 5 6 true 4 3 4 [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g546 : BadRow (SharedShell.row 5 6 false 4 3 4 [0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g547 : BadRow (SharedShell.row 5 6 true 4 3 4 [0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g548 : BadRow (SharedShell.row 5 6 false 4 3 4 [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g549 : BadRow (SharedShell.row 5 6 true 4 3 4 [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g550 : BadRow (SharedShell.row 5 6 false 4 3 4 [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g551 : BadRow (SharedShell.row 5 6 true 4 3 4 [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g552 : BadRow (SharedShell.row 5 6 false 4 3 4 [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g553 : BadRow (SharedShell.row 5 6 true 4 3 4 [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g554 : BadRow (SharedShell.row 5 6 false 4 3 4 [0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g555 : BadRow (SharedShell.row 5 6 true 4 3 4 [0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g556 : BadRow (SharedShell.row 5 6 false 4 3 4 [0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g557 : BadRow (SharedShell.row 5 6 true 4 3 4 [0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g558 : BadRow (SharedShell.row 5 6 false 4 3 4 [0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g559 : BadRow (SharedShell.row 5 6 true 4 3 4 [0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
