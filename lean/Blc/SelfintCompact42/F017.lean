import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f238 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,1,0,3,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1,1,1,23,1,23,1,12,26,3,3,12,51,1,1] (hard := []) (by decide +kernel) .nil)

theorem f239 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,1,1,0,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,3,1,3,23,1,23,1,1,12,12,12,12,3,3,3,3] (hard := []) (by decide +kernel) .nil)

theorem f240 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,1,1,1,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1,1,1,12,3] (hard := []) (by decide +kernel) .nil)

theorem f241 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,1,1,2,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,23,1,23,12,1,12,3,1] (hard := []) (by decide +kernel) .nil)

theorem f242 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,1,1,3,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,42,3,3,1,1,44,3,1] (hard := []) (by decide +kernel) .nil)

theorem f243 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,1,2,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,9,9,9,9,9,1,8,9,9,9,9,9,1,9,9,9,9,9,9,1,9,9,9,1,1,1,12,12,1,1,1,26,3,3,3,1] (hard := []) (by decide +kernel) .nil)

theorem f244 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,1,2,1,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,27,27,1,23,1,26,73,3,3,1] (hard := []) (by decide +kernel) .nil)

theorem f245 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,1,2,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,9,9,16,1,9,9,9,1,1,9,1,47,12] (hard := []) (by decide +kernel) .nil)

theorem f246 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,1,3,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,3,1,3,12,1,12,43,3,3,12] (hard := []) (by decide +kernel) .nil)

theorem f247 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,1,3,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,3,3,1,1,12,3,1] (hard := []) (by decide +kernel) .nil)

theorem f248 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,2,0,0,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,1,1,8,8,1,12,12,12,1,1,1,1,1,1,5,5,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f249 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,2,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,1,9,9,9,9,8,55,9,9,9,12,9,9,9,9,9,9,9,9,9,9,9,9,1,16,1,9,1,1,9,1,1,17,3,3,24,3,11,12,3] (hard := []) (by decide +kernel) .nil)

theorem f250 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,2,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,16,1,9,9,8,36,8,9,9,9,8,12,9,9,9,9,16,9,8,9,1,8,1,1,1,9,9,9,9,9,9,9,1,17,3,24,3,11,12,3] (hard := []) (by decide +kernel) .nil)

theorem f251 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,2,0,3,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,1,1,8,12,1,8,1,1,1,5,5,5,5,5,14,14] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
