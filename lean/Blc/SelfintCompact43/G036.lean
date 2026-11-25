import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g576 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 4 [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g577 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 4 [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g578 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 4 [1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g579 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 4 [1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g580 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 4 [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g581 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 4 [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g582 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 4 [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g583 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 4 [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g584 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 4 [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g585 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 4 [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g586 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 4 [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g587 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 4 [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g588 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 4 [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g589 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 4 [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g590 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 4 [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g591 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 4 [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
