import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2272 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [0,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2273 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [0,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2274 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [0,1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2275 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [0,1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2276 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [0,1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2277 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [0,1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2278 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [0,2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2279 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [0,2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2280 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [0,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2281 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [0,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2282 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2283 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2284 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [0,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2285 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [0,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2286 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [0,2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2287 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [0,2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
