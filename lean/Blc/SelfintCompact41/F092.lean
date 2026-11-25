import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1288 : BadRow (markedRow ⟨2,2,3,2,4,4⟩ [2,1] [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1289 : BadRow (markedRow ⟨2,2,3,2,4,4⟩ [2,1] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1290 : BadRow (markedRow ⟨2,2,3,2,4,4⟩ [2,1] [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1291 : BadRow (markedRow ⟨2,2,3,2,4,4⟩ [2,1] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1292 : BadRow (markedRow ⟨2,2,3,2,4,4⟩ [2,1] [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1293 : BadRow (markedRow ⟨2,2,3,2,4,4⟩ [2,1] [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1294 : BadRow (markedRow ⟨2,2,3,2,4,4⟩ [2,1] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1295 : BadRow (markedRow ⟨2,2,4,2,4,3⟩ [2,2] [0,0,1,2]) :=
  row_of_forall (discharge bank [12,12,12,12,1] (hard := []) (by decide +kernel) .nil)

theorem f1296 : BadRow (markedRow ⟨2,2,4,2,4,3⟩ [2,2] [0,0,2,1]) :=
  row_of_forall (discharge bank [12,12,12,12,1] (hard := []) (by decide +kernel) .nil)

theorem f1297 : BadRow (markedRow ⟨2,2,4,2,4,3⟩ [2,2] [0,1,0,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,1,1] (hard := []) (by decide +kernel) .nil)

theorem f1298 : BadRow (markedRow ⟨2,2,4,2,4,3⟩ [2,2] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1299 : BadRow (markedRow ⟨2,2,4,2,4,3⟩ [2,2] [0,1,2,0]) :=
  row_of_forall (discharge bank [12,12,12,12,7] (hard := []) (by decide +kernel) .nil)

theorem f1300 : BadRow (markedRow ⟨2,2,4,2,4,3⟩ [2,2] [0,2,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,1,17] (hard := []) (by decide +kernel) .nil)

theorem f1301 : BadRow (markedRow ⟨2,2,4,2,4,3⟩ [2,2] [0,2,1,0]) :=
  row_of_forall (discharge bank [12,12,12,12,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
