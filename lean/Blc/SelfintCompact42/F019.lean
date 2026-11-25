import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f266 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [2,0,0,3,1]) :=
  row_of_forall (discharge bank [3,3,3,1,19,1,1,1,5,1,1,5,5,26] (hard := []) (by decide +kernel) .nil)

theorem f267 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [2,0,1,0,3]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,19,19,1,1,1,1,1,5,5,5,26,5,5,11,12,14] (hard := []) (by decide +kernel) .nil)

theorem f268 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [2,0,1,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,9,1,9,9,1,9,9,1,1,1,9,9,9,9,9,5,9,9,9,9,5,12,9,9,9,9,9,5,5,5,12,27,14,39,14] (hard := []) (by decide +kernel) .nil)

theorem f269 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [2,0,1,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,16,1,9,9,16,1,1,1,9,9,9,1,9,9,9,5,5,9,9,5,9,27,5,12,16,1,5,5,12,9,9,9,1,9,9,9,9,5,26] (hard := []) (by decide +kernel) .nil)

theorem f270 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [2,0,1,3,0]) :=
  row_of_forall (discharge bank [1,1,1,1,19,1,1,1,1,5,1,1,5,5,11] (hard := []) (by decide +kernel) .nil)

theorem f271 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [2,0,2,0,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,5,5,1,5,5,11,1,1,5,23,5,5,27,14] (hard := []) (by decide +kernel) .nil)

theorem f272 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [2,0,2,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,1,1,23,1,9,1,1,9,16,1,9,9,9,5,5,5,1,5,9,9,1,1,5,23,5,9,23,1,9,9,5,12,5,9,9] (hard := []) (by decide +kernel) .nil)

theorem f273 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [2,0,2,2,0]) :=
  row_of_forall (discharge bank [23,1,9,16,1,1,5,5,26,9,23,1,1,9,5,26,5,5,11] (hard := []) (by decide +kernel) .nil)

theorem f274 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [2,0,3,0,1]) :=
  row_of_forall (discharge bank [1,3,3,3,3,1,1,19,19,1,1,1,5,1,12,5] (hard := []) (by decide +kernel) .nil)

theorem f275 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [2,0,3,1,0]) :=
  row_of_forall (discharge bank [1,3,3,1,19,3,1,1,1,5,1,12,5] (hard := []) (by decide +kernel) .nil)

theorem f276 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [2,1,0,0,3]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,5,5,5,12,5,5,23,12,14] (hard := []) (by decide +kernel) .nil)

theorem f277 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [2,1,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,1,9,9,9,9,1,1,9,9,9,5,5,5,9,9,9,9,18,9,9,9,9,9,5,5,39,18,23,14,14] (hard := []) (by decide +kernel) .nil)

theorem f278 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [2,1,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,9,16,1,9,9,16,1,1,9,9,9,5,5,9,5,5,9,5,9,25,18,16,1,5,5,12,9,9,9,5,9,9,18] (hard := []) (by decide +kernel) .nil)

theorem f279 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [2,1,0,3,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,5,1,1,5,5,12] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
