import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f216 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,1,3,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,47,1,1,4,4,4,1,4,47,1,1,4,4,4,4,4,1,1,1,1,14,1,14,36,36] (hard := []) (by decide +kernel) .nil)

theorem f217 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,1,3,3,0]) :=
  row_of_forall (discharge bank [30,1,1,30,1,1,1,1,1,1,30,14,47,1,37,1,30] (hard := []) (by decide +kernel) .nil)

theorem f218 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,2,0,2,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,14,25,14,47,47,4,4,4,4,4,1,1,30,1,1,9,14,14,36,48,1] (hard := []) (by decide +kernel) .nil)

theorem f219 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,2,0,3,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,47,25,47,47,47,4,4,4,4,4,1,1,30,1,1,9,14,47,36,48,1] (hard := []) (by decide +kernel) .nil)

theorem f220 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,2,1,1,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,14,25,14,14,14,14,14,14,14,14,25,14,14,14,4,4,4,4,4,1,30,1,1,14,14,11,48,36] (hard := []) (by decide +kernel) .nil)

theorem f221 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,2,1,2,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4,25,4,4,4,25,14,14,1,1,4,30,4,25,14,14,14,14,14,14,14,4,4,25,14,25,14,14,1,14,14,1,1,4,4,37,14,14,48] (hard := []) (by decide +kernel) .nil)

theorem f222 (hard : BadRow [Floor43.e2422407106294]) : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,2,1,3,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,14,25,30,14,14,14,14,4,4,25,14,14,0,14,14,14,4,4,4,4,4,1,30,30,1,1,1,1,14,14,14,48,36,14] (hard := [Floor43.e2422407106294]) (by decide +kernel) hard)

theorem f223 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,2,2,0,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,36,14,36,36,36] (hard := []) (by decide +kernel) .nil)

theorem f224 (hard : BadRow [Floor43.e2422407131374]) : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,2,2,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4,30,14,25,4,4,25,47,25,14,14,47,47,0,47,4,25,14,1,37,48,14,47,47,4,4,25,25,14,1,4,25,14,1,4,4,37,27,37,14,14,48,36,48] (hard := [Floor43.e2422407131374]) (by decide +kernel) hard)

theorem f225 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,2,2,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4,30,14,4,4,25,25,37,14,47,47,4,25,14,14,4,38,48,30,4,25,1,47,47,4,25,14,1,4,4,37,27,14,36,48,36] (hard := []) (by decide +kernel) .nil)

theorem f226 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,2,2,3,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,14,4,4,4,1,1,36,36,36] (hard := []) (by decide +kernel) .nil)

theorem f227 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,2,3,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,14,1,4,4,4,4,4,1,1,1,1,36,14,36,36,36] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
