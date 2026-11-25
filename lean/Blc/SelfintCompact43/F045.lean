import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f540 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [2,2,3,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,7,7,7,36,6] (hard := []) (by decide +kernel) .nil)

theorem f541 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [2,2,4,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,1,1,4,4,7,17] (hard := []) (by decide +kernel) .nil)

theorem f542 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [2,3,0,4]) :=
  row_of_forall (discharge bank [4,4,1,39,1,39,1,7,7] (hard := []) (by decide +kernel) .nil)

theorem f543 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [2,3,1,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,39,4,4,39,1,9,4,4,4,4,4,4,4,7,7] (hard := []) (by decide +kernel) .nil)

theorem f544 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [2,3,2,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,7,7,7,6] (hard := []) (by decide +kernel) .nil)

theorem f545 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [2,3,3,1]) :=
  row_of_forall (discharge bank [2,2,2,4,25,27,4,39,9,4,4,7] (hard := []) (by decide +kernel) .nil)

theorem f546 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [2,3,4,0]) :=
  row_of_forall (discharge bank [4,30,7] (hard := []) (by decide +kernel) .nil)

theorem f547 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [2,4,0,3]) :=
  row_of_forall (discharge bank [4,4,1,1,7,7] (hard := []) (by decide +kernel) .nil)

theorem f548 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [2,4,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,11,36,4,4] (hard := []) (by decide +kernel) .nil)

theorem f549 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [2,4,2,1]) :=
  row_of_forall (discharge bank [4,4,4,1,4,4,17] (hard := []) (by decide +kernel) .nil)

theorem f550 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [2,4,3,0]) :=
  row_of_forall (discharge bank [4,39,7] (hard := []) (by decide +kernel) .nil)

theorem f551 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [3,0,2,4]) :=
  row_of_forall (discharge bank [1,1,1,1,6,6,6,6] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
