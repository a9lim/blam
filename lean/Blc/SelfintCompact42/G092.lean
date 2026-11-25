import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1840 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,1,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1841 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,1,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1842 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,1,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1843 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,1,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1844 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,1,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1845 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,1,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1846 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,1,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1847 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,1,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1848 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1849 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1850 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,1,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1851 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,1,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1852 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,1,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1853 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,1,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1854 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,1,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1855 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,1,2,0,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,18,18,3,15,3] (hard := []) (by decide +kernel) .nil)

theorem g1856 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1857 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1858 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1859 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
