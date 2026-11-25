import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5920 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 3 [2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5921 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 3 [2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5922 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 3 [2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5923 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 3 [2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5924 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 3 [3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5925 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 3 [3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5926 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 3 [3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5927 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 3 [3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5928 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 3 [3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5929 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 3 [3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5930 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 3 [4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5931 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 3 [4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5932 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 3 [4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5933 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 3 [4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5934 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 3 [5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5935 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 3 [5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
