import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1920 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,3,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1921 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,3,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1922 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,3,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1923 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,3,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1924 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,4,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1925 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,4,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1926 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,4,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1927 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,4,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1928 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,4,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1929 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,4,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1930 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,4,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1931 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,4,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1932 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,4,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1933 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,4,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1934 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,4,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1935 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,4,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
