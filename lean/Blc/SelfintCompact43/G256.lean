import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4096 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [4,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4097 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [4,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4098 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [4,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4099 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [4,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4100 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [4,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4101 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [4,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4102 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [4,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4103 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [4,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4104 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [5,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4105 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [5,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4106 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [5,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4107 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [5,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4108 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [5,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4109 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [5,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4110 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [5,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4111 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [5,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
