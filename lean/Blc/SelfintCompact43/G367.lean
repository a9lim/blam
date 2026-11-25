import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5872 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [2,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5873 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [2,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5874 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [2,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5875 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [2,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5876 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [2,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5877 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [2,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5878 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [2,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5879 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [2,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5880 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [2,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5881 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [2,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5882 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [2,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5883 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [2,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5884 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [3,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5885 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [3,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5886 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [3,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5887 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [3,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
