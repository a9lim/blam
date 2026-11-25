import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1272 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,0,1] [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1273 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,0,1] [1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1274 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,0,1] [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1275 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,0,1] [1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1276 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,0,1] [2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1277 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,0,1] [2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1278 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,0,1] [2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1279 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,0,1] [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1280 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,0,1] [2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1281 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,0,1] [2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1282 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,0,1] [2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1283 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,1,0] [0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
