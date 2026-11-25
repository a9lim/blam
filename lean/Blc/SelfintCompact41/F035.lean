import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f490 : BadRow (markedRow ⟨0,2,0,6,4,3⟩ [0,0] [0,2,1,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f491 : BadRow (markedRow ⟨0,2,0,6,4,3⟩ [0,0] [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f492 : BadRow (markedRow ⟨0,2,0,6,4,3⟩ [0,0] [1,0,0,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f493 : BadRow (markedRow ⟨0,2,0,6,4,3⟩ [0,0] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f494 : BadRow (markedRow ⟨0,2,0,6,4,3⟩ [0,0] [1,0,2,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f495 : BadRow (markedRow ⟨0,2,0,6,4,3⟩ [0,0] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f496 : BadRow (markedRow ⟨0,2,0,6,4,3⟩ [0,0] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f497 : BadRow (markedRow ⟨0,2,0,6,4,3⟩ [0,0] [1,2,0,0]) :=
  row_of_forall (discharge bank [31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f498 : BadRow (markedRow ⟨0,2,0,6,4,3⟩ [0,0] [2,0,0,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f499 : BadRow (markedRow ⟨0,2,0,6,4,3⟩ [0,0] [2,0,1,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f500 : BadRow (markedRow ⟨0,2,0,6,4,3⟩ [0,0] [2,1,0,0]) :=
  row_of_forall (discharge bank [31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f501 : BadRow (markedRow ⟨0,2,0,6,4,3⟩ [0,0] [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f502 : BadRow (markedRow ⟨1,2,1,2,4,8⟩ [0,1] [2,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f503 : BadRow (markedRow ⟨1,2,1,2,4,8⟩ [1,0] [2,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
