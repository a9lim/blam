import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1078 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [0,0,3,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1079 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1080 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [0,1,0,3]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1081 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [0,1,1,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1082 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [0,1,2,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1083 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [0,1,3,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1084 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [0,2,0,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1085 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [0,2,1,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1086 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [0,2,2,0]) :=
  row_of_forall (discharge bank [31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1087 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [0,3,0,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1088 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [0,3,1,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1089 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1090 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [1,0,0,3]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f1091 : BadRow (markedRow ⟨1,2,1,4,4,4⟩ [0,1] [1,0,1,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
