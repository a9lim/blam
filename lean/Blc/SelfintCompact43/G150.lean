import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2400 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [4,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2401 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [4,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2402 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [4,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2403 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [4,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2404 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [4,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2405 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [4,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2406 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [4,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2407 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [4,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2408 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [4,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2409 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [4,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2410 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [4,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2411 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [4,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2412 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [5,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2413 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [5,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2414 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [5,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2415 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [5,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
