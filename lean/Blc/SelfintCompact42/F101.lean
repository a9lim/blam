import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1414 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [2,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1415 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1416 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1417 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1418 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [2,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1419 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [2,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1420 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [2,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1421 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [3,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1422 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [3,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1423 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [3,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1424 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [3,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1425 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [3,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1426 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [3,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1427 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [3,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
