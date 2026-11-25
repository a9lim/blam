import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1442 : BadRow (markedRow ⟨2,2,1,3,4,4⟩ [1,0] [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1443 : BadRow (markedRow ⟨2,2,1,3,4,4⟩ [1,0] [1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1444 : BadRow (markedRow ⟨2,2,1,3,4,4⟩ [1,0] [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1445 : BadRow (markedRow ⟨2,2,1,3,4,4⟩ [1,0] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1446 : BadRow (markedRow ⟨2,2,1,3,4,4⟩ [1,0] [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1447 : BadRow (markedRow ⟨2,2,1,3,4,4⟩ [1,0] [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1448 : BadRow (markedRow ⟨2,2,1,3,4,4⟩ [1,0] [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1449 : BadRow (markedRow ⟨2,2,1,3,4,4⟩ [1,0] [1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1450 : BadRow (markedRow ⟨2,2,1,3,4,4⟩ [1,0] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1451 : BadRow (markedRow ⟨2,2,1,3,4,4⟩ [1,0] [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1452 : BadRow (markedRow ⟨2,2,1,3,4,4⟩ [1,0] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1453 : BadRow (markedRow ⟨2,2,1,3,4,4⟩ [1,0] [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1454 : BadRow (markedRow ⟨2,2,1,3,4,4⟩ [1,0] [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1455 : BadRow (markedRow ⟨2,2,1,3,4,4⟩ [1,0] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
