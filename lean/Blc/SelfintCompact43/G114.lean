import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1824 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,0,4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1825 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,0,4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1826 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,0,5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1827 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,0,5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1828 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,0,5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1829 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,0,5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1830 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,0,6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1831 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,0,6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1832 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,1,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1833 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,1,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1834 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,1,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1835 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,1,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1836 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,1,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1837 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,1,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1838 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,1,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1839 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,1,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
