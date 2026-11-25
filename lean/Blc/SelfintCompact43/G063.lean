import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1008 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1009 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1010 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1011 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1012 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1013 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1014 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1015 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1016 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1017 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1018 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1019 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1020 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1021 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1022 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1023 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
