import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f252 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,2,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,8,9,9,23,9,9,9,9,9,9,9,8,1,9,9,9,9,9,9,16,9,9,8,1,9,1,1,12,12,39,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f253 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,2,1,1,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1,39,15,3,12,39,15,12,69] (hard := []) (by decide +kernel) .nil)

theorem f254 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,2,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,9,8,9,9,9,8,9,9,9,9,8,1,9,9,8,9,9,8,1,1,15,12,20] (hard := []) (by decide +kernel) .nil)

theorem f255 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,2,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,16,47,1,9,36,67,9,1,1,9,9,9,9,9,16,1,1,9,9,9,9,9,41,41,12,11] (hard := []) (by decide +kernel) .nil)

theorem f256 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,2,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,47,9,9,23,55,9,16,9,9,9,9,9,9,16,36,9,8,41,15,12,20] (hard := []) (by decide +kernel) .nil)

theorem f257 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,2,3,0,0]) :=
  row_of_forall (discharge bank [9,9,9,16,23,16,5,5,5,14] (hard := []) (by decide +kernel) .nil)

theorem f258 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,3,0,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,12,12,1,1,1,5,5,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f259 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,3,0,1,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,22,1,1,63,68] (hard := []) (by decide +kernel) .nil)

theorem f260 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,3,0,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,12,12,1,1,1,5,5,5,5,5,14,14] (hard := []) (by decide +kernel) .nil)

theorem f261 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,3,1,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,3,1,3,63] (hard := []) (by decide +kernel) .nil)

theorem f262 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,3,1,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,3,3] (hard := []) (by decide +kernel) .nil)

theorem f263 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,3,2,0,0]) :=
  row_of_forall (discharge bank [9,9,9,1,1,1,5,5,5,14] (hard := []) (by decide +kernel) .nil)

theorem f264 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [2,0,0,1,3]) :=
  row_of_forall (discharge bank [1,1,3,1,19,1,1,1,1,1,5,5,5,12,5,5,46,23,14] (hard := []) (by decide +kernel) .nil)

theorem f265 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [2,0,0,2,2]) :=
  row_of_forall (discharge bank [9,16,1,1,9,16,1,1,1,1,9,5,5,5,9,5,9,27,1,1,5,5,11,5,5,27,11,14] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
