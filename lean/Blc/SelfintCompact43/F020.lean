import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f240 (hard : BadRow [Floor43.e2422406708182]) : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,3,3,0,1]) :=
  row_of_forall (discharge bank [30,38,1,38,1,1,1,1,1,30,1,1,1,1,30,44,47,38,43,14,0,37,37,36,37,36] (hard := [Floor43.e2422406708182]) (by decide +kernel) hard)

theorem f241 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,3,3,1,0]) :=
  row_of_forall (discharge bank [30,38,1,1,1,1,1,1,1,1,30,44,47,14,14,37,37,36] (hard := []) (by decide +kernel) .nil)

theorem f242 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,0,0,3,3]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f243 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,0,1,2,3]) :=
  row_of_forall (discharge bank [4,4,4,25,1,4,25,1,1,4,4,4,25,1,4,25,4,25,1,1,1,1,1,14,14,14,14,14,14,1] (hard := []) (by decide +kernel) .nil)

theorem f244 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,0,1,3,2]) :=
  row_of_forall (discharge bank [4,4,4,1,4,1,1,1,4,4,4,1,4,4,1,1,1,1,1,1,1,36,14,14,14,14,1] (hard := []) (by decide +kernel) .nil)

theorem f245 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,0,2,1,3]) :=
  row_of_forall (discharge bank [4,4,25,1,30,1,1,1,1,4,4,25,1,1,1,1,1,1,1,1,1,1,1,14,14,36,14,36,14,14,1,1] (hard := []) (by decide +kernel) .nil)

theorem f246 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,0,2,2,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,37,27,38,4,25,1,1,1,4,25,1,1,4,37,130,37,4,25,4,25,1,1,1,1,1,1,1,4,25,1,1,4,25,1,1,1,1,36,36,14,36,36,14,14,36,14] (hard := []) (by decide +kernel) .nil)

theorem f247 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,0,2,3,1]) :=
  row_of_forall (discharge bank [4,4,4,25,30,1,4,25,1,4,4,25,30,1,1,4,25,1,4,25,1,1,14,9,13,36,14,1,24] (hard := []) (by decide +kernel) .nil)

theorem f248 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,0,3,0,3]) :=
  row_of_forall (discharge bank [1,28,1,1,1,1,28,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f249 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,0,3,1,2]) :=
  row_of_forall (discharge bank [4,4,1,1,1,4,4,1,1,1,1,1,1,1,14,36,48,47,14,14,1,1] (hard := []) (by decide +kernel) .nil)

theorem f250 (hard : BadRow [Floor43.e2422597848950]) : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,0,3,2,1]) :=
  row_of_forall (discharge bank [4,4,4,1,4,1,4,4,1,1,4,1,4,1,1,14,48,9,0,14,1,11] (hard := [Floor43.e2422597848950]) (by decide +kernel) hard)

theorem f251 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [1,0,3,3,0]) :=
  row_of_forall (discharge bank [30,1,1,1,1,30,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
