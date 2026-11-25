import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6672 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [2,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6673 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [2,2,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g6674 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [2,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6675 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [2,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6676 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [3,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6677 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [3,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6678 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [3,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6679 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [3,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6680 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [3,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6681 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [3,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6682 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [3,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6683 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [3,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6684 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [3,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6685 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [3,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6686 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [3,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6687 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [3,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
