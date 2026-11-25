import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f228 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,2,3,1,1]) :=
  row_of_forall (discharge bank [4,4,4,30,4,25,14,4,4,25,30,47,4,25,47,4,4,4,30,1,1,1,14,14] (hard := []) (by decide +kernel) .nil)

theorem f229 (hard : BadRow [Floor43.e2422407106490]) : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,2,3,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,14,0,1,4,4,4,1,1,36,36,36] (hard := [Floor43.e2422407106490]) (by decide +kernel) hard)

theorem f230 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,3,0,1,3]) :=
  row_of_forall (discharge bank [1,1,28,25,30,1,1,1,1,1,1,1,1,1,14,14,28,25,14,14,14,17,17,17] (hard := []) (by decide +kernel) .nil)

theorem f231 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,3,0,2,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,156,14,47,156,47] (hard := []) (by decide +kernel) .nil)

theorem f232 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,3,0,3,1]) :=
  row_of_forall (discharge bank [1,1,28,1,28,1,1,1,1,1,28,1,1,1,14,14,28,14,28,37,14,17,14,17] (hard := []) (by decide +kernel) .nil)

theorem f233 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,3,1,0,3]) :=
  row_of_forall (discharge bank [1,1,28,25,30,1,1,1,1,1,1,1,1,1,14,14,28,25,14,14,14,17,17,17] (hard := []) (by decide +kernel) .nil)

theorem f234 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,3,1,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,14,14,14,14,47,14,14,4,4,4,4,4,14,14,14,14,14] (hard := []) (by decide +kernel) .nil)

theorem f235 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,3,1,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,14,14,47,14,4,4,14,48,47,4,4,4,4,4,1,1,14,14,14,14,14] (hard := []) (by decide +kernel) .nil)

theorem f236 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,3,1,3,0]) :=
  row_of_forall (discharge bank [1,1,28,1,1,1,1,1,1,1,14,14,28,37,14,17] (hard := []) (by decide +kernel) .nil)

theorem f237 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,3,2,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,47,14,4,4,4,4,4,14,156,36,14,36] (hard := []) (by decide +kernel) .nil)

theorem f238 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,3,2,1,1]) :=
  row_of_forall (discharge bank [4,4,4,14,25,4,14,4,4,14,4,14,4,4,4,1,14,13,14] (hard := []) (by decide +kernel) .nil)

theorem f239 (hard : BadRow [Floor43.e2422406708154]) : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,3,2,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,14,0,4,4,4,14,36,36] (hard := [Floor43.e2422406708154]) (by decide +kernel) hard)

end Blc.SelfintSingleObject.Compact43
