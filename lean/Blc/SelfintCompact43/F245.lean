import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2940 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2941 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2942 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [1,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2943 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [1,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2944 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [1,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2945 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [1,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2946 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [2,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2947 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2948 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [2,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2949 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [2,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2950 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2951 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
