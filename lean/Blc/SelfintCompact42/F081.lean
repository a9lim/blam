import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1134 : BadRow (markedRow ⟨1,2,2,3,4,6⟩ [1,1] [3,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1135 : BadRow (markedRow ⟨1,2,2,3,4,6⟩ [1,1] [3,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1136 : BadRow (markedRow ⟨1,2,2,3,4,6⟩ [1,1] [3,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1137 : BadRow (markedRow ⟨1,2,2,3,4,6⟩ [1,1] [3,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1138 : BadRow (markedRow ⟨1,2,2,3,4,6⟩ [1,1] [3,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1139 : BadRow (markedRow ⟨1,2,2,3,4,6⟩ [1,1] [3,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1140 : BadRow (markedRow ⟨1,2,2,3,4,6⟩ [1,1] [3,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1141 : BadRow (markedRow ⟨1,2,2,3,4,6⟩ [1,1] [3,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1142 : BadRow (markedRow ⟨1,2,2,3,4,6⟩ [1,1] [3,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1143 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [0,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1144 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [0,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1145 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [0,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1146 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [0,0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1147 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [0,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
