import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2960 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,3,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2961 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,3,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2962 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,3,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2963 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,3,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2964 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,4,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2965 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,4,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2966 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,4,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2967 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,4,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2968 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,4,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2969 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,4,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2970 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,4,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2971 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,4,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2972 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,5,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2973 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,5,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2974 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,5,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2975 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,5,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
