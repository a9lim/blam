import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f336 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [1,3,2,0]) :=
  row_of_forall (discharge bank [7,1,12,23,45,15] (hard := []) (by decide +kernel) .nil)

theorem f337 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [2,0,1,3]) :=
  row_of_forall (discharge bank [1,1,1,12,12,12,1,1,1,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f338 (hard : BadRow [Floor42.e1209571601294]) : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [2,0,2,2]) :=
  row_of_forall (discharge bank [4,1,1,1,4,12,12,0,12,12,16,1,1,1,27,12,12,12,12,12] (hard := [Floor42.e1209571601294]) (by decide +kernel) hard)

theorem f339 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [2,0,3,1]) :=
  row_of_forall (discharge bank [3,1,12,11,3,1,12,12] (hard := []) (by decide +kernel) .nil)

theorem f340 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [2,1,0,3]) :=
  row_of_forall (discharge bank [1,1,1,1,12,12,12,1,1,1,25,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f341 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [2,1,1,2]) :=
  row_of_forall (discharge bank [4,4,4,1,4,12,12,12,12,5,5,14,43,12,39,42,24,41] (hard := []) (by decide +kernel) .nil)

theorem f342 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [2,1,2,1]) :=
  row_of_forall (discharge bank [4,4,4,1,1,4,12,12,4,11,5,5,14,42,1,12,30,47,12,41] (hard := []) (by decide +kernel) .nil)

theorem f343 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [2,1,3,0]) :=
  row_of_forall (discharge bank [1,1,1,43] (hard := []) (by decide +kernel) .nil)

theorem f344 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [2,2,0,2]) :=
  row_of_forall (discharge bank [1,1,3,43,30,3,12,1,1,3,12,39,3,11] (hard := []) (by decide +kernel) .nil)

theorem f345 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [2,2,1,1]) :=
  row_of_forall (discharge bank [4,4,1,1,42,3,4,30,3,5,5,42,49,43,3,12,17,3] (hard := []) (by decide +kernel) .nil)

theorem f346 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [2,2,2,0]) :=
  row_of_forall (discharge bank [61,43,43,17] (hard := []) (by decide +kernel) .nil)

theorem f347 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [2,3,0,1]) :=
  row_of_forall (discharge bank [24,3,12,11,17,3,12,44] (hard := []) (by decide +kernel) .nil)

theorem f348 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [2,3,1,0]) :=
  row_of_forall (discharge bank [1,12,1,20] (hard := []) (by decide +kernel) .nil)

theorem f349 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [3,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
