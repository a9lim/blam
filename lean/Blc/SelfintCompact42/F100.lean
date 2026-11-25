import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1400 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [1,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1401 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [1,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1402 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [1,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1403 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [1,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1404 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [1,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1405 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [1,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1406 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [2,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1407 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [2,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1408 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1409 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [2,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1410 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [2,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1411 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [2,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1412 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1413 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
