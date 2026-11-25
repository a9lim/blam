import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1120 : BadRow (markedRow ⟨1,2,2,3,4,6⟩ [1,1] [1,3,2,0]) :=
  row_of_forall (discharge bank [9,7,5] (hard := []) (by decide +kernel) .nil)

theorem f1121 : BadRow (markedRow ⟨1,2,2,3,4,6⟩ [1,1] [2,0,1,3]) :=
  row_of_forall (discharge bank [1,1,1,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1122 : BadRow (markedRow ⟨1,2,2,3,4,6⟩ [1,1] [2,0,2,2]) :=
  row_of_forall (discharge bank [9,8,1,1,9,4,1,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1123 : BadRow (markedRow ⟨1,2,2,3,4,6⟩ [1,1] [2,0,3,1]) :=
  row_of_forall (discharge bank [3,1,1,4] (hard := []) (by decide +kernel) .nil)

theorem f1124 : BadRow (markedRow ⟨1,2,2,3,4,6⟩ [1,1] [2,1,0,3]) :=
  row_of_forall (discharge bank [1,1,1,1,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1125 : BadRow (markedRow ⟨1,2,2,3,4,6⟩ [1,1] [2,1,1,2]) :=
  row_of_forall (discharge bank [9,9,9,1,9,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1126 : BadRow (markedRow ⟨1,2,2,3,4,6⟩ [1,1] [2,1,2,1]) :=
  row_of_forall (discharge bank [9,9,9,8,1,9,4,4,9,4] (hard := []) (by decide +kernel) .nil)

theorem f1127 : BadRow (markedRow ⟨1,2,2,3,4,6⟩ [1,1] [2,1,3,0]) :=
  row_of_forall (discharge bank [1,1] (hard := []) (by decide +kernel) .nil)

theorem f1128 : BadRow (markedRow ⟨1,2,2,3,4,6⟩ [1,1] [2,2,0,2]) :=
  row_of_forall (discharge bank [5,5,3,4,14,3,4] (hard := []) (by decide +kernel) .nil)

theorem f1129 : BadRow (markedRow ⟨1,2,2,3,4,6⟩ [1,1] [2,2,1,1]) :=
  row_of_forall (discharge bank [9,9,5,5,5,3,9,14,3] (hard := []) (by decide +kernel) .nil)

theorem f1130 : BadRow (markedRow ⟨1,2,2,3,4,6⟩ [1,1] [2,2,2,0]) :=
  row_of_forall (discharge bank [5,4] (hard := []) (by decide +kernel) .nil)

theorem f1131 : BadRow (markedRow ⟨1,2,2,3,4,6⟩ [1,1] [2,3,0,1]) :=
  row_of_forall (discharge bank [20,3,14,18] (hard := []) (by decide +kernel) .nil)

theorem f1132 : BadRow (markedRow ⟨1,2,2,3,4,6⟩ [1,1] [2,3,1,0]) :=
  row_of_forall (discharge bank [1,14] (hard := []) (by decide +kernel) .nil)

theorem f1133 : BadRow (markedRow ⟨1,2,2,3,4,6⟩ [1,1] [3,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
