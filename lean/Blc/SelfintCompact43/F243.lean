import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2916 : BadRow (Grammar43.fourRow ⟨2,2,0,3,4,7⟩ [0,0] [3,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2917 : BadRow (Grammar43.fourRow ⟨2,2,0,3,4,7⟩ [0,0] [3,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2918 : BadRow (Grammar43.fourRow ⟨2,2,0,3,4,7⟩ [0,0] [3,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2919 : BadRow (Grammar43.fourRow ⟨2,2,0,3,4,7⟩ [0,0] [3,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2920 : BadRow (Grammar43.fourRow ⟨2,2,0,3,4,7⟩ [0,0] [3,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2921 : BadRow (Grammar43.fourRow ⟨2,2,0,3,4,7⟩ [0,0] [3,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2922 : BadRow (Grammar43.fourRow ⟨2,2,0,3,4,7⟩ [0,0] [3,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2923 : BadRow (Grammar43.fourRow ⟨2,2,0,3,4,7⟩ [0,0] [3,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2924 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [0,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2925 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [0,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2926 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [0,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2927 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [0,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
