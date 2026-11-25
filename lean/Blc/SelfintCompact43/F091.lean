import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1092 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [1,2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1093 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [1,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1094 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [1,2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1095 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [1,2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1096 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [1,2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1097 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [2,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1098 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [2,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1099 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [2,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1100 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [2,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1101 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [2,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1102 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [2,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1103 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [2,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
