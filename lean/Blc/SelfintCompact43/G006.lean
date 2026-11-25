import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g96 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [0,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g97 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [0,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g98 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g99 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g100 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [1,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g101 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [1,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g102 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g103 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g104 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [1,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g105 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [1,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g106 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g107 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g108 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g109 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g110 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [1,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g111 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [1,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
