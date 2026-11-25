import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f294 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [0,1,3,3]) :=
  row_of_forall (discharge bank [31,31,31,31,12,12,12,12,1,1,12,12,1,1] (hard := []) (by decide +kernel) .nil)

theorem f295 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [0,1,4,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,1,1,12,12,6,1,7] (hard := []) (by decide +kernel) .nil)

theorem f296 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [0,2,1,4]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,10,34,10,12,12,12,6,6,7,1,10] (hard := []) (by decide +kernel) .nil)

theorem f297 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [0,2,2,3]) :=
  row_of_forall (discharge bank [31,31,31,31,12,12,12,12,12,34,12,8,11,11,12,34,10,1,12,12,14,7] (hard := []) (by decide +kernel) .nil)

theorem f298 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [0,2,3,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,12,12,12,12,12,8,10,12,12,34,10,1,12,12,7,7] (hard := []) (by decide +kernel) .nil)

theorem f299 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [0,2,4,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,8,10,12,6,7] (hard := []) (by decide +kernel) .nil)

theorem f300 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [0,3,0,4]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,1,7] (hard := []) (by decide +kernel) .nil)

theorem f301 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [0,3,1,3]) :=
  row_of_forall (discharge bank [31,31,31,12,12,12,12,12,10,10,12,12,12,7,10,17] (hard := []) (by decide +kernel) .nil)

theorem f302 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [0,3,2,2]) :=
  row_of_forall (discharge bank [31,31,31,12,31,12,12,12,34,10,12,10,12,11,10,12,12,28,17] (hard := []) (by decide +kernel) .nil)

theorem f303 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [0,3,3,1]) :=
  row_of_forall (discharge bank [31,31,31,12,12,31,12,10,12,7] (hard := []) (by decide +kernel) .nil)

theorem f304 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [0,3,4,0]) :=
  row_of_forall (discharge bank [12,12,12,12,7] (hard := []) (by decide +kernel) .nil)

theorem f305 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [0,4,0,3]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,1,17] (hard := []) (by decide +kernel) .nil)

theorem f306 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [0,4,1,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,10,10,6,6] (hard := []) (by decide +kernel) .nil)

theorem f307 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [0,4,2,1]) :=
  row_of_forall (discharge bank [12,12,12,34,12,10,6] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
