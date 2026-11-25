import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4912 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4913 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4914 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 3 [0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4915 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 3 [0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4916 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 3 [0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4917 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 3 [0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4918 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 3 [0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4919 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 3 [0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4920 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 3 [0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4921 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 3 [0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4922 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 3 [1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4923 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 3 [1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4924 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 3 [1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4925 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 3 [1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4926 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 3 [1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4927 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 3 [1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
