import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1128 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [0,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1129 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [0,2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1130 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [0,2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1131 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [0,2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1132 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [1,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1133 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [1,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1134 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [1,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1135 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [1,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1136 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [1,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1137 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [1,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1138 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [1,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1139 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [1,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
