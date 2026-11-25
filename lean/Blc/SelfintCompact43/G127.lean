import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2032 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2033 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2034 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2035 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2036 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2037 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2038 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2039 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2040 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2041 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2042 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2043 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2044 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2045 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2046 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2047 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
