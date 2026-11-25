import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1554 : BadRow (markedRow ⟨1,2,2,4,4,4⟩ [1,1] [0,3,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1555 : BadRow (markedRow ⟨1,2,2,4,4,4⟩ [1,1] [0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1556 : BadRow (markedRow ⟨1,2,2,4,4,4⟩ [1,1] [1,0,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1557 : BadRow (markedRow ⟨1,2,2,4,4,4⟩ [1,1] [1,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1558 : BadRow (markedRow ⟨1,2,2,4,4,4⟩ [1,1] [1,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1559 : BadRow (markedRow ⟨1,2,2,4,4,4⟩ [1,1] [1,0,3,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1560 : BadRow (markedRow ⟨1,2,2,4,4,4⟩ [1,1] [1,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1561 : BadRow (markedRow ⟨1,2,2,4,4,4⟩ [1,1] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1562 : BadRow (markedRow ⟨1,2,2,4,4,4⟩ [1,1] [1,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1563 : BadRow (markedRow ⟨1,2,2,4,4,4⟩ [1,1] [1,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1564 : BadRow (markedRow ⟨1,2,2,4,4,4⟩ [1,1] [1,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1565 : BadRow (markedRow ⟨1,2,2,4,4,4⟩ [1,1] [1,3,0,0]) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1566 : BadRow (markedRow ⟨1,2,2,4,4,4⟩ [1,1] [2,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1567 : BadRow (markedRow ⟨1,2,2,4,4,4⟩ [1,1] [2,0,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
