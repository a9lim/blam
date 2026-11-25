import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1580 : BadRow (SharedShell.row 6 3 false 3 2 4 [0,1,0,2]) :=
  row_of_forall (discharge bank [12,12,12,13,12,12,12,13,12,12,12,13,12,12,12,13,12,12,12,13,12,12,12,6,12,12,12,6,18,14,18,18,18,18,18,18,13,18,14,18,12,18,26,18,18,18,18,18,18,13,18,26,18,12] (hard := []) (by decide +kernel) .nil)

theorem g1581 : BadRow (SharedShell.row 6 3 true 3 2 4 [0,1,0,2]) :=
  row_of_forall (discharge bank [12,1,12,12,13,1,12,1,12,12,13,1,12,1,12,12,13,1,12,1,12,12,13,1,12,1,12,12,13,1,12,1,12,12,6,1,12,1,12,12,6,1,18,5,11,1,18,18,13,18,11,18,12,1,1,18,5,11,1,18,18,13,18,11,18,12,1,1] (hard := []) (by decide +kernel) .nil)

theorem g1582 : BadRow (SharedShell.row 6 3 false 3 2 4 [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1583 : BadRow (SharedShell.row 6 3 true 3 2 4 [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1584 : BadRow (SharedShell.row 6 3 false 3 2 4 [0,1,2,0]) :=
  row_of_forall (discharge bank [12,12,12,13,12,12,12,13,12,12,12,13,12,12,12,6,18,14,18,18,18,18,18,18,13,18,14,18,12] (hard := []) (by decide +kernel) .nil)

theorem g1585 : BadRow (SharedShell.row 6 3 true 3 2 4 [0,1,2,0]) :=
  row_of_forall (discharge bank [12,1,12,12,13,1,12,1,12,12,13,1,12,1,12,12,13,1,12,1,12,12,6,1,18,5,14,1,18,18,13,18,14,18,12,1,1] (hard := []) (by decide +kernel) .nil)

theorem g1586 : BadRow (SharedShell.row 6 3 false 3 2 4 [0,2,0,1]) :=
  row_of_forall (discharge bank [12,12,12,13,12,12,12,13,12,12,12,13,12,12,12,13,12,12,12,13,12,12,12,6,12,12,12,6,18,14,18,18,18,18,18,18,13,18,14,18,12,18,7,18,18,18,18,18,18,13,18,7,18,12] (hard := []) (by decide +kernel) .nil)

theorem g1587 : BadRow (SharedShell.row 6 3 true 3 2 4 [0,2,0,1]) :=
  row_of_forall (discharge bank [12,1,12,12,13,1,12,1,12,12,13,1,12,1,12,12,13,1,12,1,12,12,13,1,12,1,12,12,13,1,12,1,12,12,6,1,12,1,12,12,6,1,18,5,10,1,18,18,13,18,10,18,12,1,1,18,5,7,1,18,18,13,18,7,18,12,1,1] (hard := []) (by decide +kernel) .nil)

theorem g1588 : BadRow (SharedShell.row 6 3 false 3 2 4 [0,2,1,0]) :=
  row_of_forall (discharge bank [12,12,12,13,12,12,12,13,12,12,12,13,12,12,12,6,18,48,18,18,18,18,18,18,13,18,48,18,12] (hard := []) (by decide +kernel) .nil)

theorem g1589 : BadRow (SharedShell.row 6 3 true 3 2 4 [0,2,1,0]) :=
  row_of_forall (discharge bank [12,1,12,12,13,1,12,1,12,12,13,1,12,1,12,12,13,1,12,1,12,12,6,1,18,5,11,1,18,18,13,18,11,18,12,1,1] (hard := []) (by decide +kernel) .nil)

theorem g1590 : BadRow (SharedShell.row 6 3 false 3 2 4 [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1591 : BadRow (SharedShell.row 6 3 true 3 2 4 [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1592 : BadRow (SharedShell.row 6 3 false 3 2 4 [1,0,0,2]) :=
  row_of_forall (discharge bank [12,12,12,13,12,12,12,13,12,12,12,13,12,12,12,13,12,12,12,13] (hard := []) (by decide +kernel) .nil)

theorem g1593 : BadRow (SharedShell.row 6 3 true 3 2 4 [1,0,0,2]) :=
  row_of_forall (discharge bank [12,1,12,12,13,1,12,1,12,12,13,1,12,1,12,12,13,1,12,1,12,12,13,1,12,1,12,12,13,1] (hard := []) (by decide +kernel) .nil)

theorem g1594 : BadRow (SharedShell.row 6 3 false 3 2 4 [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1595 : BadRow (SharedShell.row 6 3 true 3 2 4 [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1596 : BadRow (SharedShell.row 6 3 false 3 2 4 [1,0,2,0]) :=
  row_of_forall (discharge bank [12,12,12,13,12,12,12,13,12,12,12,13,12,12,12,13,12,12,12,13] (hard := []) (by decide +kernel) .nil)

theorem g1597 : BadRow (SharedShell.row 6 3 true 3 2 4 [1,0,2,0]) :=
  row_of_forall (discharge bank [12,1,12,12,13,1,12,1,12,12,13,1,12,1,12,12,13,1,12,1,12,12,13,1,12,1,12,12,13,1] (hard := []) (by decide +kernel) .nil)

theorem g1598 : BadRow (SharedShell.row 6 3 false 3 2 4 [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1599 : BadRow (SharedShell.row 6 3 true 3 2 4 [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
