import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g64 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [0,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g65 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [0,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g66 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g67 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g68 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [0,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g69 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [0,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g70 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g71 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g72 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [0,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g73 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [0,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g74 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [0,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g75 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [0,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g76 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [0,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g77 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [0,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g78 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g79 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
