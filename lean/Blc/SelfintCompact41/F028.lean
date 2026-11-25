import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f392 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f393 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [1,0,0,2,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f394 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f395 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f396 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [1,0,2,0,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f397 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f398 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f399 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f400 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [1,2,0,0,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f401 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [2,0,0,0,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f402 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [2,0,0,1,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f403 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [2,0,1,0,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f404 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [2,1,0,0,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f405 : BadRow (markedRow ⟨0,2,0,4,5,3⟩ [0,0] [3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
