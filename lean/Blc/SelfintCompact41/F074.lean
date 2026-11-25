import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1036 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1037 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1038 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1039 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1040 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1041 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1042 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1043 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1044 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1045 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1046 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1047 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1048 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1049 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
