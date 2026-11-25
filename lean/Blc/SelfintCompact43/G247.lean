import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3952 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,6,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3953 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,6,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3954 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,7,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3955 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,7,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3956 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [1,0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3957 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [1,0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3958 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [1,0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3959 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [1,0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3960 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [1,0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3961 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [1,0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3962 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [1,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3963 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [1,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3964 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [1,0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3965 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [1,0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3966 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [1,0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3967 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [1,0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
