import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1106 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [3,0,0,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1107 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [3,0,1,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1108 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [3,1,0,0]) :=
  row_of_forall (discharge bank [31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1109 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1110 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [1,0] [0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1111 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [1,0] [0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1112 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [1,0] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1113 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [1,0] [0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1114 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [1,0] [0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1115 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [1,0] [0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1116 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [1,0] [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1117 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [1,0] [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1118 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [1,0] [0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1119 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [1,0] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
