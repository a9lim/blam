import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6880 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,0,1,4,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,1,9] (hard := []) (by decide +kernel) .nil)

theorem g6881 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6882 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,0,2,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,2,2,1,1,4,4,1,1,4,4,1,1,4,4,4,4,4,6,4,4,4,4,4,2,2,2,2,4,1,1,4,4,4,4,4,4,4,4,14,14,4,4,4,14,14,4,4,4,2,2,2,2,4,4,4,4,4,4,4,4,7,4,7,4,7,7,7,7,7,7,47,14,7,7,1,1,1,1,14,13,6,7,6,7,36,36,36,36,1,6,9,6] (hard := []) (by decide +kernel) .nil)

theorem g6883 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6884 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,0,2,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4,11,4,4,4,4,14,4,4,14,14,4,4,6,4,39,4,4,4,4,14,2,2,2,4,13,4,4,15,15,15,7,7,7,7,7,7,7,7,7,1,13,6,7,36,36,13,6] (hard := []) (by decide +kernel) .nil)

theorem g6885 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6886 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,0,2,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,11,4,4,4,17,17,4,4,4,39,4,4,47,4,4,4,4,47,2,2,2,4,13,4,4,4,15,15,15,7,7,7,7,7,7,7,1,13,6,7,36,36,13,6] (hard := []) (by decide +kernel) .nil)

theorem g6887 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6888 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,0,2,3,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4,2,1,4,4,4,18,18,4,4,4,4,4,2,4,4,2,2,1,4,4,4,4,4,4,4,2,2,4,4,4,4,4,4,7,4,4,4,7,7,7,38,14,7,1,1,13,6,7,36,36,11,6,47,4,6] (hard := []) (by decide +kernel) .nil)

theorem g6889 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6890 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,0,3,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,2,2,1,8,4,4,4,4,4,4,4,4,11,4,4,4,4,2,2,2,2,4,1,36,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,14,14,14,4,4,4,4,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,4,7,4,7,7,7,7,7,7,30,14,7,7,1,1,1,14,11,14,11,6,7,6,7,36,36,36,36,14,6,9,6] (hard := []) (by decide +kernel) .nil)

theorem g6891 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6892 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,0,3,1,1]) :=
  row_of_forall (discharge bank [2,2,2,4,2,2,4,2,4,2,2,2,2,4,4,4,4,4,4,4,4,4,4,7,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,7,7,7,7,38,12,11] (hard := []) (by decide +kernel) .nil)

theorem g6893 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6894 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,0,3,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4,4,2,1,4,4,4,4,4,4,4,4,4,2,4,2,2,4,1,4,4,4,4,4,4,4,4,2,2,4,4,4,4,7,4,4,4,7,7,7,7,14,14,7,1,24,6,7,36,36,24,6,14,4,6] (hard := []) (by decide +kernel) .nil)

theorem g6895 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
