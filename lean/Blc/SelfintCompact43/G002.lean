import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g32 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 4 [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g33 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 4 [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g34 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 4 [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g35 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 4 [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g36 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 4 [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g37 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 4 [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g38 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 4 [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g39 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 4 [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g40 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 4 [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g41 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 4 [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g42 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 4 [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g43 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 4 [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g44 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 4 [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g45 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 4 [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g46 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 4 [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g47 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 4 [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
