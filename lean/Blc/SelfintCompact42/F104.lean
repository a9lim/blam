import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1456 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [1,0,1,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,9,2,2,2,2,9,9,2,2,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1457 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [1,0,2,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1458 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [1,0,3,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,9,9,2,2,9,9,9,2,2,2,2,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1459 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [1,0,4,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1460 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [1,1,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,9,2,2,9,2,2,2,2,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1461 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [1,1,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,9] (hard := []) (by decide +kernel) .nil)

theorem f1462 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [1,1,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1463 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [1,1,3,0]) :=
  row_of_forall (discharge bank [2,2,2,2,9,2,9,2,9] (hard := []) (by decide +kernel) .nil)

theorem f1464 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [1,2,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1465 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [1,2,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1466 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [1,2,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1467 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [1,3,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,9,9,2,9,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1468 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [1,3,1,0]) :=
  row_of_forall (discharge bank [2,2,2,9,2,2,9,2] (hard := []) (by decide +kernel) .nil)

theorem f1469 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [1,4,0,0]) :=
  row_of_forall (discharge bank [9,9,9] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
