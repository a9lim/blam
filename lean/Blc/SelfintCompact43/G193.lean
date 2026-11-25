import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3088 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [3,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3089 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [3,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3090 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [3,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3091 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [3,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3092 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [3,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3093 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [3,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3094 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [3,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3095 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [3,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3096 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [3,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3097 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [3,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3098 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [3,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3099 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [3,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3100 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [3,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3101 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [3,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3102 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [3,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3103 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [3,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
