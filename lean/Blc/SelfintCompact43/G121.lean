import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1936 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,5,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1937 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,5,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1938 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,5,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1939 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,5,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1940 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,5,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1941 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,5,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1942 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,6,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1943 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,6,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1944 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1945 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1946 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1947 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1948 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1949 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1950 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1951 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
