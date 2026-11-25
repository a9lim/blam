import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4032 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [2,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4033 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [2,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4034 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [2,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4035 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [2,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4036 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [2,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4037 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [2,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4038 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [2,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4039 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [2,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4040 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [2,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4041 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [2,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4042 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [2,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4043 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [2,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4044 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [2,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4045 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [2,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4046 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [2,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4047 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [2,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
