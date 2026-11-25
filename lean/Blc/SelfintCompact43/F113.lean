import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1356 : BadRow (Grammar43.fourRow ⟨1,4,0,2,4,3⟩ [0,0,0,0] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1357 : BadRow (Grammar43.fourRow ⟨1,4,0,2,4,3⟩ [0,0,0,0] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1358 : BadRow (Grammar43.fourRow ⟨1,4,0,2,4,3⟩ [0,0,0,0] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1359 : BadRow (Grammar43.fourRow ⟨1,4,0,2,4,3⟩ [0,0,0,0] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1360 : BadRow (Grammar43.fourRow ⟨1,4,0,2,4,3⟩ [0,0,0,0] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1361 : BadRow (Grammar43.fourRow ⟨1,4,0,2,4,3⟩ [0,0,0,0] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1362 : BadRow (Grammar43.fourRow ⟨1,4,0,2,4,3⟩ [0,0,0,0] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1363 : BadRow (Grammar43.fourRow ⟨1,4,0,2,4,3⟩ [0,0,0,0] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1364 : BadRow (Grammar43.fourRow ⟨1,2,0,3,4,9⟩ [0,0] [0,3,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1365 : BadRow (Grammar43.fourRow ⟨1,2,0,3,4,9⟩ [0,0] [1,2,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1366 : BadRow (Grammar43.fourRow ⟨1,2,0,3,4,9⟩ [0,0] [1,3,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1367 : BadRow (Grammar43.fourRow ⟨1,2,0,3,4,9⟩ [0,0] [1,3,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
