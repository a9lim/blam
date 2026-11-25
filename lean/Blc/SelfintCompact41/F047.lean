import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f658 : BadRow (markedRow ⟨1,2,2,2,5,3⟩ [1,1] [0,1,0,2,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,11,36,36,36,36] (hard := []) (by decide +kernel) .nil)

theorem f659 : BadRow (markedRow ⟨1,2,2,2,5,3⟩ [1,1] [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f660 : BadRow (markedRow ⟨1,2,2,2,5,3⟩ [1,1] [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f661 : BadRow (markedRow ⟨1,2,2,2,5,3⟩ [1,1] [0,1,2,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,11,36] (hard := []) (by decide +kernel) .nil)

theorem f662 : BadRow (markedRow ⟨1,2,2,2,5,3⟩ [1,1] [0,2,0,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,11,36,36,11,11] (hard := []) (by decide +kernel) .nil)

theorem f663 : BadRow (markedRow ⟨1,2,2,2,5,3⟩ [1,1] [0,2,0,1,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,11,36,36,36,37,36,36] (hard := []) (by decide +kernel) .nil)

theorem f664 : BadRow (markedRow ⟨1,2,2,2,5,3⟩ [1,1] [0,2,1,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,10,36,36,36] (hard := []) (by decide +kernel) .nil)

theorem f665 : BadRow (markedRow ⟨1,2,2,2,5,3⟩ [1,1] [1,0,0,0,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f666 : BadRow (markedRow ⟨1,2,2,2,5,3⟩ [1,1] [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f667 : BadRow (markedRow ⟨1,2,2,2,5,3⟩ [1,1] [1,0,0,2,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f668 : BadRow (markedRow ⟨1,2,2,2,5,3⟩ [1,1] [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f669 : BadRow (markedRow ⟨1,2,2,2,5,3⟩ [1,1] [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f670 : BadRow (markedRow ⟨1,2,2,2,5,3⟩ [1,1] [1,0,2,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f671 : BadRow (markedRow ⟨1,2,2,2,5,3⟩ [1,1] [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
