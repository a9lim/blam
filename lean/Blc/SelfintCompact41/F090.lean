import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1260 : BadRow (markedRow ⟨2,2,3,2,4,4⟩ [1,2] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1261 : BadRow (markedRow ⟨2,2,3,2,4,4⟩ [1,2] [0,2,1,1]) :=
  row_of_forall (discharge bank [12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f1262 : BadRow (markedRow ⟨2,2,3,2,4,4⟩ [1,2] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1263 : BadRow (markedRow ⟨2,2,3,2,4,4⟩ [1,2] [1,0,1,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,35] (hard := []) (by decide +kernel) .nil)

theorem f1264 : BadRow (markedRow ⟨2,2,3,2,4,4⟩ [1,2] [1,0,2,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,35] (hard := []) (by decide +kernel) .nil)

theorem f1265 : BadRow (markedRow ⟨2,2,3,2,4,4⟩ [1,2] [1,1,0,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,35,35] (hard := []) (by decide +kernel) .nil)

theorem f1266 : BadRow (markedRow ⟨2,2,3,2,4,4⟩ [1,2] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1267 : BadRow (markedRow ⟨2,2,3,2,4,4⟩ [1,2] [1,1,2,0]) :=
  row_of_forall (discharge bank [12,12,12,35] (hard := []) (by decide +kernel) .nil)

theorem f1268 : BadRow (markedRow ⟨2,2,3,2,4,4⟩ [1,2] [1,2,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,35,35] (hard := []) (by decide +kernel) .nil)

theorem f1269 : BadRow (markedRow ⟨2,2,3,2,4,4⟩ [1,2] [1,2,1,0]) :=
  row_of_forall (discharge bank [12,12,12,35] (hard := []) (by decide +kernel) .nil)

theorem f1270 : BadRow (markedRow ⟨2,2,3,2,4,4⟩ [1,2] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1271 : BadRow (markedRow ⟨2,2,3,2,4,4⟩ [1,2] [2,0,1,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f1272 : BadRow (markedRow ⟨2,2,3,2,4,4⟩ [1,2] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1273 : BadRow (markedRow ⟨2,2,3,2,4,4⟩ [1,2] [2,1,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
