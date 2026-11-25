import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f434 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [0,1,2,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f435 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [0,1,3,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f436 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [0,1,4,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f437 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [0,2,0,3]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f438 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [0,2,1,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f439 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [0,2,2,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f440 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [0,2,3,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f441 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [0,3,0,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f442 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [0,3,1,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f443 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [0,3,2,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f444 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [0,4,0,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f445 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [0,4,1,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f446 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f447 : BadRow (markedRow ⟨0,2,0,5,4,5⟩ [0,0] [1,0,0,4]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
