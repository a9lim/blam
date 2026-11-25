import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g48 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 4 [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g49 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 4 [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g50 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 4 [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g51 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 4 [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g52 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 4 [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g53 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 4 [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g54 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 4 [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g55 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 4 [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g56 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 4 [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g57 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 4 [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g58 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 4 [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g59 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 4 [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g60 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g61 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g62 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [0,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g63 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [0,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
