import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1080 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [0,2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1081 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [1,0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1082 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [1,0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1083 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [1,0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1084 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [1,1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1085 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [1,1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1086 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [1,1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1087 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [1,1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1088 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [1,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1089 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [1,1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1090 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [1,2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1091 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [1,2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
