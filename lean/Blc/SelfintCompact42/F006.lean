import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f84 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [1,1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f85 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [1,1,2,0,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1,1,26,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f86 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [1,2,0,0,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,26,3,3,3,3,3,3,3,3,3,3,3,3,3] (hard := []) (by decide +kernel) .nil)

theorem f87 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [1,2,0,0,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,26,26,3,26,3,3,3,3,3,26,3,3,3,3,26,3,3,3,3] (hard := []) (by decide +kernel) .nil)

theorem f88 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [1,2,0,1,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,26,26,26,26,26,3,3,26,3,26,26,3,26,3,12,3,26,12,3,12,3,12,3] (hard := []) (by decide +kernel) .nil)

theorem f89 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [1,2,1,0,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,26,26,26,26,26,12,26,26,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f90 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [2,0,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f91 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [2,0,0,0,1,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f92 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [2,0,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f93 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [2,0,0,1,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f94 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [2,0,0,1,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f95 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [2,0,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f96 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [2,0,1,0,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f97 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [2,0,1,0,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
