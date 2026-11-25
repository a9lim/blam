import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f816 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [2,0,3,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4,2,2,2,4,4,4,2,2,2,2,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f817 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [2,0,4,1]) :=
  row_of_forall (discharge bank [2,4,4,2,4,4,4,2,2,4,2,4,4,2,2,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f818 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [2,0,5,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f819 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [2,1,0,4]) :=
  row_of_forall (discharge bank [4,4,2,2,2,2,2,2,2,4,2,2,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f820 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [2,1,1,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f821 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [2,1,2,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f822 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [2,1,3,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,4,4,2,2,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f823 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [2,1,4,0]) :=
  row_of_forall (discharge bank [4,2,4,2,2,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f824 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [2,2,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,4,2,2,2,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f825 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [2,2,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f826 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [2,2,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f827 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [2,2,3,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,2,4,4] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
