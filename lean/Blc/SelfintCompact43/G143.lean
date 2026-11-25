import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2288 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [0,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2289 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [0,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2290 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [0,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2291 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [0,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2292 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [0,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2293 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [0,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2294 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [0,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2295 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [0,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2296 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [0,4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2297 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [0,4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2298 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [0,4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2299 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [0,4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2300 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [0,4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2301 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [0,4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2302 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [0,5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2303 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [0,5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
