import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f312 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,2,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,17,37,44,17,17,36,36,17,17,9,36,7,44,9,36,9,14,36,7] (hard := []) (by decide +kernel) .nil)

theorem f313 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,2,0,3,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f314 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,2,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,37,37,17,17,17,36,36,17,17,44,36,7,7,44,9,36,14,36,7,9,7] (hard := []) (by decide +kernel) .nil)

theorem f315 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,2,1,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,17,37,37,37,44,17,17,17,17,34,17,17,17,36,36,36,36,44,36,4,1,36,4,4,9,44,9,9,36,36,14,36,4,47,36] (hard := []) (by decide +kernel) .nil)

theorem f316 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,2,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,37,34,17,17,36,17,17,7,7,4,4,9,36,7] (hard := []) (by decide +kernel) .nil)

theorem f317 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,2,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,17,17,17,17,4,13,36,9,9,9,4,24,36,9] (hard := []) (by decide +kernel) .nil)

theorem f318 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,2,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,17,34,17,17,17,4,13,36,9,4,4,9,36] (hard := []) (by decide +kernel) .nil)

theorem f319 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,2,3,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f320 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,3,0,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,36,36,36,36] (hard := []) (by decide +kernel) .nil)

theorem f321 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,3,0,1,1]) :=
  row_of_forall (discharge bank [24,1,36,12,36,17,17,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f322 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,3,0,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,55,36,1,36] (hard := []) (by decide +kernel) .nil)

theorem f323 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,3,1,0,1]) :=
  row_of_forall (discharge bank [1,1,8,1,9,17,17,17,9,9,9,9] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
