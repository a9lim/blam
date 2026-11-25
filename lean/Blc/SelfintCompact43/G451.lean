import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7216 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 5 [1,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7217 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 5 [1,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7218 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 5 [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7219 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 5 [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7220 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 5 [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7221 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 5 [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7222 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 5 [1,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7223 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 5 [1,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7224 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 5 [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7225 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 5 [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7226 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 5 [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7227 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 5 [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7228 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 5 [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7229 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 5 [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7230 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 5 [1,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7231 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 5 [1,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
