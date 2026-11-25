import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1904 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,3,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1905 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,3,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1906 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,3,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1907 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,3,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1908 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,3,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1909 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,3,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1910 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,3,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1911 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,3,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1912 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,3,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1913 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,3,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1914 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,3,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1915 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,3,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1916 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,3,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1917 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,3,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1918 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,3,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1919 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,3,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
