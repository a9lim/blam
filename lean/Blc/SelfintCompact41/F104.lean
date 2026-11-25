import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1456 : BadRow (markedRow ⟨2,2,1,3,4,4⟩ [1,0] [3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1457 : BadRow (markedRow ⟨2,2,1,3,4,4⟩ [1,0] [3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1458 : BadRow (markedRow ⟨2,2,1,3,4,4⟩ [1,0] [3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1459 : BadRow (markedRow ⟨2,2,2,3,4,3⟩ [0,2] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1460 : BadRow (markedRow ⟨2,2,2,3,4,3⟩ [0,2] [0,0,1,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1461 : BadRow (markedRow ⟨2,2,2,3,4,3⟩ [0,2] [0,0,2,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1462 : BadRow (markedRow ⟨2,2,2,3,4,3⟩ [0,2] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1463 : BadRow (markedRow ⟨2,2,2,3,4,3⟩ [0,2] [0,1,0,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1464 : BadRow (markedRow ⟨2,2,2,3,4,3⟩ [0,2] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1465 : BadRow (markedRow ⟨2,2,2,3,4,3⟩ [0,2] [0,1,2,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1466 : BadRow (markedRow ⟨2,2,2,3,4,3⟩ [0,2] [0,2,0,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1467 : BadRow (markedRow ⟨2,2,2,3,4,3⟩ [0,2] [0,2,1,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1468 : BadRow (markedRow ⟨2,2,2,3,4,3⟩ [0,2] [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1469 : BadRow (markedRow ⟨2,2,2,3,4,3⟩ [0,2] [1,0,0,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
