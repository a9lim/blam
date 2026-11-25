import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1328 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1329 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1330 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1331 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1332 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1333 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1334 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1335 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1336 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1337 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1338 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1339 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1340 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1341 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1342 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1343 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
