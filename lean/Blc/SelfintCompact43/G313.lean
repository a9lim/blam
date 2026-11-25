import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5008 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [0,2,0,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,15,15,15,15,15,3,54,3,47,3,17,3,17,3,54,3,17,3,47,3,9,4,6,4,6] (hard := []) (by decide +kernel) .nil)

theorem g5009 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [0,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5010 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [0,2,1,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,1,4,4,4,1,4,4,4,4,4,4,4,4,4,4,4,15,15,15,3,14,3,54,3,54,3,54,3,54,4,6] (hard := []) (by decide +kernel) .nil)

theorem g5011 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [0,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5012 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5013 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5014 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [1,0,0,0,2]) :=
  row_of_forall (discharge bank [4,1,4,1,4,4,4,4,4,4,1,4,4,4,1,4,4,4,1,4,4,4,4,1,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5015 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [1,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5016 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5017 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5018 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [1,0,0,2,0]) :=
  row_of_forall (discharge bank [4,4,4,31,4,4,4,4,4,4,4,4,4,4,1,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5019 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [1,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5020 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5021 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5022 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5023 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
