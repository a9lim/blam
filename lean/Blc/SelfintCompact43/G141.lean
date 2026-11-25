import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2256 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [0,0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2257 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [0,0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2258 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [0,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2259 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [0,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2260 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [0,0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2261 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [0,0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2262 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [0,0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2263 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [0,0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2264 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [0,0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2265 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [0,0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2266 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [0,1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2267 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [0,1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2268 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [0,1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2269 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [0,1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2270 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [0,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2271 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [0,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
