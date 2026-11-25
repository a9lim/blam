import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g320 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g321 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g322 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g323 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g324 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g325 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g326 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g327 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g328 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g329 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g330 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g331 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g332 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g333 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g334 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g335 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
