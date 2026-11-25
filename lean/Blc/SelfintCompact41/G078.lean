import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1560 : BadRow (SharedShell.row 6 3 false 3 2 3 [1,0,2]) :=
  row_of_forall (discharge bank [32,31,32,31] (hard := []) (by decide +kernel) .nil)

theorem g1561 : BadRow (SharedShell.row 6 3 true 3 2 3 [1,0,2]) :=
  row_of_forall (discharge bank [32,12,4,32,12,4] (hard := []) (by decide +kernel) .nil)

theorem g1562 : BadRow (SharedShell.row 6 3 false 3 2 3 [1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1563 : BadRow (SharedShell.row 6 3 true 3 2 3 [1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1564 : BadRow (SharedShell.row 6 3 false 3 2 3 [1,2,0]) :=
  row_of_forall (discharge bank [32,31] (hard := []) (by decide +kernel) .nil)

theorem g1565 : BadRow (SharedShell.row 6 3 true 3 2 3 [1,2,0]) :=
  row_of_forall (discharge bank [32,12,4] (hard := []) (by decide +kernel) .nil)

theorem g1566 : BadRow (SharedShell.row 6 3 false 3 2 3 [2,0,1]) :=
  row_of_forall (discharge bank [32,31,32,31] (hard := []) (by decide +kernel) .nil)

theorem g1567 : BadRow (SharedShell.row 6 3 true 3 2 3 [2,0,1]) :=
  row_of_forall (discharge bank [32,12,4,32,12,4] (hard := []) (by decide +kernel) .nil)

theorem g1568 : BadRow (SharedShell.row 6 3 false 3 2 3 [2,1,0]) :=
  row_of_forall (discharge bank [32,31] (hard := []) (by decide +kernel) .nil)

theorem g1569 : BadRow (SharedShell.row 6 3 true 3 2 3 [2,1,0]) :=
  row_of_forall (discharge bank [32,12,4] (hard := []) (by decide +kernel) .nil)

theorem g1570 : BadRow (SharedShell.row 6 3 false 3 2 3 [3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1571 : BadRow (SharedShell.row 6 3 true 3 2 3 [3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1572 : BadRow (SharedShell.row 6 3 false 3 2 4 [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1573 : BadRow (SharedShell.row 6 3 true 3 2 4 [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1574 : BadRow (SharedShell.row 6 3 false 3 2 4 [0,0,1,2]) :=
  row_of_forall (discharge bank [12,12,12,13,12,12,12,13,12,12,12,13,12,12,12,6,18,39,18,18,18,18,18,18,13,18,39,18,12] (hard := []) (by decide +kernel) .nil)

theorem g1575 : BadRow (SharedShell.row 6 3 true 3 2 4 [0,0,1,2]) :=
  row_of_forall (discharge bank [12,1,12,12,13,1,12,1,12,12,13,1,12,1,12,12,13,1,12,1,12,12,6,1,18,5,10,1,18,18,13,18,10,18,12,1,1] (hard := []) (by decide +kernel) .nil)

theorem g1576 : BadRow (SharedShell.row 6 3 false 3 2 4 [0,0,2,1]) :=
  row_of_forall (discharge bank [12,12,12,13,12,12,12,13,12,12,12,13,12,12,12,6,18,7,18,18,18,18,18,18,13,18,7,18,12] (hard := []) (by decide +kernel) .nil)

theorem g1577 : BadRow (SharedShell.row 6 3 true 3 2 4 [0,0,2,1]) :=
  row_of_forall (discharge bank [12,1,12,12,13,1,12,1,12,12,13,1,12,1,12,12,13,1,12,1,12,12,6,1,18,5,11,1,18,18,13,18,11,18,12,1,1] (hard := []) (by decide +kernel) .nil)

theorem g1578 : BadRow (SharedShell.row 6 3 false 3 2 4 [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1579 : BadRow (SharedShell.row 6 3 true 3 2 4 [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
