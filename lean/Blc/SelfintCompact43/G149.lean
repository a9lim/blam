import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2384 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [3,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2385 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [3,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2386 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [3,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2387 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [3,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2388 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [3,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2389 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [3,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2390 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [3,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2391 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [3,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2392 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [3,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2393 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [3,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2394 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [3,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2395 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [3,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2396 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [3,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2397 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [3,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2398 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [3,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2399 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [3,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
