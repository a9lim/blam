import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2964 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [3,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2965 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [3,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2966 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [3,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2967 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [3,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2968 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [0,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2969 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [0,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2970 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [0,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2971 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [0,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2972 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2973 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [0,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2974 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [0,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2975 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [0,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
