import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3024 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [1,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3025 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [1,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3026 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [1,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3027 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [1,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3028 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [1,4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3029 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [1,4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3030 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [1,4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3031 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [1,4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3032 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [1,4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3033 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [1,4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3034 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [1,5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3035 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [1,5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3036 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [1,5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3037 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [1,5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3038 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [1,6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3039 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [1,6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
