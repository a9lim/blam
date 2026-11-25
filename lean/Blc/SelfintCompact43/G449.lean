import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7184 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 5 [0,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7185 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 5 [0,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7186 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 5 [0,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7187 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 5 [0,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7188 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 5 [0,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7189 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 5 [0,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7190 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 5 [0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7191 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 5 [0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7192 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 5 [0,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7193 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 5 [0,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7194 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 5 [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7195 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 5 [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7196 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 5 [0,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7197 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 5 [0,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7198 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 5 [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7199 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 5 [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
