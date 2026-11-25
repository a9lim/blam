import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1056 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [2,0,2,1,1]) :=
  row_of_forall (discharge bank [5,5,5,5,5,1,11,6,1,5,5,1,6,94] (hard := []) (by decide +kernel) .nil)

theorem f1057 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [2,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1058 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [2,1,0,1,2]) :=
  row_of_forall (discharge bank [5,5,5,5,5,1,1,1,1,1,1,1,1,17] (hard := []) (by decide +kernel) .nil)

theorem f1059 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [2,1,0,2,1]) :=
  row_of_forall (discharge bank [5,5,5,5,5,1,1,5,5,1,1,14] (hard := []) (by decide +kernel) .nil)

theorem f1060 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [2,1,1,0,2]) :=
  row_of_forall (discharge bank [5,5,5,5,5,1,1,1,1,1,1,1,38,17] (hard := []) (by decide +kernel) .nil)

theorem f1061 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [2,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1062 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [2,1,1,2,0]) :=
  row_of_forall (discharge bank [5,5,5,5,5,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f1063 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [2,1,2,0,1]) :=
  row_of_forall (discharge bank [5,5,5,5,5,1,11,6,1,5,5,1,6,100] (hard := []) (by decide +kernel) .nil)

theorem f1064 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [2,1,2,1,0]) :=
  row_of_forall (discharge bank [5,5,5,5,5,1,6,1] (hard := []) (by decide +kernel) .nil)

theorem f1065 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [2,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1066 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [2,2,0,1,1]) :=
  row_of_forall (discharge bank [5,5,5,5,5,6,6,6,6,5,5,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f1067 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [2,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
