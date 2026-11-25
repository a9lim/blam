import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6704 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [5,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6705 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [5,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6706 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 3 [0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6707 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 3 [0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6708 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 3 [0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6709 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 3 [0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6710 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 3 [0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6711 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 3 [0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6712 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 3 [0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6713 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 3 [0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6714 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 3 [0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6715 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 3 [0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6716 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 3 [0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6717 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 3 [0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6718 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 3 [1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6719 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 3 [1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
