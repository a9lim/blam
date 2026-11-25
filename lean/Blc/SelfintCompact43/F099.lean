import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1188 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [0,1,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1189 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [0,1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1190 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [0,1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1191 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [0,1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1192 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [0,1,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1193 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [0,2,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1194 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [0,2,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1195 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [0,2,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1196 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [0,2,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1197 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [1,0,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1198 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [1,0,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1199 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [1,0,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
