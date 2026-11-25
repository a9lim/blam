import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1236 : BadRow (Grammar43.fourRow ⟨1,3,1,2,4,6⟩ [0,1,0] [2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1237 : BadRow (Grammar43.fourRow ⟨1,3,1,2,4,6⟩ [0,1,0] [2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1238 : BadRow (Grammar43.fourRow ⟨1,3,1,2,4,6⟩ [0,1,0] [2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1239 : BadRow (Grammar43.fourRow ⟨1,3,1,2,4,6⟩ [0,1,0] [2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1240 : BadRow (Grammar43.fourRow ⟨1,3,1,2,4,6⟩ [0,1,0] [2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1241 : BadRow (Grammar43.fourRow ⟨1,3,1,2,4,6⟩ [1,0,0] [0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1242 : BadRow (Grammar43.fourRow ⟨1,3,1,2,4,6⟩ [1,0,0] [1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1243 : BadRow (Grammar43.fourRow ⟨1,3,1,2,4,6⟩ [1,0,0] [1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1244 : BadRow (Grammar43.fourRow ⟨1,3,1,2,4,6⟩ [1,0,0] [1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1245 : BadRow (Grammar43.fourRow ⟨1,3,1,2,4,6⟩ [1,0,0] [2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1246 : BadRow (Grammar43.fourRow ⟨1,3,1,2,4,6⟩ [1,0,0] [2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1247 : BadRow (Grammar43.fourRow ⟨1,3,1,2,4,6⟩ [1,0,0] [2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
