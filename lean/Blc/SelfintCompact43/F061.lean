import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f732 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [1,1,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,39,2,2,39,2,2,2,2,39,39,6,6,6,6,6,6,6,6,6,6,6,6,15,15,15,15,17,14] (hard := []) (by decide +kernel) .nil)

theorem f733 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [1,1,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,39,6,6,6,6,6,6,15,11] (hard := []) (by decide +kernel) .nil)

theorem f734 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [1,1,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,39,39,6,6,6,6,6,15,17,17] (hard := []) (by decide +kernel) .nil)

theorem f735 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [1,1,3,0]) :=
  row_of_forall (discharge bank [2,2,2,2,39,2,39,2,39,6,6,6,6,6,6,6,15,17] (hard := []) (by decide +kernel) .nil)

theorem f736 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [1,2,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,39,39,39,39,39,5,5,5,5,5,6,6,6,6,6,6,6,15,15,7,7,17,7,14] (hard := []) (by decide +kernel) .nil)

theorem f737 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [1,2,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,39,39,6,6,6,6,6,6,6,15,15,7,7] (hard := []) (by decide +kernel) .nil)

theorem f738 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [1,2,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,39,39,39,39,5,5,5,6,6,7,17,7,17] (hard := []) (by decide +kernel) .nil)

theorem f739 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [1,3,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,39,39,2,39,2,2,2,6,6,6,6,6,6,6,6,6,6,15,15] (hard := []) (by decide +kernel) .nil)

theorem f740 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [1,3,1,0]) :=
  row_of_forall (discharge bank [2,2,2,39,2,2,39,2,6,6,6,6,6,6,6,15] (hard := []) (by decide +kernel) .nil)

theorem f741 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [1,4,0,0]) :=
  row_of_forall (discharge bank [39,39,39,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f742 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [2,0,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,6,6,6,6,6,6,6,6,6,6,7,7,17,17,14] (hard := []) (by decide +kernel) .nil)

theorem f743 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [2,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,6,6,6,6,6,6,6,6,5,5,5,5,5,6,6,6,6,6,6,6,7,7,7,17,7,17,17,14] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
