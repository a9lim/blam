import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1022 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [0,1] [0,3,1,3]) :=
  row_of_forall (discharge bank [1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f1023 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [0,1] [0,3,2,2]) :=
  row_of_forall (discharge bank [9,9,9,12] (hard := []) (by decide +kernel) .nil)

theorem f1024 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [0,1] [0,3,3,1]) :=
  row_of_forall (discharge bank [1,7,1,7] (hard := []) (by decide +kernel) .nil)

theorem f1025 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [0,1] [1,0,3,3]) :=
  row_of_forall (discharge bank [7,1,7,1,1,7,7] (hard := []) (by decide +kernel) .nil)

theorem f1026 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [0,1] [1,1,2,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,29] (hard := []) (by decide +kernel) .nil)

theorem f1027 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [0,1] [1,1,3,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,1,29] (hard := []) (by decide +kernel) .nil)

theorem f1028 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [0,1] [1,2,1,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,33,1,29,29] (hard := []) (by decide +kernel) .nil)

theorem f1029 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [0,1] [1,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1030 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [0,1] [1,2,3,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,33,1,29] (hard := []) (by decide +kernel) .nil)

theorem f1031 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [0,1] [1,3,0,3]) :=
  row_of_forall (discharge bank [33,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f1032 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [0,1] [1,3,1,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,1,29,29] (hard := []) (by decide +kernel) .nil)

theorem f1033 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [0,1] [1,3,2,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,29] (hard := []) (by decide +kernel) .nil)

theorem f1034 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [0,1] [1,3,3,0]) :=
  row_of_forall (discharge bank [33,7,1] (hard := []) (by decide +kernel) .nil)

theorem f1035 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [0,1] [2,0,2,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,29,29,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
