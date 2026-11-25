import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1064 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1065 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1066 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1067 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1068 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1069 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1070 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1071 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1072 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1073 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1074 : BadRow (markedRow ⟨1,2,0,4,4,5⟩ [0,0] [4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1075 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1076 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [0,0,1,3]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1077 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [0,0,2,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
