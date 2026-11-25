import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1044 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [1,1,2,2,0]) :=
  row_of_forall (discharge bank [39,39,1,39,1,39,39,1,1,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f1045 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [1,2,0,1,2]) :=
  row_of_forall (discharge bank [16,16,1,1,52,1,1,1,1,1,1,1,5,5,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f1046 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [1,2,0,2,1]) :=
  row_of_forall (discharge bank [16,16,1,39,1,14,14,1,1,39,1,1,1,1,5,5,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f1047 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [1,2,1,0,2]) :=
  row_of_forall (discharge bank [16,16,1,1,52,1,1,14,1,1,1,1,1,1,5,5,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f1048 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [1,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1049 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [1,2,1,2,0]) :=
  row_of_forall (discharge bank [16,16,1,39,1,1,1,1,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f1050 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [1,2,2,0,1]) :=
  row_of_forall (discharge bank [16,16,39,39,39,1,1,39,1,39,39,1,39,1,5,5,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f1051 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [1,2,2,1,0]) :=
  row_of_forall (discharge bank [16,16,39,39,39,1,1,39,1,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f1052 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [2,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1053 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [2,0,1,1,2]) :=
  row_of_forall (discharge bank [5,5,5,5,5,1,1,1,1,1,1,38,1,17] (hard := []) (by decide +kernel) .nil)

theorem f1054 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [2,0,1,2,1]) :=
  row_of_forall (discharge bank [5,5,5,5,5,1,1,1,1,5,5,1,1,14] (hard := []) (by decide +kernel) .nil)

theorem f1055 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [2,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
