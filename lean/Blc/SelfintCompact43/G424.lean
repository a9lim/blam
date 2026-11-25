import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6784 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6785 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6786 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6787 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6788 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6789 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6790 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6791 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6792 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6793 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6794 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6795 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6796 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6797 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6798 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6799 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
