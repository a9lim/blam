import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g80 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [0,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g81 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [0,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g82 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g83 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g84 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [0,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g85 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [0,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g86 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g87 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g88 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g89 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g90 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [0,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g91 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [0,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g92 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [0,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g93 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [0,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g94 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [0,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g95 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [0,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
