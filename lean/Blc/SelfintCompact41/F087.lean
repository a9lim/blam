import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1218 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [0,2] [2,0,1,2]) :=
  row_of_forall (discharge bank [35,35,19,19,1] (hard := []) (by decide +kernel) .nil)

theorem f1219 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [0,2] [2,0,2,1]) :=
  row_of_forall (discharge bank [35,35,19,35,19] (hard := []) (by decide +kernel) .nil)

theorem f1220 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [0,2] [2,1,0,2]) :=
  row_of_forall (discharge bank [35,35,19,19,1] (hard := []) (by decide +kernel) .nil)

theorem f1221 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [0,2] [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1222 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [0,2] [2,1,2,0]) :=
  row_of_forall (discharge bank [35,35,19] (hard := []) (by decide +kernel) .nil)

theorem f1223 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [0,2] [2,2,0,1]) :=
  row_of_forall (discharge bank [35,35,35,35,35] (hard := []) (by decide +kernel) .nil)

theorem f1224 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [0,2] [2,2,1,0]) :=
  row_of_forall (discharge bank [35,35,35] (hard := []) (by decide +kernel) .nil)

theorem f1225 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [1,1] [0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1226 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [1,1] [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1227 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [1,1] [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1228 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [1,1] [1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1229 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [1,1] [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1230 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [1,1] [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1231 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [1,1] [1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
