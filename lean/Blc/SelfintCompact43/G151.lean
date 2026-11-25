import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2416 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [5,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2417 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [5,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2418 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [6,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2419 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [6,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2420 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,0,0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2421 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,0,0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2422 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,0,0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2423 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,0,0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2424 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,0,0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2425 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,0,0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2426 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,0,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2427 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,0,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2428 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,0,0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2429 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,0,0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2430 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,0,0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2431 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,0,0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
