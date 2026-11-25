import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f264 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,2,0,1,3]) :=
  row_of_forall (discharge bank [1,1,1,25,1,30,25,14,1,1,1,1,1,1,1,25,1,1,1,36,48,48,36,48,36] (hard := []) (by decide +kernel) .nil)

theorem f265 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,2,0,2,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,30,1,1,4,44,27,1,1,25,4,25,14,1,1,1,4,38,4,25,1,1,1,1,1,1,1,25,1,1,1,1,1,1,48,36,48,36,36,36,36,48,36] (hard := []) (by decide +kernel) .nil)

theorem f266 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,2,0,3,1]) :=
  row_of_forall (discharge bank [4,4,1,1,25,1,52,14,14,1,1,1,1,1,1,1,36,48,48,36,37,14] (hard := []) (by decide +kernel) .nil)

theorem f267 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,2,1,0,3]) :=
  row_of_forall (discharge bank [1,1,1,30,25,1,1,14,1,1,25,1,1,1,36,36,48,48,14,48,14] (hard := []) (by decide +kernel) .nil)

theorem f268 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,2,1,1,2]) :=
  row_of_forall (discharge bank [4,4,4,1,4,1,25,37,25,25,4,4,4,1,4,4,4,1,4,4,25,1,25,25,1,1,1,1,4,1,1,1,36,1,48,14,102,48,14,48] (hard := []) (by decide +kernel) .nil)

theorem f269 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,2,1,2,1]) :=
  row_of_forall (discharge bank [4,4,4,30,1,4,31,31,27,1,4,1,4,4,4,1,4,30,4,1,4,30,1,4,1,4,4,1,1,1,55,1,48,48,44,14,102,11,48,47] (hard := []) (by decide +kernel) .nil)

theorem f270 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,2,1,3,0]) :=
  row_of_forall (discharge bank [1,30,1,52,1,4,4,25,1,36,48,14,14] (hard := []) (by decide +kernel) .nil)

theorem f271 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,2,2,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,37,30,1,30,27,130,25,1,25,1,1,1,1,4,25,1,1,37,1,1,1,1,25,1,4,25,1,1,48,36,36,34,36,36,34] (hard := []) (by decide +kernel) .nil)

theorem f272 (hard : BadRow [Floor43.e2422598426166]) : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,2,2,1,1]) :=
  row_of_forall (discharge bank [4,4,30,37,30,30,27,1,27,1,4,44,52,4,4,25,1,25,25,1,1,4,37,27,4,1,1,1,1,1,48,48,0,36,11,133,36,14] (hard := [Floor43.e2422598426166]) (by decide +kernel) hard)

theorem f273 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,2,2,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,30,37,4,44,52,37,25,37,1,4,25,1,1,48,34] (hard := []) (by decide +kernel) .nil)

theorem f274 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,2,3,0,1]) :=
  row_of_forall (discharge bank [4,30,38,4,25,1,30,4,25,1,36,36,34,34,14] (hard := []) (by decide +kernel) .nil)

theorem f275 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,2,3,1,0]) :=
  row_of_forall (discharge bank [30,30,38,4,25,1,4,4,25,1,36,34,14] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
