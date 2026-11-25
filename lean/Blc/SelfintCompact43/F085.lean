import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1020 : BadRow (Grammar43.fourRow ⟨1,2,0,2,5,7⟩ [0,0] [2,2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1021 : BadRow (Grammar43.fourRow ⟨1,2,0,2,5,7⟩ [0,0] [2,2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1022 : BadRow (Grammar43.fourRow ⟨1,2,0,2,5,7⟩ [0,0] [2,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1023 : BadRow (Grammar43.fourRow ⟨1,2,0,2,5,7⟩ [0,0] [2,2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1024 : BadRow (Grammar43.fourRow ⟨1,2,0,2,5,7⟩ [0,0] [2,2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1025 : BadRow (Grammar43.fourRow ⟨1,2,0,2,5,7⟩ [0,0] [2,2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1026 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [0,0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1027 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [0,1,1,2,2]) :=
  row_of_forall (discharge bank [39,1,39,39,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f1028 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [0,1,2,1,2]) :=
  row_of_forall (discharge bank [39,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f1029 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [0,1,2,2,1]) :=
  row_of_forall (discharge bank [39,39,1,1,39,1,39,1,1] (hard := []) (by decide +kernel) .nil)

theorem f1030 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [0,2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1031 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [0,2,1,1,2]) :=
  row_of_forall (discharge bank [14,14,14,14,14,14,14,14,14] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
