import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f448 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [1,0,1,3]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f449 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [1,0,2,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f450 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [1,0,3,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f451 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [1,0,4,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f452 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [1,1,0,3]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f453 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [1,1,1,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f454 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [1,1,2,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f455 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [1,1,3,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f456 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [1,2,0,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f457 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [1,2,1,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f458 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [1,2,2,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f459 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [1,3,0,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f460 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [1,3,1,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f461 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [1,4,0,0]) :=
  row_of_forall (discharge bank [31,31,31] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
