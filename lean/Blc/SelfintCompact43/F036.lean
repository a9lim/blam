import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f432 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [2,1,2,2]) :=
  row_of_forall (discharge bank [6,6,14,38,1,14] (hard := []) (by decide +kernel) .nil)

theorem f433 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [2,1,3,1]) :=
  row_of_forall (discharge bank [39,39,39,39,39,1,14,14,7,7,17,7,17,11,24,14] (hard := []) (by decide +kernel) .nil)

theorem f434 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [2,2,0,3]) :=
  row_of_forall (discharge bank [39,39,39,39,39,1,1,30,37,1,40,9,1,1] (hard := []) (by decide +kernel) .nil)

theorem f435 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [2,2,1,2]) :=
  row_of_forall (discharge bank [6,6,1,36,14,9,1,11,36,11] (hard := []) (by decide +kernel) .nil)

theorem f436 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [2,2,2,1]) :=
  row_of_forall (discharge bank [6,6,82,36,9,9,11,36] (hard := []) (by decide +kernel) .nil)

theorem f437 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [2,2,3,0]) :=
  row_of_forall (discharge bank [39,39,39,1,30,30,1,1] (hard := []) (by decide +kernel) .nil)

theorem f438 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [2,3,0,2]) :=
  row_of_forall (discharge bank [39,39,39,39,39,1,36,30,44,1,1,9,82,36] (hard := []) (by decide +kernel) .nil)

theorem f439 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [2,3,1,1]) :=
  row_of_forall (discharge bank [39,39,39,14,7,7,7,11] (hard := []) (by decide +kernel) .nil)

theorem f440 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [2,3,2,0]) :=
  row_of_forall (discharge bank [39,39,39,1,30,30,40,1] (hard := []) (by decide +kernel) .nil)

theorem f441 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [3,0,1,3]) :=
  row_of_forall (discharge bank [1,1,34,1,1,1,1,7,7,7] (hard := []) (by decide +kernel) .nil)

theorem f442 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [3,0,2,2]) :=
  row_of_forall (discharge bank [6,6,6,6,6,30,1,1,1,14] (hard := []) (by decide +kernel) .nil)

theorem f443 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [3,0,3,1]) :=
  row_of_forall (discharge bank [38,1,34,1,1,30,1,7,1,7] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
