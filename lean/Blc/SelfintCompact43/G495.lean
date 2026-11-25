import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7920 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 4 [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7921 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 4 [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7922 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 4 [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7923 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 4 [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7924 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 4 [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7925 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 4 [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7926 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 4 [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7927 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 4 [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7928 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 4 [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7929 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 4 [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7930 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 4 [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7931 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 4 [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7932 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 4 [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7933 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 4 [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7934 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7935 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
