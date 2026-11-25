import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3104 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [3,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3105 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [3,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3106 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [3,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3107 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [3,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3108 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [3,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3109 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [3,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3110 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [3,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3111 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [3,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3112 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [4,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3113 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [4,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3114 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [4,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3115 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [4,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3116 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [4,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3117 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [4,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3118 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [4,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3119 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [4,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
