import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4752 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [4,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4753 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [4,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4754 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [5,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4755 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [5,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4756 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [5,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4757 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [5,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4758 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [5,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4759 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [5,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4760 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [5,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4761 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [5,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4762 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [5,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4763 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [5,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4764 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [5,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4765 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [5,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4766 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [5,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4767 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [5,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
