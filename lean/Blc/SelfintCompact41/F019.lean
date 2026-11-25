import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f266 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [1,1,0,3]) :=
  row_of_forall (discharge bank [34,34,34,34,34,34,34,34,34,34,10,10,10,10,13,13,13,13,13,27,29,10,14,10,10,10,10,10] (hard := []) (by decide +kernel) .nil)

theorem f267 (hard : BadRow [Floor41.e598343345006]) : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [1,1,1,2]) :=
  row_of_forall (discharge bank [34,34,34,34,34,34,10,29,15,17,51,10,0,41] (hard := [Floor41.e598343345006]) (by decide +kernel) hard)

theorem f268 (hard : BadRow [Floor41.e598343398342]) : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [1,1,2,1]) :=
  row_of_forall (discharge bank [34,34,34,34,34,10,27,27,0,15,28,10] (hard := [Floor41.e598343398342]) (by decide +kernel) hard)

theorem f269 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [1,1,3,0]) :=
  row_of_forall (discharge bank [34,34,34,34,34,26,13,13,13,27,6,14] (hard := []) (by decide +kernel) .nil)

theorem f270 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [1,2,0,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,34,34,34,34,34,34,34,10,4,23,1,10,1,1,27,22,10,10,14,10,10,51,4] (hard := []) (by decide +kernel) .nil)

theorem f271 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [1,2,1,1]) :=
  row_of_forall (discharge bank [34,34,34,34,34,34,34,10,64,6,27,27,22,10,10,14,42,28] (hard := []) (by decide +kernel) .nil)

theorem f272 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [1,2,2,0]) :=
  row_of_forall (discharge bank [31,31,31,34,34,23,23,1,27,10] (hard := []) (by decide +kernel) .nil)

theorem f273 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [1,3,0,1]) :=
  row_of_forall (discharge bank [34,34,34,34,34,34,34,10,14,13,13,13,13,13,10,10,10,7] (hard := []) (by decide +kernel) .nil)

theorem f274 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [1,3,1,0]) :=
  row_of_forall (discharge bank [34,34,34,34,34,10,13,13,13,55,6,10] (hard := []) (by decide +kernel) .nil)

theorem f275 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [2,0,0,3]) :=
  row_of_forall (discharge bank [34,34,34,34,34,6,6,17,17,39] (hard := []) (by decide +kernel) .nil)

theorem f276 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [2,0,1,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,13,13,13,13,13,13,13,19,19,1,1,17,6,27,1,17,10,10,10] (hard := []) (by decide +kernel) .nil)

theorem f277 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [2,0,2,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,13,13,13,13,13,19,19,14,19,10,6,1,17,10,10] (hard := []) (by decide +kernel) .nil)

theorem f278 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [2,0,3,0]) :=
  row_of_forall (discharge bank [34,34,34,34,34,6,6,17,6,17] (hard := []) (by decide +kernel) .nil)

theorem f279 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [2,1,0,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,13,13,13,13,13,19,19,1,1,17,17,41,10,10,10] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
