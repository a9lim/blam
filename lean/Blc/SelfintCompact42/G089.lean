import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1780 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,0,0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1781 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,0,0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1782 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,0,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1783 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,0,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1784 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,0,0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1785 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,0,0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1786 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,0,0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1787 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,0,0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1788 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,0,0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1789 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,0,0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1790 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,0,1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1791 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,0,1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1792 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,0,1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1793 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,0,1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1794 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,0,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1795 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,0,1,2,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,23,26,11] (hard := []) (by decide +kernel) .nil)

theorem g1796 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,0,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1797 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,0,1,3,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1798 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,0,1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1799 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,0,1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
