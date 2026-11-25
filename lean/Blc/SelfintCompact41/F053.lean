import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f742 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [1,0,0] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f743 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [1,0,0] [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f744 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [1,0,0] [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f745 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [1,0,0] [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f746 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [1,0,0] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f747 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [1,0,0] [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f748 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [1,0,0] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f749 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [1,0,0] [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f750 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [1,0,0] [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f751 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [1,0,0] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f752 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [0,1,1] [0,0,1,2]) :=
  row_of_forall (discharge bank [34,34,34,34,10] (hard := []) (by decide +kernel) .nil)

theorem f753 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [0,1,1] [0,0,2,1]) :=
  row_of_forall (discharge bank [34,34,34,34,10] (hard := []) (by decide +kernel) .nil)

theorem f754 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [0,1,1] [0,1,0,2]) :=
  row_of_forall (discharge bank [34,34,34,34,34,34,34,10,10] (hard := []) (by decide +kernel) .nil)

theorem f755 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [0,1,1] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
