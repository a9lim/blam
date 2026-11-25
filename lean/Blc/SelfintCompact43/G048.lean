import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g768 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 3 [2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g769 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 3 [2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g770 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 3 [3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g771 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 3 [3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g772 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 3 [3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g773 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 3 [3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g774 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 3 [3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g775 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 3 [3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g776 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 3 [4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g777 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 3 [4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g778 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 3 [4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g779 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 3 [4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g780 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 3 [5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g781 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 3 [5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g782 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g783 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
