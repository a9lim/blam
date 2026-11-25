import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f238 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [2,2,0,1,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f239 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [2,2,1,0,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f240 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [2,3,0,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f241 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [3,0,0,0,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f242 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [3,0,0,1,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f243 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [3,0,0,2,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f244 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [3,0,1,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f245 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [3,0,1,1,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f246 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [3,0,2,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f247 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [3,1,0,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f248 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [3,1,0,1,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f249 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [3,1,1,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f250 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [3,2,0,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f251 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [0,0,2,3]) :=
  row_of_forall (discharge bank [34,34,34,34,10,10,37,10,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
