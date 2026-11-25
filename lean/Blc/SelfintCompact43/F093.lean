import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1116 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [0,0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1117 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [0,0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1118 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [0,0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1119 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [0,1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1120 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [0,1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1121 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [0,1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1122 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [0,1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1123 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [0,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1124 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [0,1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1125 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [0,2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1126 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [0,2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1127 : BadRow (Grammar43.fourRow ⟨1,2,2,2,5,5⟩ [1,1] [0,2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
