import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4864 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [0,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4865 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [0,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4866 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4867 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4868 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [0,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4869 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [0,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4870 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4871 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4872 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4873 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4874 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [0,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4875 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [0,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4876 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [0,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4877 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [0,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4878 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [0,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4879 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [0,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
