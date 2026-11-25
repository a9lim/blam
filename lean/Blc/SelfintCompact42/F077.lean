import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1078 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [1,0] [2,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1079 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [1,0] [2,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1080 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [1,0] [2,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1081 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [1,0] [2,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1082 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [1,0] [2,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1083 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [1,0] [2,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1084 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [1,0] [2,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1085 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [1,0] [2,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1086 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [1,0] [2,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1087 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [1,0] [3,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1088 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [1,0] [3,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1089 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [1,0] [3,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1090 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [1,0] [3,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1091 : BadRow (markedRow ⟨1,2,1,3,4,7⟩ [1,0] [3,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
