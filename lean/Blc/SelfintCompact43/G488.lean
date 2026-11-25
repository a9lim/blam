import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7808 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7809 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7810 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7811 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7812 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,1,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7813 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,1,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7814 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7815 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7816 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7817 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7818 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7819 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7820 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,1,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7821 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,1,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7822 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,2,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7823 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,2,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
