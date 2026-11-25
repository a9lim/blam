import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f280 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [2,1,1,1]) :=
  row_of_forall (discharge bank [13,13,13,13,13,13,13,13,13,13,6,17,17,56,10,10,17,15,28,10] (hard := []) (by decide +kernel) .nil)

theorem f281 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [2,1,2,0]) :=
  row_of_forall (discharge bank [31,31,31,13,13,19,19,14,17,6] (hard := []) (by decide +kernel) .nil)

theorem f282 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [2,2,0,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,13,13,19,19,19,19,19,14,26] (hard := []) (by decide +kernel) .nil)

theorem f283 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [2,2,1,0]) :=
  row_of_forall (discharge bank [31,31,31,13,13,19,19,19,14,6] (hard := []) (by decide +kernel) .nil)

theorem f284 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [2,3,0,0]) :=
  row_of_forall (discharge bank [34,34,34,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f285 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [3,0,0,2]) :=
  row_of_forall (discharge bank [13,13,13,13,13,6,6,17,17,39] (hard := []) (by decide +kernel) .nil)

theorem f286 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [3,0,1,1]) :=
  row_of_forall (discharge bank [13,13,13,13,13,13,13,13,13,13] (hard := []) (by decide +kernel) .nil)

theorem f287 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [3,0,2,0]) :=
  row_of_forall (discharge bank [13,13,13,13,13,6,6,17,6,17] (hard := []) (by decide +kernel) .nil)

theorem f288 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [3,1,0,1]) :=
  row_of_forall (discharge bank [13,13,13,13,13,13,13,13,13,13] (hard := []) (by decide +kernel) .nil)

theorem f289 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [3,1,1,0]) :=
  row_of_forall (discharge bank [13,13,13,13,13,13] (hard := []) (by decide +kernel) .nil)

theorem f290 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [3,2,0,0]) :=
  row_of_forall (discharge bank [13,13,13,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f291 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [0,0,3,4]) :=
  row_of_forall (discharge bank [12,12,12,12,1] (hard := []) (by decide +kernel) .nil)

theorem f292 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [0,0,4,3]) :=
  row_of_forall (discharge bank [12,12,12,12,1] (hard := []) (by decide +kernel) .nil)

theorem f293 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [0,1,2,4]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,8,1,1,12,12,6,1,7] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
