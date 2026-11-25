import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5024 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [1,0,2,0,0]) :=
  row_of_forall (discharge bank [53,4,4,4,1,4,4,4,4,4,53,4,4,4,4,4,1,4,1,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5025 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [1,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5026 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5027 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5028 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5029 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5030 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5031 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5032 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [1,2,0,0,0]) :=
  row_of_forall (discharge bank [1,4,4,4,28,4,4,4,4,53,4,4,4,1,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5033 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [1,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5034 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [2,0,0,0,1]) :=
  row_of_forall (discharge bank [4,4,1,4,4,4,4,4,4,36,4,4,4,15,4,4,4,15,4,4,4,4,36,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5035 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [2,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5036 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [2,0,0,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,36,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5037 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [2,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5038 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [2,0,1,0,0]) :=
  row_of_forall (discharge bank [1,4,4,4,1,4,4,4,4,4,15,4,4,4,4,4,15,4,15,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5039 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [2,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
