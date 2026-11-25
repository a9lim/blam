import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f280 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [2,1,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,1,9,9,1,9,9,5,5,9,9,5,12,18,9,9,9,9,9,5,18,12,14,14] (hard := []) (by decide +kernel) .nil)

theorem f281 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [2,1,1,1,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f282 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [2,1,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,9,1,9,9,9,1,9,5,5,5,12,18,9,9,9,1,9,5,5,12,18] (hard := []) (by decide +kernel) .nil)

theorem f283 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [2,1,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,23,1,9,1,1,9,5,5,5,5,9,9,9,5,23,16,5,9,5,9,9,9,5] (hard := []) (by decide +kernel) .nil)

theorem f284 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [2,1,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,23,9,9,16,1,9,5,5,5,9,9,9,5,9,9,9,23,1,9,5,5,9,5] (hard := []) (by decide +kernel) .nil)

theorem f285 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [2,1,3,0,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f286 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [2,2,0,0,2]) :=
  row_of_forall (discharge bank [14,14,39,39,18,3,3,5,5,18,3,11,18,1,3,15,3,12,14] (hard := []) (by decide +kernel) .nil)

theorem f287 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [2,2,0,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,14,14,14,39,39,18,39,18,3,3,3,9,9,18,3,9,18,1,3,15,3,18,1,3,9,15,3,9] (hard := []) (by decide +kernel) .nil)

theorem f288 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [2,2,0,2,0]) :=
  row_of_forall (discharge bank [14,39,18,3,5,5,25,18,1,3,5,15,3,12] (hard := []) (by decide +kernel) .nil)

theorem f289 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [2,2,1,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,14,14,39,41,27,18,18,3,3,9,9,9,18,3,9,18,1,3,43,9,9,15,3,9] (hard := []) (by decide +kernel) .nil)

theorem f290 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [2,2,1,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,14,41,39,18,18,3,9,9,9,18,3,9,9,9,18,1,20,3,9,15,3] (hard := []) (by decide +kernel) .nil)

theorem f291 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [2,2,2,0,0]) :=
  row_of_forall (discharge bank [41,18,5,5,20,5] (hard := []) (by decide +kernel) .nil)

theorem f292 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [2,3,0,0,1]) :=
  row_of_forall (discharge bank [1,3,3,3,3,14,14,18,18,18] (hard := []) (by decide +kernel) .nil)

theorem f293 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [2,3,0,1,0]) :=
  row_of_forall (discharge bank [1,1,3,1,3,30,3,14,14,18,18,18] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
