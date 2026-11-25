import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1092 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [1,0] [3,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1093 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [1,0] [3,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1094 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [1,0] [3,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1095 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [1,0] [3,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1096 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [1,0] [3,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1097 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [1,0] [3,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1098 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [1,0] [3,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1099 : BadRow (markedRow ⟨1,2,2,3,4,6⟩ [1,1] [0,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1100 : BadRow (markedRow ⟨1,2,2,3,4,6⟩ [1,1] [0,1,2,3]) :=
  row_of_forall (discharge bank [9,9,8,1,1,9,1] (hard := []) (by decide +kernel) .nil)

theorem f1101 : BadRow (markedRow ⟨1,2,2,3,4,6⟩ [1,1] [0,1,3,2]) :=
  row_of_forall (discharge bank [9,9,1,1,9,1] (hard := []) (by decide +kernel) .nil)

theorem f1102 : BadRow (markedRow ⟨1,2,2,3,4,6⟩ [1,1] [0,2,1,3]) :=
  row_of_forall (discharge bank [9,9,1,7,1,9,9,1,1] (hard := []) (by decide +kernel) .nil)

theorem f1103 : BadRow (markedRow ⟨1,2,2,3,4,6⟩ [1,1] [0,2,2,2]) :=
  row_of_forall (discharge bank [9,7,1,1,1,9,7,1,1] (hard := []) (by decide +kernel) .nil)

theorem f1104 : BadRow (markedRow ⟨1,2,2,3,4,6⟩ [1,1] [0,2,3,1]) :=
  row_of_forall (discharge bank [9,9,8,1,9,18] (hard := []) (by decide +kernel) .nil)

theorem f1105 : BadRow (markedRow ⟨1,2,2,3,4,6⟩ [1,1] [0,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
