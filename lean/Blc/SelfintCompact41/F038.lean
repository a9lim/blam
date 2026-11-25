import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f532 : BadRow (markedRow ⟨1,2,0,2,5,5⟩ [0,0] [1,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f533 : BadRow (markedRow ⟨1,2,0,2,5,5⟩ [0,0] [1,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f534 : BadRow (markedRow ⟨1,2,0,2,5,5⟩ [0,0] [1,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f535 : BadRow (markedRow ⟨1,2,0,2,5,5⟩ [0,0] [1,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f536 : BadRow (markedRow ⟨1,2,0,2,5,5⟩ [0,0] [1,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f537 : BadRow (markedRow ⟨1,2,0,2,5,5⟩ [0,0] [1,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f538 : BadRow (markedRow ⟨1,2,0,2,5,5⟩ [0,0] [1,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f539 : BadRow (markedRow ⟨1,2,0,2,5,5⟩ [0,0] [1,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f540 : BadRow (markedRow ⟨1,2,0,2,5,5⟩ [0,0] [1,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f541 : BadRow (markedRow ⟨1,2,0,2,5,5⟩ [0,0] [1,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f542 : BadRow (markedRow ⟨1,2,0,2,5,5⟩ [0,0] [1,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f543 : BadRow (markedRow ⟨1,2,0,2,5,5⟩ [0,0] [2,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f544 : BadRow (markedRow ⟨1,2,0,2,5,5⟩ [0,0] [2,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f545 : BadRow (markedRow ⟨1,2,0,2,5,5⟩ [0,0] [2,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
