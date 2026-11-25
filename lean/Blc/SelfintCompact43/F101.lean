import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1212 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [2,0,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1213 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [2,0,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1214 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [2,0,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1215 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [2,0,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1216 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [2,1,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1217 : BadRow (Grammar43.fourRow ⟨1,3,0,2,4,7⟩ [0,0,0] [1,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1218 : BadRow (Grammar43.fourRow ⟨1,3,0,2,4,7⟩ [0,0,0] [2,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1219 : BadRow (Grammar43.fourRow ⟨1,3,0,2,4,7⟩ [0,0,0] [2,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1220 : BadRow (Grammar43.fourRow ⟨1,3,0,2,4,7⟩ [0,0,0] [2,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1221 : BadRow (Grammar43.fourRow ⟨1,3,1,2,4,6⟩ [0,0,1] [0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1222 : BadRow (Grammar43.fourRow ⟨1,3,1,2,4,6⟩ [0,0,1] [1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1223 : BadRow (Grammar43.fourRow ⟨1,3,1,2,4,6⟩ [0,0,1] [1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
