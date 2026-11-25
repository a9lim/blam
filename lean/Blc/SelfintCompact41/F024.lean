import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f336 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [2,1,4,0]) :=
  row_of_forall (discharge bank [12,7,1] (hard := []) (by decide +kernel) .nil)

theorem f337 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [2,2,0,3]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,6,6,4,13,17,4,13] (hard := []) (by decide +kernel) .nil)

theorem f338 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [2,2,1,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,12,12,6,6,6,4,12,13,12,17,4,13,13] (hard := []) (by decide +kernel) .nil)

theorem f339 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [2,2,2,1]) :=
  row_of_forall (discharge bank [31,31,31,31,12,6,6,12,13,13,12,12,17,4,13] (hard := []) (by decide +kernel) .nil)

theorem f340 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [2,2,3,0]) :=
  row_of_forall (discharge bank [31,31,31,31,6,12] (hard := []) (by decide +kernel) .nil)

theorem f341 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [2,3,0,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,26,4,17,13,7,13] (hard := []) (by decide +kernel) .nil)

theorem f342 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [2,3,1,1]) :=
  row_of_forall (discharge bank [31,31,31,12,31,1,14,17,7] (hard := []) (by decide +kernel) .nil)

theorem f343 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [2,3,2,0]) :=
  row_of_forall (discharge bank [31,31,31,31,13,12] (hard := []) (by decide +kernel) .nil)

theorem f344 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [2,4,0,1]) :=
  row_of_forall (discharge bank [1,17,17,7] (hard := []) (by decide +kernel) .nil)

theorem f345 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [2,4,1,0]) :=
  row_of_forall (discharge bank [12,1,17] (hard := []) (by decide +kernel) .nil)

theorem f346 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [3,0,0,4]) :=
  row_of_forall (discharge bank [12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f347 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [3,0,1,3]) :=
  row_of_forall (discharge bank [31,31,31,31,31,12,12] (hard := []) (by decide +kernel) .nil)

theorem f348 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [3,0,2,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,12,12] (hard := []) (by decide +kernel) .nil)

theorem f349 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [3,0,3,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,12,12] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
