import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1200 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1201 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1202 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1203 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1204 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1205 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1206 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1207 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1208 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1209 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1210 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1211 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1212 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1213 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1214 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1215 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
