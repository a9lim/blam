import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1344 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1345 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1346 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1347 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1348 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1349 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1350 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1351 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1352 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1353 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1354 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1355 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1356 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1357 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1358 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1359 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
