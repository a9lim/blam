import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1022 : BadRow (markedRow ⟨1,3,0,3,4,3⟩ [0,0,0] [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1023 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1024 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1025 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1026 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1027 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1028 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1029 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1030 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1031 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1032 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1033 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1034 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1035 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
