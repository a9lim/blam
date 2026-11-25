import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1104 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [2,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1105 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [2,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1106 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [2,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1107 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [2,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1108 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [2,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1109 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [2,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1110 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [2,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1111 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [2,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1112 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [2,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1113 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [2,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1114 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [2,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1115 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [2,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
