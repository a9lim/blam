import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g880 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g881 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g882 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g883 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g884 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g885 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g886 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g887 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g888 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g889 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g890 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g891 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g892 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g893 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g894 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g895 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
