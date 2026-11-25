import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1600 : BadRow (SharedShell.row 6 3 false 3 2 4 [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1601 : BadRow (SharedShell.row 6 3 true 3 2 4 [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1602 : BadRow (SharedShell.row 6 3 false 3 2 4 [1,2,0,0]) :=
  row_of_forall (discharge bank [12,12,12,13,12,12,12,13,12,12,12,13] (hard := []) (by decide +kernel) .nil)

theorem g1603 : BadRow (SharedShell.row 6 3 true 3 2 4 [1,2,0,0]) :=
  row_of_forall (discharge bank [12,1,12,12,13,1,12,1,12,12,13,1,12,1,12,12,13,1] (hard := []) (by decide +kernel) .nil)

theorem g1604 : BadRow (SharedShell.row 6 3 false 3 2 4 [2,0,0,1]) :=
  row_of_forall (discharge bank [12,12,12,13,12,12,12,13,12,12,12,13,12,12,12,13,12,12,12,13] (hard := []) (by decide +kernel) .nil)

theorem g1605 : BadRow (SharedShell.row 6 3 true 3 2 4 [2,0,0,1]) :=
  row_of_forall (discharge bank [12,1,12,12,13,1,12,1,12,12,13,1,12,1,12,12,13,1,12,1,12,12,13,1,12,1,12,12,13,1] (hard := []) (by decide +kernel) .nil)

theorem g1606 : BadRow (SharedShell.row 6 3 false 3 2 4 [2,0,1,0]) :=
  row_of_forall (discharge bank [12,12,12,13,12,12,12,13,12,12,12,13,12,12,12,13,12,12,12,13] (hard := []) (by decide +kernel) .nil)

theorem g1607 : BadRow (SharedShell.row 6 3 true 3 2 4 [2,0,1,0]) :=
  row_of_forall (discharge bank [12,1,12,12,13,1,12,1,12,12,13,1,12,1,12,12,13,1,12,1,12,12,13,1,12,1,12,12,13,1] (hard := []) (by decide +kernel) .nil)

theorem g1608 : BadRow (SharedShell.row 6 3 false 3 2 4 [2,1,0,0]) :=
  row_of_forall (discharge bank [12,12,12,13,12,12,12,13,12,12,12,13] (hard := []) (by decide +kernel) .nil)

theorem g1609 : BadRow (SharedShell.row 6 3 true 3 2 4 [2,1,0,0]) :=
  row_of_forall (discharge bank [12,1,12,12,13,1,12,1,12,12,13,1,12,1,12,12,13,1] (hard := []) (by decide +kernel) .nil)

theorem g1610 : BadRow (SharedShell.row 6 3 false 3 2 4 [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1611 : BadRow (SharedShell.row 6 3 true 3 2 4 [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1612 : BadRow (SharedShell.row 6 3 false 3 2 5 [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1613 : BadRow (SharedShell.row 6 3 true 3 2 5 [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1614 : BadRow (SharedShell.row 6 3 false 3 2 5 [0,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1615 : BadRow (SharedShell.row 6 3 true 3 2 5 [0,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1616 : BadRow (SharedShell.row 6 3 false 3 2 5 [0,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1617 : BadRow (SharedShell.row 6 3 true 3 2 5 [0,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1618 : BadRow (SharedShell.row 6 3 false 3 2 5 [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1619 : BadRow (SharedShell.row 6 3 true 3 2 5 [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
