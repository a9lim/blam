import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4720 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [4,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4721 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [4,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4722 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [4,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4723 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [4,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4724 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [4,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4725 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [4,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4726 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [4,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4727 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [4,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4728 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [4,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4729 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [4,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4730 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [4,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4731 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [4,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4732 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [4,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4733 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [4,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4734 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [4,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4735 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [4,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
