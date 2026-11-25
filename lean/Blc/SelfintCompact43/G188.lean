import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3008 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [1,1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3009 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [1,1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3010 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [1,2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3011 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [1,2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3012 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [1,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3013 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [1,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3014 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [1,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3015 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [1,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3016 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [1,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3017 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [1,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3018 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [1,2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3019 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [1,2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3020 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [1,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3021 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [1,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3022 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [1,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3023 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [1,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
