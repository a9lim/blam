import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f252 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [0,0,3,2]) :=
  row_of_forall (discharge bank [34,34,34,34,10,10,11,10,1,1] (hard := []) (by decide +kernel) .nil)

theorem f253 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [0,1,1,3]) :=
  row_of_forall (discharge bank [34,34,34,34,34,34,34,34,34,11,13,13,13,8,1,1,1,1,27,57] (hard := []) (by decide +kernel) .nil)

theorem f254 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [0,1,2,2]) :=
  row_of_forall (discharge bank [31,31,31,34,34,34,34,34,34,23,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f255 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [0,1,3,1]) :=
  row_of_forall (discharge bank [34,34,34,34,34,34,34,34,34,10,13,13,13,8,1,1,1,1,9,57] (hard := []) (by decide +kernel) .nil)

theorem f256 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [0,2,0,3]) :=
  row_of_forall (discharge bank [34,34,34,34,34,34,34,10,26,8,27,10,10,10,27,29,10,14] (hard := []) (by decide +kernel) .nil)

theorem f257 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [0,2,1,2]) :=
  row_of_forall (discharge bank [31,31,31,34,34,34,34,34,34,34,34,34,65,10,10,10,8,1,1,1,1,1,1,1,9,42] (hard := []) (by decide +kernel) .nil)

theorem f258 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [0,2,2,1]) :=
  row_of_forall (discharge bank [31,31,31,34,34,34,34,34,34,34,11,10,23,10,8,1,1,1,1,1,9,48] (hard := []) (by decide +kernel) .nil)

theorem f259 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [0,2,3,0]) :=
  row_of_forall (discharge bank [34,34,34,34,26,8,10,11,9,14] (hard := []) (by decide +kernel) .nil)

theorem f260 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [0,3,0,2]) :=
  row_of_forall (discharge bank [34,34,34,34,34,34,34,10,14,8,27,10,10,10,9,41,10,7] (hard := []) (by decide +kernel) .nil)

theorem f261 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [0,3,1,1]) :=
  row_of_forall (discharge bank [34,34,34,34,34,34,13,13,13,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f262 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [0,3,2,0]) :=
  row_of_forall (discharge bank [34,34,34,34,15,8,10,10,9,26] (hard := []) (by decide +kernel) .nil)

theorem f263 (hard : BadRow [Floor41.e598343346974]) : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [1,0,1,3]) :=
  row_of_forall (discharge bank [34,34,34,34,34,34,34,34,34,34,34,34,10,10,13,13,13,13,13,6,27,1,17,11,14,0,10,10] (hard := [Floor41.e598343346974]) (by decide +kernel) hard)

theorem f264 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [1,0,2,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,34,34,34,34,34,34,34,34,4,10,23,1,23,1,1,27,1,1,10,14,10,10,26,4,50] (hard := []) (by decide +kernel) .nil)

theorem f265 : BadRow (markedRow ⟨0,3,0,3,4,5⟩ [0,0,0] [1,0,3,1]) :=
  row_of_forall (discharge bank [34,34,34,34,34,34,34,34,34,34,10,11,13,13,13,13,13,6,1,17,10,10,10,26] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
