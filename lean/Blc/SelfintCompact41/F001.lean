import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f14 : BadRow (markedRow ⟨0,2,0,2,5,7⟩ [0,0] [2,0,1,2,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,54,1,1,10,10,10] (hard := []) (by decide +kernel) .nil)

theorem f15 : BadRow (markedRow ⟨0,2,0,2,5,7⟩ [0,0] [2,0,2,1,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,27,1,9,29,1,9,54,10] (hard := []) (by decide +kernel) .nil)

theorem f16 : BadRow (markedRow ⟨0,2,0,2,5,7⟩ [0,0] [2,0,2,2,1]) :=
  row_of_forall (discharge bank [1,1,1,1,1,41,1,1,9,1,1,10,10,11] (hard := []) (by decide +kernel) .nil)

theorem f17 : BadRow (markedRow ⟨0,2,0,2,5,7⟩ [0,0] [2,1,0,2,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,10,1,1,9,10,10] (hard := []) (by decide +kernel) .nil)

theorem f18 : BadRow (markedRow ⟨0,2,0,2,5,7⟩ [0,0] [2,1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f19 : BadRow (markedRow ⟨0,2,0,2,5,7⟩ [0,0] [2,1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f20 : BadRow (markedRow ⟨0,2,0,2,5,7⟩ [0,0] [2,1,2,0,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,27,1,10,41,1,9,10,10] (hard := []) (by decide +kernel) .nil)

theorem f21 : BadRow (markedRow ⟨0,2,0,2,5,7⟩ [0,0] [2,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f22 : BadRow (markedRow ⟨0,2,0,2,5,7⟩ [0,0] [2,1,2,2,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,41,1,1,9] (hard := []) (by decide +kernel) .nil)

theorem f23 : BadRow (markedRow ⟨0,2,0,2,5,7⟩ [0,0] [2,2,0,1,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,4,4,41,4,1,1,4,10,4] (hard := []) (by decide +kernel) .nil)

theorem f24 : BadRow (markedRow ⟨0,2,0,2,5,7⟩ [0,0] [2,2,0,2,1]) :=
  row_of_forall (discharge bank [1,1,1,1,1,4,4,1,4,1,1,4,54,4] (hard := []) (by decide +kernel) .nil)

theorem f25 : BadRow (markedRow ⟨0,2,0,2,5,7⟩ [0,0] [2,2,1,0,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,4,4,1,4,1,1,4,10,4] (hard := []) (by decide +kernel) .nil)

theorem f26 : BadRow (markedRow ⟨0,2,0,2,5,7⟩ [0,0] [2,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f27 : BadRow (markedRow ⟨0,2,0,2,5,7⟩ [0,0] [2,2,1,2,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,4,4,1,4] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
