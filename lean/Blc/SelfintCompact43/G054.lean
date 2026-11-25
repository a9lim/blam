import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g864 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g865 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g866 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [2,1,2,0]) :=
  row_of_forall (discharge bank [3,25,3,1,3,1,3,4,3,6,3,30,3,1,3,1,3,1,3,4,3,6,3,1,3,39,3,1,3,1,3,4,3,6,3,7] (hard := []) (by decide +kernel) .nil)

theorem g867 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g868 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [2,2,0,1]) :=
  row_of_forall (discharge bank [3,25,3,1,3,1,3,4,3,6,3,17,3,25,3,1,3,1,3,4,3,6,3,17,3,1,3,1,3,1,3,4,3,6,36,36,3,30,3,1,3,1,3,4,3,6,3,9,3,1,3,1,3,1,3,4,3,6,36,36] (hard := []) (by decide +kernel) .nil)

theorem g869 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g870 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [2,2,1,0]) :=
  row_of_forall (discharge bank [3,25,3,1,3,1,3,4,3,6,3,17,3,25,3,1,3,1,3,4,3,6,3,17,3,1,3,1,3,1,3,4,3,6,36,36] (hard := []) (by decide +kernel) .nil)

theorem g871 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g872 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g873 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g874 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g875 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g876 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g877 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g878 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g879 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
