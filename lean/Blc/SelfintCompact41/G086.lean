import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1720 : BadRow (SharedShell.row 6 3 false 3 3 4 [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1721 : BadRow (SharedShell.row 6 3 true 3 3 4 [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1722 : BadRow (SharedShell.row 6 3 false 3 3 4 [1,0,0,2]) :=
  row_of_forall (discharge bank [31,31,31,13,31,31,31,13,31,31,31,13,31,31,31,13,31,31,31,13] (hard := []) (by decide +kernel) .nil)

theorem g1723 : BadRow (SharedShell.row 6 3 true 3 3 4 [1,0,0,2]) :=
  row_of_forall (discharge bank [31,33,1,1,1,31,33,1,1,1,31,33,1,1,1,31,33,1,1,1,31,33,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g1724 : BadRow (SharedShell.row 6 3 false 3 3 4 [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1725 : BadRow (SharedShell.row 6 3 true 3 3 4 [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1726 : BadRow (SharedShell.row 6 3 false 3 3 4 [1,0,2,0]) :=
  row_of_forall (discharge bank [31,31,31,13,31,31,31,13,31,31,31,13,31,31,31,13,31,31,31,13] (hard := []) (by decide +kernel) .nil)

theorem g1727 : BadRow (SharedShell.row 6 3 true 3 3 4 [1,0,2,0]) :=
  row_of_forall (discharge bank [31,33,1,1,1,31,33,1,1,1,31,33,1,1,1,31,33,1,1,1,31,33,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g1728 : BadRow (SharedShell.row 6 3 false 3 3 4 [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1729 : BadRow (SharedShell.row 6 3 true 3 3 4 [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1730 : BadRow (SharedShell.row 6 3 false 3 3 4 [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1731 : BadRow (SharedShell.row 6 3 true 3 3 4 [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1732 : BadRow (SharedShell.row 6 3 false 3 3 4 [1,2,0,0]) :=
  row_of_forall (discharge bank [31,31,31,13,31,31,31,13,31,31,31,13] (hard := []) (by decide +kernel) .nil)

theorem g1733 : BadRow (SharedShell.row 6 3 true 3 3 4 [1,2,0,0]) :=
  row_of_forall (discharge bank [31,33,1,1,1,31,33,1,1,1,31,33,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g1734 : BadRow (SharedShell.row 6 3 false 3 3 4 [2,0,0,1]) :=
  row_of_forall (discharge bank [31,31,31,13,31,31,31,13,31,31,31,13,31,31,31,13,31,31,31,13] (hard := []) (by decide +kernel) .nil)

theorem g1735 : BadRow (SharedShell.row 6 3 true 3 3 4 [2,0,0,1]) :=
  row_of_forall (discharge bank [31,33,1,1,1,31,33,1,1,1,31,33,1,1,1,31,33,1,1,1,31,33,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g1736 : BadRow (SharedShell.row 6 3 false 3 3 4 [2,0,1,0]) :=
  row_of_forall (discharge bank [31,31,31,13,31,31,31,13,31,31,31,13,31,31,31,13,31,31,31,13] (hard := []) (by decide +kernel) .nil)

theorem g1737 : BadRow (SharedShell.row 6 3 true 3 3 4 [2,0,1,0]) :=
  row_of_forall (discharge bank [31,33,1,1,1,31,33,1,1,1,31,33,1,1,1,31,33,1,1,1,31,33,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g1738 : BadRow (SharedShell.row 6 3 false 3 3 4 [2,1,0,0]) :=
  row_of_forall (discharge bank [31,31,31,13,31,31,31,13,31,31,31,13] (hard := []) (by decide +kernel) .nil)

theorem g1739 : BadRow (SharedShell.row 6 3 true 3 3 4 [2,1,0,0]) :=
  row_of_forall (discharge bank [31,33,1,1,1,31,33,1,1,1,31,33,1,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
