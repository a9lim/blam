import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1232 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1233 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1234 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1235 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1236 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1237 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1238 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1239 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1240 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1241 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1242 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1243 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1244 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1245 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1246 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1247 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
