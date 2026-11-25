import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f420 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [1,1,2,3]) :=
  row_of_forall (discharge bank [39,39,39,39,39,14,1,1,1,30,1,14] (hard := []) (by decide +kernel) .nil)

theorem f421 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [1,1,3,2]) :=
  row_of_forall (discharge bank [39,39,39,39,39,1,36,1,1,1,38,1,14,36] (hard := []) (by decide +kernel) .nil)

theorem f422 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [1,2,1,3]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,31,1,14,14,25,30,1,1,1,30,37,44,14,14,14] (hard := []) (by decide +kernel) .nil)

theorem f423 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [1,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f424 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [1,2,3,1]) :=
  row_of_forall (discharge bank [39,39,39,39,39,44,1,14,25,1,1,38,30,1,11,14] (hard := []) (by decide +kernel) .nil)

theorem f425 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [1,3,0,3]) :=
  row_of_forall (discharge bank [1,31,1,1,1,1,25,14,25,1] (hard := []) (by decide +kernel) .nil)

theorem f426 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [1,3,1,2]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,1,14,36,25,30,1,1,1,38,44,24,14,36] (hard := []) (by decide +kernel) .nil)

theorem f427 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [1,3,2,1]) :=
  row_of_forall (discharge bank [39,39,39,39,39,14,25,1,1,38,38,14] (hard := []) (by decide +kernel) .nil)

theorem f428 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [1,3,3,0]) :=
  row_of_forall (discharge bank [38,1,1,30,1,25] (hard := []) (by decide +kernel) .nil)

theorem f429 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [2,0,2,3]) :=
  row_of_forall (discharge bank [39,39,39,39,39,1,1,14,30,1,13,1,14,1,1,31] (hard := []) (by decide +kernel) .nil)

theorem f430 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [2,0,3,2]) :=
  row_of_forall (discharge bank [39,39,39,39,39,36,1,14,30,1,13,1,13,36,1,37] (hard := []) (by decide +kernel) .nil)

theorem f431 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [2,1,1,3]) :=
  row_of_forall (discharge bank [39,39,39,39,39,1,14,7,7,17,17,14,11,14] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
