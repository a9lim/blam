import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f720 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [0,2,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,39,39,39,39,39,39,39,2,39,64,5,5,5,6,6,6,6,6,6,6,30,30,1,1,30,1,1,15,31,10] (hard := []) (by decide +kernel) .nil)

theorem f721 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [0,2,3,0]) :=
  row_of_forall (discharge bank [2,2,2,39,39,2,39,39,2,6,6,6,6,6,6,1,1,15] (hard := []) (by decide +kernel) .nil)

theorem f722 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [0,3,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,39,39,39,39,39,2,2,39,39,39,39,39,39,2,2,14,14,6,6,6,6,6,6,6,6,6,6,6,6,6,6,1,1,1,1,15,15,14,9] (hard := []) (by decide +kernel) .nil)

theorem f723 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [0,3,1,1]) :=
  row_of_forall (discharge bank [2,2,2,39,39,39,2,39,2,39,39,2,39,39,39,39,39,14,14,6,6,6,6,6,6,6,6,6,6,6,6,6,6,1,1,1,11,9] (hard := []) (by decide +kernel) .nil)

theorem f724 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [0,3,2,0]) :=
  row_of_forall (discharge bank [2,2,2,39,2,39,39,39,2,6,6,6,6,6,1,1,1,15] (hard := []) (by decide +kernel) .nil)

theorem f725 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [0,4,0,1]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,39,39,39,39,8,8,6,6,6,6,6,6,6,6,6,1,1,18,18] (hard := []) (by decide +kernel) .nil)

theorem f726 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [0,4,1,0]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,39,8,6,6,6,6,6,6,1,1,18] (hard := []) (by decide +kernel) .nil)

theorem f727 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [1,0,0,4]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,39,39,39,39,39,39,39,39,6,6,6,6,6,6,6,6,6,6,7,7,17,17,14] (hard := []) (by decide +kernel) .nil)

theorem f728 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [1,0,1,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,39,2,2,2,2,39,39,2,2,39,39,39,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,15,15,7,17,11] (hard := []) (by decide +kernel) .nil)

theorem f729 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [1,0,2,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,39,39,39,39,39,39,39,39,5,5,5,5,5,6,6,6,6,6,6,6,6,15,15,7,7,7,17,7,17,17,11] (hard := []) (by decide +kernel) .nil)

theorem f730 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [1,0,3,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,39,39,2,2,39,39,39,2,2,2,2,39,39,39,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,15,15,7,7,17] (hard := []) (by decide +kernel) .nil)

theorem f731 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [1,0,4,0]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,39,39,39,39,6,6,6,6,6,6,6,6,7,7,17] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
