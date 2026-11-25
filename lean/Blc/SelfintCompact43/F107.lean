import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1284 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,1,0] [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1285 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,1,0] [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1286 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,1,0] [1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1287 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,1,0] [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1288 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,1,0] [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1289 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,1,0] [1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1290 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,1,0] [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1291 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,1,0] [1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1292 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,1,0] [2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1293 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,1,0] [2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1294 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,1,0] [2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1295 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,1,0] [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
