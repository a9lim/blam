import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1700 : BadRow (SharedShell.row 6 3 false 3 3 3 [3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1701 : BadRow (SharedShell.row 6 3 true 3 3 3 [3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1702 : BadRow (SharedShell.row 6 3 false 3 3 4 [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1703 : BadRow (SharedShell.row 6 3 true 3 3 4 [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1704 : BadRow (SharedShell.row 6 3 false 3 3 4 [0,0,1,2]) :=
  row_of_forall (discharge bank [31,31,31,13,31,31,31,13,31,31,31,13,31,31,31,13,31,31,31,19] (hard := []) (by decide +kernel) .nil)

theorem g1705 : BadRow (SharedShell.row 6 3 true 3 3 4 [0,0,1,2]) :=
  row_of_forall (discharge bank [31,33,1,1,1,31,33,1,1,1,31,33,1,1,1,31,33,1,1,1,31,33,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g1706 : BadRow (SharedShell.row 6 3 false 3 3 4 [0,0,2,1]) :=
  row_of_forall (discharge bank [31,31,31,13,31,31,31,13,31,31,31,13,31,31,31,13,31,31,31,19] (hard := []) (by decide +kernel) .nil)

theorem g1707 : BadRow (SharedShell.row 6 3 true 3 3 4 [0,0,2,1]) :=
  row_of_forall (discharge bank [31,33,1,1,1,31,33,1,1,1,31,33,1,1,1,31,33,1,1,1,31,33,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g1708 : BadRow (SharedShell.row 6 3 false 3 3 4 [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1709 : BadRow (SharedShell.row 6 3 true 3 3 4 [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1710 : BadRow (SharedShell.row 6 3 false 3 3 4 [0,1,0,2]) :=
  row_of_forall (discharge bank [31,31,31,13,31,31,31,13,31,31,31,13,31,31,31,13,31,31,31,13,31,31,31,13,31,31,31,13,31,31,31,19,31,31,31,19] (hard := []) (by decide +kernel) .nil)

theorem g1711 : BadRow (SharedShell.row 6 3 true 3 3 4 [0,1,0,2]) :=
  row_of_forall (discharge bank [31,33,1,1,1,31,33,1,1,1,31,33,1,1,1,31,33,1,1,1,31,33,1,1,1,31,33,1,1,1,31,33,1,1,1,31,33,1,1,1,31,33,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g1712 : BadRow (SharedShell.row 6 3 false 3 3 4 [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1713 : BadRow (SharedShell.row 6 3 true 3 3 4 [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1714 : BadRow (SharedShell.row 6 3 false 3 3 4 [0,1,2,0]) :=
  row_of_forall (discharge bank [31,31,31,13,31,31,31,13,31,31,31,13,31,31,31,13,31,31,31,19] (hard := []) (by decide +kernel) .nil)

theorem g1715 : BadRow (SharedShell.row 6 3 true 3 3 4 [0,1,2,0]) :=
  row_of_forall (discharge bank [31,33,1,1,1,31,33,1,1,1,31,33,1,1,1,31,33,1,1,1,31,33,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g1716 : BadRow (SharedShell.row 6 3 false 3 3 4 [0,2,0,1]) :=
  row_of_forall (discharge bank [31,31,31,13,31,31,31,13,31,31,31,13,31,31,31,13,31,31,31,13,31,31,31,13,31,31,31,13,31,31,31,19,31,31,31,19] (hard := []) (by decide +kernel) .nil)

theorem g1717 : BadRow (SharedShell.row 6 3 true 3 3 4 [0,2,0,1]) :=
  row_of_forall (discharge bank [31,33,1,1,1,31,33,1,1,1,31,33,1,1,1,31,33,1,1,1,31,33,1,1,1,31,33,1,1,1,31,33,1,1,1,31,33,1,1,1,31,33,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g1718 : BadRow (SharedShell.row 6 3 false 3 3 4 [0,2,1,0]) :=
  row_of_forall (discharge bank [31,31,31,13,31,31,31,13,31,31,31,13,31,31,31,13,31,31,31,19] (hard := []) (by decide +kernel) .nil)

theorem g1719 : BadRow (SharedShell.row 6 3 true 3 3 4 [0,2,1,0]) :=
  row_of_forall (discharge bank [31,33,1,1,1,31,33,1,1,1,31,33,1,1,1,31,33,1,1,1,31,33,1,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
