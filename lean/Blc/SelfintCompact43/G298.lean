import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4768 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [5,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4769 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [5,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4770 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [5,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4771 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [5,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4772 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [5,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4773 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [5,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4774 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [6,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4775 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [6,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4776 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [6,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4777 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [6,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4778 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [6,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4779 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [6,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4780 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [6,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4781 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [6,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4782 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [7,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4783 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [7,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
