import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2208 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 3 [0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2209 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 3 [0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2210 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 3 [1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2211 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 3 [1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2212 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 3 [1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2213 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 3 [1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2214 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 3 [1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2215 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 3 [1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2216 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 3 [1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2217 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 3 [1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2218 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 3 [1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2219 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 3 [1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2220 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 3 [1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2221 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 3 [1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2222 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 3 [2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2223 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 3 [2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
