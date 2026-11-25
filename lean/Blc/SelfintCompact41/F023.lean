import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f322 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [1,3,1,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,12,12,31,31,31,12,12,12,12,12,1,7,6] (hard := []) (by decide +kernel) .nil)

theorem f323 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [1,3,2,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,12,12,31,12,12,12,34,12,7,6] (hard := []) (by decide +kernel) .nil)

theorem f324 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [1,3,3,0]) :=
  row_of_forall (discharge bank [31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f325 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [1,4,0,2]) :=
  row_of_forall (discharge bank [12,12,10,1,1,17] (hard := []) (by decide +kernel) .nil)

theorem f326 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [1,4,1,1]) :=
  row_of_forall (discharge bank [12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f327 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [1,4,2,0]) :=
  row_of_forall (discharge bank [12,34,12,14] (hard := []) (by decide +kernel) .nil)

theorem f328 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [2,0,1,4]) :=
  row_of_forall (discharge bank [12,12,1,1,1,1,13,13,13] (hard := []) (by decide +kernel) .nil)

theorem f329 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [2,0,2,3]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,1,12,12,8,1,1,12,12,13,1,13,13,13] (hard := []) (by decide +kernel) .nil)

theorem f330 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [2,0,3,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,4,12,1,1,12,1,13,13,13] (hard := []) (by decide +kernel) .nil)

theorem f331 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [2,0,4,1]) :=
  row_of_forall (discharge bank [12,12,1,7,1,1,13] (hard := []) (by decide +kernel) .nil)

theorem f332 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [2,1,0,4]) :=
  row_of_forall (discharge bank [1,1,9,1,1,1,13,13,13] (hard := []) (by decide +kernel) .nil)

theorem f333 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [2,1,1,3]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,12,1,12,12,12,1,12,13,13,13,13] (hard := []) (by decide +kernel) .nil)

theorem f334 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [2,1,2,2]) :=
  row_of_forall (discharge bank [31,31,31,12,12,12,12,12,8,1,1,12,13,12,13,12,13,13,13,13] (hard := []) (by decide +kernel) .nil)

theorem f335 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [2,1,3,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,9,12,1,12,13] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
