import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g608 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g609 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g610 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g611 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g612 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g613 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g614 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g615 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g616 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g617 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g618 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g619 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g620 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g621 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g622 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g623 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
