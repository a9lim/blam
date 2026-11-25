import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f252 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,1,0,2,3]) :=
  row_of_forall (discharge bank [4,4,4,25,1,4,25,1,1,4,25,1,4,25,4,25,1,1,1,1,1,7,38,31,1,1,14,1,1,9,36] (hard := []) (by decide +kernel) .nil)

theorem f253 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,1,0,3,2]) :=
  row_of_forall (discharge bank [4,4,4,1,4,1,1,4,1,4,4,1,1,1,1,1,7,38,1,1,1,1,9,36] (hard := []) (by decide +kernel) .nil)

theorem f254 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,1,1,1,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,14,36] (hard := []) (by decide +kernel) .nil)

theorem f255 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,1,1,2,2]) :=
  row_of_forall (discharge bank [1,4,1,1,1,1,1,1,1,4,4,4,1,4,1,1,1,1,1,14,1,1] (hard := []) (by decide +kernel) .nil)

theorem f256 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,1,1,3,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,14,36,1] (hard := []) (by decide +kernel) .nil)

theorem f257 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,1,2,0,3]) :=
  row_of_forall (discharge bank [4,4,4,4,1,30,1,1,1,1,30,1,1,1,1,1,1,1,7,7,1,1,14,1,1,9,9,36,36] (hard := []) (by decide +kernel) .nil)

theorem f258 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,1,2,1,2]) :=
  row_of_forall (discharge bank [4,37,4,4,1,1,4,1,1,37,4,4,4,1,4,4,4,1,1,4,1,1,1,1,4,1,38,1,1,1,1,1,48,36] (hard := []) (by decide +kernel) .nil)

theorem f259 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,1,2,2,1]) :=
  row_of_forall (discharge bank [4,37,27,4,1,1,1,4,37,1,37,1,4,1,4,1,4,1,1,4,1,38,1,1,1,14,48,36] (hard := []) (by decide +kernel) .nil)

theorem f260 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,1,2,3,0]) :=
  row_of_forall (discharge bank [4,4,30,4,25,1,30,4,4,7,35,9,36,13] (hard := []) (by decide +kernel) .nil)

theorem f261 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,1,3,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,1,1,14,1,1,1,1,1,1,7,7,14,1,9,9,36,36] (hard := []) (by decide +kernel) .nil)

theorem f262 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,1,3,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f263 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,1,3,2,0]) :=
  row_of_forall (discharge bank [4,4,1,4,1,1,1,1,4,4,1,7,14,9,36,36] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
