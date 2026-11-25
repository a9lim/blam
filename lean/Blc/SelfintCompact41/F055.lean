import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f770 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [1,0,1] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f771 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [1,0,1] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f772 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [1,0,1] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f773 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [1,0,1] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f774 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [1,0,1] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f775 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [1,0,1] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f776 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [1,0,1] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f777 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [1,0,1] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f778 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [1,0,1] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f779 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [1,0,1] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f780 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [1,0,1] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f781 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [1,0,1] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f782 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [1,0,1] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f783 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [1,0,1] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
