import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1358 : BadRow (markedRow ⟨2,2,0,3,4,5⟩ [0,0] [0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1359 : BadRow (markedRow ⟨2,2,0,3,4,5⟩ [0,0] [0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1360 : BadRow (markedRow ⟨2,2,0,3,4,5⟩ [0,0] [0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1361 : BadRow (markedRow ⟨2,2,0,3,4,5⟩ [0,0] [0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1362 : BadRow (markedRow ⟨2,2,0,3,4,5⟩ [0,0] [0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1363 : BadRow (markedRow ⟨2,2,0,3,4,5⟩ [0,0] [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1364 : BadRow (markedRow ⟨2,2,0,3,4,5⟩ [0,0] [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1365 : BadRow (markedRow ⟨2,2,0,3,4,5⟩ [0,0] [0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1366 : BadRow (markedRow ⟨2,2,0,3,4,5⟩ [0,0] [0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1367 : BadRow (markedRow ⟨2,2,0,3,4,5⟩ [0,0] [0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1368 : BadRow (markedRow ⟨2,2,0,3,4,5⟩ [0,0] [0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1369 : BadRow (markedRow ⟨2,2,0,3,4,5⟩ [0,0] [1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1370 : BadRow (markedRow ⟨2,2,0,3,4,5⟩ [0,0] [1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1371 : BadRow (markedRow ⟨2,2,0,3,4,5⟩ [0,0] [1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
