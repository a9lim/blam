import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f840 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [3,1,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f841 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [3,1,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f842 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [3,1,3,0]) :=
  row_of_forall (discharge bank [2,2,2,2,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f843 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [3,2,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f844 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [3,2,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f845 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [3,2,2,0]) :=
  row_of_forall (discharge bank [2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f846 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [3,3,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

theorem f847 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [3,3,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,4] (hard := []) (by decide +kernel) .nil)

theorem f848 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [3,4,0,0]) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f849 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [4,0,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f850 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [4,0,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f851 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [4,0,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
