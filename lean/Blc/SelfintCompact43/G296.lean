import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4736 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [4,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4737 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [4,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4738 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [4,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4739 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [4,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4740 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [4,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4741 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [4,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4742 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [4,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4743 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [4,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4744 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [4,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4745 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [4,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4746 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [4,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4747 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [4,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4748 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [4,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4749 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [4,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4750 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [4,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4751 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [4,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
