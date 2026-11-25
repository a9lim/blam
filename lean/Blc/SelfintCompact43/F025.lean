import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f300 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,1,0,3,1]) :=
  row_of_forall (discharge bank [37,1,1,1,1,1,1,1,1,1,7,1,7,14,1,1,14,14,7] (hard := []) (by decide +kernel) .nil)

theorem f301 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,1,1,0,3]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,7,30,30,7,7,7] (hard := []) (by decide +kernel) .nil)

theorem f302 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,1,1,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,1,4,1,1,1,1,1,4,4,4,1,1,1,4,4,7,1,7,7,7,37,1,37,14,7,7,7,7,8,7,7,7] (hard := []) (by decide +kernel) .nil)

theorem f303 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,1,1,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,30,1,4,30,1,1,1,4,1,4,4,4,38,1,37,1,4,37,4,7,7,38,7,4,4,4,1,4,14,7,37,7,7] (hard := []) (by decide +kernel) .nil)

theorem f304 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,1,1,3,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,7] (hard := []) (by decide +kernel) .nil)

theorem f305 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,1,2,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,30,1,1,1,1,1,1,38,1,14,7,1,7,38,30,14,14,14,1,9,7,7] (hard := []) (by decide +kernel) .nil)

theorem f306 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,1,2,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,30,1,30,30,1,1,1,1,4,30,1,4,4,7,37,38,52,38,1,37,4,47,4,4,4,38,1,4,37,37,38,14,4,47] (hard := []) (by decide +kernel) .nil)

theorem f307 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,1,2,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,30,1,4,30,1,1,38,7,37,7,4,4,7] (hard := []) (by decide +kernel) .nil)

theorem f308 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,1,3,0,1]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,17,1,14,1,9,14,14] (hard := []) (by decide +kernel) .nil)

theorem f309 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,1,3,1,0]) :=
  row_of_forall (discharge bank [1,38,1,1,1,1,17,1,14,1,7,9] (hard := []) (by decide +kernel) .nil)

theorem f310 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,2,0,0,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f311 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,2,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,17,37,37,44,17,17,17,36,36,36,17,17,9,44,36,36,7,31,9,36,14,36,7,7] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
