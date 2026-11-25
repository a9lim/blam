import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g0 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 3 [0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 3 [0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 3 [0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 3 [0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 3 [0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 3 [0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 3 [0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 3 [0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 3 [1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g9 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 3 [1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g10 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 3 [1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g11 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 3 [1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g12 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 3 [1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g13 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 3 [1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g14 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 3 [2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g15 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 3 [2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
