import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1694 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [1,2] [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1695 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [1,2] [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1696 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [1,2] [1,2,0,2]) :=
  row_of_forall (discharge bank [33,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f1697 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [1,2] [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1698 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [1,2] [1,2,2,0]) :=
  row_of_forall (discharge bank [33,33,1] (hard := []) (by decide +kernel) .nil)

theorem f1699 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [1,2] [2,0,1,2]) :=
  row_of_forall (discharge bank [29,29,1,1,5] (hard := []) (by decide +kernel) .nil)

theorem f1700 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [1,2] [2,0,2,1]) :=
  row_of_forall (discharge bank [29,29,18,29,1] (hard := []) (by decide +kernel) .nil)

theorem f1701 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [1,2] [2,1,0,2]) :=
  row_of_forall (discharge bank [29,29,1,1,5] (hard := []) (by decide +kernel) .nil)

theorem f1702 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [1,2] [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1703 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [1,2] [2,1,2,0]) :=
  row_of_forall (discharge bank [29,29,18] (hard := []) (by decide +kernel) .nil)

theorem f1704 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [1,2] [2,2,0,1]) :=
  row_of_forall (discharge bank [29,29,29,29,29] (hard := []) (by decide +kernel) .nil)

theorem f1705 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [1,2] [2,2,1,0]) :=
  row_of_forall (discharge bank [29,29,29] (hard := []) (by decide +kernel) .nil)

theorem f1706 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [2,1] [0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1707 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [2,1] [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
