import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2352 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [2,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2353 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [2,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2354 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2355 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2356 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [2,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2357 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [2,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2358 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [2,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2359 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [2,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2360 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [2,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2361 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [2,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2362 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2363 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2364 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2365 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2366 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [2,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2367 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [2,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
