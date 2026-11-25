import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6832 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6833 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6834 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6835 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6836 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6837 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6838 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6839 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6840 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6841 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6842 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6843 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6844 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6845 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6846 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6847 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
