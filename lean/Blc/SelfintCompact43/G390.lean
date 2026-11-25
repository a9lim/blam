import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6240 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [2,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6241 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [2,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6242 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [2,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6243 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [2,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6244 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [2,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6245 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [2,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6246 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [2,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6247 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [2,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6248 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [2,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6249 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [2,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6250 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [2,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6251 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [2,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6252 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [2,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6253 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [2,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6254 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [2,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6255 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [2,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
