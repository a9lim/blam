import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1164 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [2,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1165 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [2,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1166 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [2,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1167 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [0,0,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1168 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [0,0,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1169 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [0,0,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1170 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [0,0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1171 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [0,0,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1172 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [0,0,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1173 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [0,0,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1174 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [0,0,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1175 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [0,0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
