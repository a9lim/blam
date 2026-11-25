import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4784 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 3 [0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4785 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 3 [0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4786 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 3 [0,1,2]) :=
  row_of_forall (discharge bank [49,4,49,4,36] (hard := []) (by decide +kernel) .nil)

theorem g4787 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 3 [0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4788 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 3 [0,2,1]) :=
  row_of_forall (discharge bank [49,4,49,4,36] (hard := []) (by decide +kernel) .nil)

theorem g4789 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 3 [0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4790 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 3 [0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4791 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 3 [0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4792 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 3 [1,0,2]) :=
  row_of_forall (discharge bank [49,4,49,4,36,49,4,49,4,36] (hard := []) (by decide +kernel) .nil)

theorem g4793 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 3 [1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4794 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 3 [1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4795 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 3 [1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4796 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 3 [1,2,0]) :=
  row_of_forall (discharge bank [49,4,49,4,36] (hard := []) (by decide +kernel) .nil)

theorem g4797 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 3 [1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4798 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 3 [2,0,1]) :=
  row_of_forall (discharge bank [49,4,49,4,36,49,4,49,4,36] (hard := []) (by decide +kernel) .nil)

theorem g4799 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 3 [2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
