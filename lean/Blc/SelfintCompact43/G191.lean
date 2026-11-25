import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3056 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [2,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3057 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [2,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3058 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [2,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3059 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [2,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3060 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [2,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3061 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [2,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3062 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [2,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3063 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [2,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3064 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [2,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3065 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [2,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3066 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [2,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3067 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [2,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3068 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [2,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3069 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [2,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3070 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [2,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3071 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [2,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
