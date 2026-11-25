import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1190 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [1,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1191 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [1,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1192 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [1,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1193 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [1,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1194 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [2,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1195 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [2,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1196 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [2,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1197 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [2,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1198 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [2,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1199 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [2,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1200 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [2,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1201 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [2,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1202 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [2,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1203 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [2,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
