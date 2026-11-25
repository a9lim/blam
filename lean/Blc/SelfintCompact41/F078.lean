import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1092 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [1,0,2,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1093 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [1,0,3,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1094 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [1,1,0,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1095 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1096 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [1,1,2,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1097 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [1,2,0,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1098 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [1,2,1,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1099 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [1,3,0,0]) :=
  row_of_forall (discharge bank [31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1100 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [2,0,0,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1101 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [2,0,1,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1102 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [2,0,2,0]) :=
  row_of_forall (discharge bank [31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1103 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [2,1,0,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1104 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [2,1,1,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1105 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
