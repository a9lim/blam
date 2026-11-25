import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2368 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2369 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2370 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2371 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2372 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2373 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2374 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [2,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2375 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [2,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2376 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [2,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2377 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [2,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2378 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [2,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2379 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [2,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2380 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [3,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2381 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [3,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2382 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [3,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2383 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [3,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
