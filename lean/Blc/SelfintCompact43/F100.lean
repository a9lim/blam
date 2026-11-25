import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1200 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [1,0,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1201 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [1,0,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1202 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [1,0,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1203 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [1,0,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1204 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [1,0,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1205 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [1,0,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1206 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [1,0,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1207 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [1,1,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1208 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [1,1,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1209 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [1,1,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1210 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [1,1,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1211 : BadRow (Grammar43.fourRow ⟨1,2,0,2,6,3⟩ [0,0] [1,2,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
