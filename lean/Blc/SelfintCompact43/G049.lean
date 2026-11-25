import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g784 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g785 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g786 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g787 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g788 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g789 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g790 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g791 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g792 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g793 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g794 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g795 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g796 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g797 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g798 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [0,1,2,2]) :=
  row_of_forall (discharge bank [3,1,3,1,3,1,3,4,3,39,3,14,3,1,3,1,3,1,3,4,3,39,3,1,3,1,3,1,3,1,3,4,3,39,3,1] (hard := []) (by decide +kernel) .nil)

theorem g799 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
