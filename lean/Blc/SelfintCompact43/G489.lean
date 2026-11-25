import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7824 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,2,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7825 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,2,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7826 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,2,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7827 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,2,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7828 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,2,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7829 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,2,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7830 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7831 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7832 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [1,0,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7833 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [1,0,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7834 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [1,0,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7835 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [1,0,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7836 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [1,0,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7837 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [1,0,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7838 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [1,0,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7839 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [1,0,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
