import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1162 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [0,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1163 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [0,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1164 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [0,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1165 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [0,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1166 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [0,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1167 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [0,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1168 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [0,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1169 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [0,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1170 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [0,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1171 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [0,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1172 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [0,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1173 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [0,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1174 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [1,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1175 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [1,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
