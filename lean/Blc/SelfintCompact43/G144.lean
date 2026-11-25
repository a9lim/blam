import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2304 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [0,5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2305 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [0,5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2306 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [0,6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2307 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [0,6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2308 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [1,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2309 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [1,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2310 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [1,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2311 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [1,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2312 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [1,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2313 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [1,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2314 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [1,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2315 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [1,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2316 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [1,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2317 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [1,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2318 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [1,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2319 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [1,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
