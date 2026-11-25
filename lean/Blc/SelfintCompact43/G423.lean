import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6768 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6769 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6770 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6771 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6772 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6773 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6774 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6775 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6776 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6777 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6778 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6779 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6780 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6781 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6782 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6783 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
