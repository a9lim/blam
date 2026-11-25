import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4880 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [0,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4881 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [0,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4882 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4883 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4884 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [1,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4885 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [1,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4886 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4887 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4888 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [1,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4889 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [1,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4890 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4891 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4892 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4893 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4894 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [1,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4895 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [1,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
