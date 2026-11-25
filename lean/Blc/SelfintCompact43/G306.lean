import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4896 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4897 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4898 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4899 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4900 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4901 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4902 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [1,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4903 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [1,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4904 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [2,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4905 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [2,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4906 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [2,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4907 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [2,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4908 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [2,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4909 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [2,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4910 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 5 [2,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4911 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 5 [2,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
