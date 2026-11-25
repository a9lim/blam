import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4080 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [3,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4081 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [3,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4082 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [3,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4083 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [3,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4084 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [4,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4085 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [4,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4086 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [4,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4087 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [4,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4088 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [4,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4089 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [4,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4090 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [4,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4091 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [4,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4092 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [4,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4093 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [4,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4094 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [4,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4095 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [4,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
