import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f108 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [2,0,1,0,0,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,7,7,7,7,7,7,7,47,48,7,7,47,14,17,7,7,7,7,7,48,48,14,17,14,14,17,17,17] (hard := []) (by decide +kernel) .nil)

theorem f109 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [2,0,1,0,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f110 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [2,0,1,0,2,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,7,7,7,7,7,7,7,48,48,7,7,48,14,17,1,1,1,1,1,7,7,7,47,7,7,14,14,17] (hard := []) (by decide +kernel) .nil)

theorem f111 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [2,0,1,1,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f112 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [2,0,1,1,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f113 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [2,0,1,2,0,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,7,7,7,7,7,7,7,48,48,1,1,7,7,14,1,1,1,1,1,7,7,7,48,14,14,7,7,14] (hard := []) (by decide +kernel) .nil)

theorem f114 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [2,0,2,0,0,1]) :=
  row_of_forall (discharge bank [1,1,1,1,38,1,1,1,1,1,1,1,1,1,7,7,7,7,7,1,1,7,7,1,1,7,48,7,1,1,1,1,1,7,7,14,7,48,47,7,48,7] (hard := []) (by decide +kernel) .nil)

theorem f115 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [2,0,2,0,1,0]) :=
  row_of_forall (discharge bank [1,1,1,1,38,1,1,1,1,1,1,1,1,1,7,7,7,7,7,1,1,7,7,1,1,7,48,7,1,1,1,1,1,7,7,48,7,48,48,7,14,7] (hard := []) (by decide +kernel) .nil)

theorem f116 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [2,0,2,1,0,0]) :=
  row_of_forall (discharge bank [1,1,1,1,38,1,1,1,1,1,1,1,1,1,7,7,7,7,7,1,1,7,7,1,1,7,48,7,1,1,1,1,1,7,7,48,7,14,14,7,48,7] (hard := []) (by decide +kernel) .nil)

theorem f117 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [2,1,0,0,0,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,7,7,7,7,7,7,7,14,14,7,7,14,14,17,7,7,7,7,7,14,14,14,17,14,14,17,17,17] (hard := []) (by decide +kernel) .nil)

theorem f118 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [2,1,0,0,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f119 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [2,1,0,0,2,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,7,7,7,7,7,7,7,14,14,7,7,14,14,17,1,1,1,1,1,7,7,7,14,7,7,14,14,17] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
