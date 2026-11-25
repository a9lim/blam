import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1176 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [0,0,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1177 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [0,0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1178 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [0,0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1179 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [0,0,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1180 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [0,0,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1181 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [0,0,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1182 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [0,0,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1183 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [0,1,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1184 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [0,1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1185 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [0,1,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1186 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [0,1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1187 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [0,1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
