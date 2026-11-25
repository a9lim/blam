import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7840 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [1,0,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7841 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [1,0,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7842 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [1,0,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7843 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [1,0,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7844 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [1,0,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7845 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [1,0,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7846 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [1,0,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7847 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [1,0,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7848 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [1,0,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7849 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [1,0,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7850 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [1,0,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7851 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [1,0,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7852 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [1,1,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7853 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [1,1,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7854 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [1,1,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7855 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [1,1,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
