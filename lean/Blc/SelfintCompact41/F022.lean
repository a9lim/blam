import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f308 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [0,4,3,0]) :=
  row_of_forall (discharge bank [12,12,12,12,14] (hard := []) (by decide +kernel) .nil)

theorem f309 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [1,0,2,4]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,8,1,12,12,8,1,1,1,6] (hard := []) (by decide +kernel) .nil)

theorem f310 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [1,0,3,3]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,12,12,12,1,12,1,1,6,6] (hard := []) (by decide +kernel) .nil)

theorem f311 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [1,0,4,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,1,12,1,1,1,6] (hard := []) (by decide +kernel) .nil)

theorem f312 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [1,1,1,4]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,7,9] (hard := []) (by decide +kernel) .nil)

theorem f313 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [1,1,2,3]) :=
  row_of_forall (discharge bank [31,31,31,31,31,12,31,12,12,8,12,1] (hard := []) (by decide +kernel) .nil)

theorem f314 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [1,1,3,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,12,12,12,12,12,12,12,1,9] (hard := []) (by decide +kernel) .nil)

theorem f315 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [1,1,4,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,7] (hard := []) (by decide +kernel) .nil)

theorem f316 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [1,2,0,4]) :=
  row_of_forall (discharge bank [12,12,12,12,1,34,10,34,1,1,7,6,6] (hard := []) (by decide +kernel) .nil)

theorem f317 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [1,2,1,3]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,12,31,31,12,12,34,12,12,12,34,1,6,7] (hard := []) (by decide +kernel) .nil)

theorem f318 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [1,2,2,2]) :=
  row_of_forall (discharge bank [12,12,8,67,34,12,34,1,12,12,34,1,1,7] (hard := []) (by decide +kernel) .nil)

theorem f319 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [1,2,3,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,12,67,12,6] (hard := []) (by decide +kernel) .nil)

theorem f320 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [1,2,4,0]) :=
  row_of_forall (discharge bank [12,27,12,7] (hard := []) (by decide +kernel) .nil)

theorem f321 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [1,3,0,3]) :=
  row_of_forall (discharge bank [31,31,31,31,31,12,12,10,1,6,6] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
