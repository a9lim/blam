import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1368 : BadRow (Grammar43.fourRow ⟨1,2,0,3,4,9⟩ [0,0] [2,1,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1369 : BadRow (Grammar43.fourRow ⟨1,2,0,3,4,9⟩ [0,0] [2,2,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1370 : BadRow (Grammar43.fourRow ⟨1,2,0,3,4,9⟩ [0,0] [2,2,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1371 : BadRow (Grammar43.fourRow ⟨1,2,0,3,4,9⟩ [0,0] [2,3,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1372 : BadRow (Grammar43.fourRow ⟨1,2,0,3,4,9⟩ [0,0] [2,3,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1373 : BadRow (Grammar43.fourRow ⟨1,2,0,3,4,9⟩ [0,0] [2,3,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1374 : BadRow (Grammar43.fourRow ⟨1,2,0,3,4,9⟩ [0,0] [3,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1375 : BadRow (Grammar43.fourRow ⟨1,2,0,3,4,9⟩ [0,0] [3,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1376 : BadRow (Grammar43.fourRow ⟨1,2,0,3,4,9⟩ [0,0] [3,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1377 : BadRow (Grammar43.fourRow ⟨1,2,0,3,4,9⟩ [0,0] [3,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1378 : BadRow (Grammar43.fourRow ⟨1,2,0,3,4,9⟩ [0,0] [3,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1379 : BadRow (Grammar43.fourRow ⟨1,2,0,3,4,9⟩ [0,0] [3,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
