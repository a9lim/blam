import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1820 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,0,4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1821 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,0,4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1822 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,0,4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1823 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,0,4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1824 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,0,4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1825 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,0,4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1826 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,0,5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1827 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,0,5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1828 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,0,5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1829 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,0,5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1830 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,0,6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1831 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,0,6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1832 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,1,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1833 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,1,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1834 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,1,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1835 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,1,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1836 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,1,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1837 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,1,0,2,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,23,1,27,12,11] (hard := []) (by decide +kernel) .nil)

theorem g1838 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,1,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1839 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,1,0,3,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,12,27,12] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
