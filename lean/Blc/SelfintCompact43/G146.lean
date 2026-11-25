import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2336 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [1,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2337 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [1,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2338 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [1,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2339 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [1,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2340 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [1,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2341 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [1,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2342 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [1,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2343 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [1,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2344 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [1,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2345 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [1,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2346 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [1,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2347 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [1,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2348 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [1,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2349 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [1,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2350 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [2,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2351 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [2,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
