import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2320 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [1,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2321 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [1,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2322 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [1,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2323 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [1,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2324 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2325 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2326 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [1,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2327 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [1,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2328 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [1,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2329 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [1,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2330 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [1,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2331 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [1,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2332 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2333 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2334 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2335 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
