import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4144 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,1,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4145 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,1,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4146 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,1,3,3]) :=
  row_of_forall (discharge bank [1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g4147 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,1,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4148 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,1,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4149 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,1,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4150 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,1,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4151 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,1,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4152 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,1,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4153 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,1,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4154 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,2,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4155 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,2,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4156 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,2,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4157 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,2,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4158 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,2,2,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4159 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,2,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
