import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f378 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [0,0,2,0,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f379 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [0,0,2,1,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f380 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f381 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [0,1,0,0,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f382 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f383 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [0,1,0,2,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f384 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f385 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f386 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [0,1,2,0,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f387 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [0,2,0,0,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f388 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [0,2,0,1,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f389 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [0,2,1,0,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f390 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f391 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [1,0,0,0,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
