import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f322 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [0,3,1,2]) :=
  row_of_forall (discharge bank [7,7,12,12,7,7,12,11,8,16,1,1,23,39,12,12] (hard := []) (by decide +kernel) .nil)

theorem f323 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [0,3,2,1]) :=
  row_of_forall (discharge bank [7,12,7,11,7,12,8,1,1,1,23,12] (hard := []) (by decide +kernel) .nil)

theorem f324 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [0,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f325 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [1,0,2,3]) :=
  row_of_forall (discharge bank [7,7,25,1,7,1,1,1,12,1,16,1,1,12,39,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f326 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [1,0,3,2]) :=
  row_of_forall (discharge bank [7,7,1,7,1,1,12,1,16,1,12,12,41,12] (hard := []) (by decide +kernel) .nil)

theorem f327 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [1,1,1,3]) :=
  row_of_forall (discharge bank [7,7,7,7,12,5,5,16,12,12] (hard := []) (by decide +kernel) .nil)

theorem f328 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [1,1,2,2]) :=
  row_of_forall (discharge bank [1,7,1,11,12,12] (hard := []) (by decide +kernel) .nil)

theorem f329 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [1,1,3,1]) :=
  row_of_forall (discharge bank [7,7,7,7,7,12,5,5,16,17,12,12] (hard := []) (by decide +kernel) .nil)

theorem f330 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [1,2,0,3]) :=
  row_of_forall (discharge bank [7,7,1,25,12,1,1,12,12,16,27,1,1,12,39,12,12,18] (hard := []) (by decide +kernel) .nil)

theorem f331 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [1,2,1,2]) :=
  row_of_forall (discharge bank [7,55,7,7,1,1,12,16,1,12,30,30,12,49] (hard := []) (by decide +kernel) .nil)

theorem f332 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [1,2,2,1]) :=
  row_of_forall (discharge bank [7,48,1,7,1,12,16,1,48,12,17,12] (hard := []) (by decide +kernel) .nil)

theorem f333 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [1,2,3,0]) :=
  row_of_forall (discharge bank [7,1,12,23,1,15] (hard := []) (by decide +kernel) .nil)

theorem f334 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [1,3,0,2]) :=
  row_of_forall (discharge bank [7,7,12,1,12,12,23,39,12,12,12,18] (hard := []) (by decide +kernel) .nil)

theorem f335 : BadRow (markedRow ⟨0,3,0,3,4,6⟩ [0,0,0] [1,3,1,1]) :=
  row_of_forall (discharge bank [7,7,7,5,5,12] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
