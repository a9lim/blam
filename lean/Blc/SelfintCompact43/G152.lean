import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2432 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,0,0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2433 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,0,0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2434 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,0,1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2435 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,0,1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2436 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,0,1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2437 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,0,1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2438 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,0,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2439 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,0,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2440 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,0,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2441 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,0,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2442 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,0,1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2443 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,0,1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2444 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,0,1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2445 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,0,1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2446 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,0,2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2447 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,0,2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
