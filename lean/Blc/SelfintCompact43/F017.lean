import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f204 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,0,2,3,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,47,14,14,14,14,14,4,4,4,1,1,47,47,14,1,1] (hard := []) (by decide +kernel) .nil)

theorem f205 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,0,3,1,3]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,14,14,14,14,30,14] (hard := []) (by decide +kernel) .nil)

theorem f206 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,0,3,2,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,47,47,14,4,4,4,1,14,156,14,1] (hard := []) (by decide +kernel) .nil)

theorem f207 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,0,3,3,1]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,14,14,14,14,47,14,1,30,48,14,1] (hard := []) (by decide +kernel) .nil)

theorem f208 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,1,0,3,3]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,47,47,14,43,14,1,1,1,1,1,1,1,1,1,14,1,1,14,14] (hard := []) (by decide +kernel) .nil)

theorem f209 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,1,1,2,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,25,1,4,25,4,25,1,1,1,1,1,4,4,4,4,4,38,1,1,1,1,14,14,36] (hard := []) (by decide +kernel) .nil)

theorem f210 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,1,1,3,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,1,4,4,4,1,4,4,1,1,1,1,1,1,1,4,4,4,4,4,1,1,1,1,1,1,14,14,14,36] (hard := []) (by decide +kernel) .nil)

theorem f211 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,1,2,1,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,25,1,4,4,25,1,1,1,1,1,1,1,1,1,1,1,4,4,4,4,4,4,4,25,1,1,1,1,1,1,1,1,1,1,14,14,14,36,36,36] (hard := []) (by decide +kernel) .nil)

theorem f212 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,1,2,2,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,37,1,30,4,25,4,25,14,1,1,1,1,1,1,1,4,4,4,25,1,1,4,25,1,1,14,1,1] (hard := []) (by decide +kernel) .nil)

theorem f213 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,1,2,3,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,25,1,4,4,25,30,1,1,4,4,4,25,1,4,25,1,1,4,4,4,4,4,25,1,1,1,1,1,14,1,14,36,14,36,36] (hard := []) (by decide +kernel) .nil)

theorem f214 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,1,3,0,3]) :=
  row_of_forall (discharge bank [1,28,1,1,1,1,28,1,1,1,1,1,1,1,81,28,14,124,47,1,30,14,30,1] (hard := []) (by decide +kernel) .nil)

theorem f215 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,1,3,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,1,4,4,47,1,1,1,1,1,47,1,1,4,4,4,4,4,4,4,1,37,1,1,1,1,1,1,1,1,14,14,44,36,36] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
