import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f288 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,0,1,1,3]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,7,1,1,7,1,48,7,30,1,7,7,7] (hard := []) (by decide +kernel) .nil)

theorem f289 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,0,1,2,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,30,1,1,4,30,1,1,1,1,1,4,4,4,37,1,1,4,38,4,7,30,1,14,38,7,7,1,1,37,7,7,7] (hard := []) (by decide +kernel) .nil)

theorem f290 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,0,1,3,1]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,7,1,7,14,1,1,1,7,14,14,7] (hard := []) (by decide +kernel) .nil)

theorem f291 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,0,2,0,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f292 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,0,2,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,30,1,30,1,1,1,1,1,1,1,4,4,7,37,38,1,1,7,14,1,7,1,1,14,38,14,7,1,38,7,7] (hard := []) (by decide +kernel) .nil)

theorem f293 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,0,2,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,30,30,1,1,4,30,1,1,4,4,7,38,1,7,1,7,4,38,1,1,4,31,14,14,14,7] (hard := []) (by decide +kernel) .nil)

theorem f294 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,0,2,3,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,7] (hard := []) (by decide +kernel) .nil)

theorem f295 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,0,3,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,36,36,36,36] (hard := []) (by decide +kernel) .nil)

theorem f296 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,0,3,1,1]) :=
  row_of_forall (discharge bank [36,11,36,1,1,1,1,38,1,1,7,14,14] (hard := []) (by decide +kernel) .nil)

theorem f297 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,0,3,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,36,36,1,1,7] (hard := []) (by decide +kernel) .nil)

theorem f298 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,1,0,1,3]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,7,1,1,7,1,14,7,30,1,7,7,7] (hard := []) (by decide +kernel) .nil)

theorem f299 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,1,0,2,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,30,1,1,4,30,1,1,1,1,4,38,1,1,4,38,4,7,30,1,14,37,7,1,1,7,7,7] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
