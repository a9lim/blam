import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f756 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [0,1,1] [0,1,2,0]) :=
  row_of_forall (discharge bank [8,8,34,8,26] (hard := []) (by decide +kernel) .nil)

theorem f757 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [0,1,1] [0,2,0,1]) :=
  row_of_forall (discharge bank [8,8,34,8,34,8,8,10,14] (hard := []) (by decide +kernel) .nil)

theorem f758 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [0,1,1] [0,2,1,0]) :=
  row_of_forall (discharge bank [8,34,34,8,10] (hard := []) (by decide +kernel) .nil)

theorem f759 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [0,1,1] [1,0,0,2]) :=
  row_of_forall (discharge bank [34,34,34,34,34] (hard := []) (by decide +kernel) .nil)

theorem f760 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [0,1,1] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f761 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [0,1,1] [1,0,2,0]) :=
  row_of_forall (discharge bank [8,34,8,34,34] (hard := []) (by decide +kernel) .nil)

theorem f762 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [0,1,1] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f763 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [0,1,1] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f764 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [0,1,1] [1,2,0,0]) :=
  row_of_forall (discharge bank [8,8,8] (hard := []) (by decide +kernel) .nil)

theorem f765 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [0,1,1] [2,0,0,1]) :=
  row_of_forall (discharge bank [6,6,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f766 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [0,1,1] [2,0,1,0]) :=
  row_of_forall (discharge bank [6,6,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f767 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [0,1,1] [2,1,0,0]) :=
  row_of_forall (discharge bank [6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f768 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [1,0,1] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f769 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [1,0,1] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
