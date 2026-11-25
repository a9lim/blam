import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1428 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [3,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1429 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [3,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1430 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [3,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1431 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [4,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1432 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [4,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1433 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [4,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1434 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [4,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1435 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [4,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1436 : BadRow (markedRow ⟨1,2,0,4,4,6⟩ [0,0] [4,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1437 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [0,0,1,4]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,29,29,29] (hard := []) (by decide +kernel) .nil)

theorem f1438 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [0,0,2,3]) :=
  row_of_forall (discharge bank [2,2,2,9,9,9,2,9,9,9,9,9,9,9,2,9,9,29,29,29] (hard := []) (by decide +kernel) .nil)

theorem f1439 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [0,0,3,2]) :=
  row_of_forall (discharge bank [2,2,2,9,9,9,2,9,9,9,9,9,9,9,2,9,9,29,29,29] (hard := []) (by decide +kernel) .nil)

theorem f1440 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [0,0,4,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,29,29,29] (hard := []) (by decide +kernel) .nil)

theorem f1441 : BadRow (markedRow ⟨1,2,1,4,4,5⟩ [0,1] [0,1,0,4]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,29,29,29,29,29,29] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
