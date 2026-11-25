import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f476 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [3,1,1,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f477 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [3,2,0,0]) :=
  row_of_forall (discharge bank [31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f478 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [4,0,0,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f479 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [4,0,1,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f480 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [4,1,0,0]) :=
  row_of_forall (discharge bank [31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f481 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f482 : BadRow (markedRow ⟨0,2,0,6,4,3⟩ [0,0] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f483 : BadRow (markedRow ⟨0,2,0,6,4,3⟩ [0,0] [0,0,1,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f484 : BadRow (markedRow ⟨0,2,0,6,4,3⟩ [0,0] [0,0,2,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f485 : BadRow (markedRow ⟨0,2,0,6,4,3⟩ [0,0] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f486 : BadRow (markedRow ⟨0,2,0,6,4,3⟩ [0,0] [0,1,0,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f487 : BadRow (markedRow ⟨0,2,0,6,4,3⟩ [0,0] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f488 : BadRow (markedRow ⟨0,2,0,6,4,3⟩ [0,0] [0,1,2,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f489 : BadRow (markedRow ⟨0,2,0,6,4,3⟩ [0,0] [0,2,0,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
