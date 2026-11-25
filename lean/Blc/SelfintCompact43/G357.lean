import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5712 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5713 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5714 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5715 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5716 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5717 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5718 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5719 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5720 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5721 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5722 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5723 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5724 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5725 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5726 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5727 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
