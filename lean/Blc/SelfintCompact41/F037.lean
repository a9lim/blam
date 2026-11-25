import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f518 : BadRow (markedRow ⟨1,2,0,2,5,5⟩ [0,0] [0,2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f519 : BadRow (markedRow ⟨1,2,0,2,5,5⟩ [0,0] [0,2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f520 : BadRow (markedRow ⟨1,2,0,2,5,5⟩ [0,0] [0,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f521 : BadRow (markedRow ⟨1,2,0,2,5,5⟩ [0,0] [0,2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f522 : BadRow (markedRow ⟨1,2,0,2,5,5⟩ [0,0] [0,2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f523 : BadRow (markedRow ⟨1,2,0,2,5,5⟩ [0,0] [0,2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f524 : BadRow (markedRow ⟨1,2,0,2,5,5⟩ [0,0] [1,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f525 : BadRow (markedRow ⟨1,2,0,2,5,5⟩ [0,0] [1,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f526 : BadRow (markedRow ⟨1,2,0,2,5,5⟩ [0,0] [1,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f527 : BadRow (markedRow ⟨1,2,0,2,5,5⟩ [0,0] [1,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f528 : BadRow (markedRow ⟨1,2,0,2,5,5⟩ [0,0] [1,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f529 : BadRow (markedRow ⟨1,2,0,2,5,5⟩ [0,0] [1,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f530 : BadRow (markedRow ⟨1,2,0,2,5,5⟩ [0,0] [1,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f531 : BadRow (markedRow ⟨1,2,0,2,5,5⟩ [0,0] [1,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
