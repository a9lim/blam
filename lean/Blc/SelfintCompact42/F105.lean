import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1470 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [2,0,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1471 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [2,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1472 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [2,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1473 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [2,0,3,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1474 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [2,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1475 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [2,1,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1476 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [2,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1477 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [2,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1478 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [2,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1479 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [2,3,0,0]) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1480 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [3,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1481 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [3,0,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1482 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [3,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1483 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [3,1,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
