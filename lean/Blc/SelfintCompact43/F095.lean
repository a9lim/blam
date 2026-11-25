import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1140 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [1,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1141 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [1,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1142 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [1,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1143 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [1,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1144 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [1,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1145 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [1,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1146 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [1,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1147 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [1,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1148 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [1,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1149 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [1,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1150 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [1,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1151 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [2,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
