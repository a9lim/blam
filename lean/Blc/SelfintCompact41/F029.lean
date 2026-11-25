import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f406 : BadRow (markedRow ⟨0,3,0,4,4,3⟩ [0,0,0] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f407 : BadRow (markedRow ⟨0,3,0,4,4,3⟩ [0,0,0] [0,0,1,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,35,35,35,35,35] (hard := []) (by decide +kernel) .nil)

theorem f408 : BadRow (markedRow ⟨0,3,0,4,4,3⟩ [0,0,0] [0,0,2,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,35,35,35,35,35] (hard := []) (by decide +kernel) .nil)

theorem f409 : BadRow (markedRow ⟨0,3,0,4,4,3⟩ [0,0,0] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f410 : BadRow (markedRow ⟨0,3,0,4,4,3⟩ [0,0,0] [0,1,0,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,35,35,35,35,35,35,35,35,35] (hard := []) (by decide +kernel) .nil)

theorem f411 : BadRow (markedRow ⟨0,3,0,4,4,3⟩ [0,0,0] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f412 : BadRow (markedRow ⟨0,3,0,4,4,3⟩ [0,0,0] [0,1,2,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,35,35,35,35,35] (hard := []) (by decide +kernel) .nil)

theorem f413 : BadRow (markedRow ⟨0,3,0,4,4,3⟩ [0,0,0] [0,2,0,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,35,35,35,35,35,35,35,35,35] (hard := []) (by decide +kernel) .nil)

theorem f414 : BadRow (markedRow ⟨0,3,0,4,4,3⟩ [0,0,0] [0,2,1,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,35,35,35,35,35] (hard := []) (by decide +kernel) .nil)

theorem f415 : BadRow (markedRow ⟨0,3,0,4,4,3⟩ [0,0,0] [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f416 : BadRow (markedRow ⟨0,3,0,4,4,3⟩ [0,0,0] [1,0,0,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,35,35,35,35,35] (hard := []) (by decide +kernel) .nil)

theorem f417 : BadRow (markedRow ⟨0,3,0,4,4,3⟩ [0,0,0] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f418 : BadRow (markedRow ⟨0,3,0,4,4,3⟩ [0,0,0] [1,0,2,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,35,35,35,35,35] (hard := []) (by decide +kernel) .nil)

theorem f419 : BadRow (markedRow ⟨0,3,0,4,4,3⟩ [0,0,0] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
