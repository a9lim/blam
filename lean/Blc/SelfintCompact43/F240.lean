import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2880 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [2,0,0] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2881 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [2,0,0] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2882 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [2,0,0] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2883 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [2,0,0] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2884 : BadRow (Grammar43.fourRow ⟨2,2,0,3,4,7⟩ [0,0] [0,1,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2885 : BadRow (Grammar43.fourRow ⟨2,2,0,3,4,7⟩ [0,0] [0,2,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2886 : BadRow (Grammar43.fourRow ⟨2,2,0,3,4,7⟩ [0,0] [0,2,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2887 : BadRow (Grammar43.fourRow ⟨2,2,0,3,4,7⟩ [0,0] [0,3,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2888 : BadRow (Grammar43.fourRow ⟨2,2,0,3,4,7⟩ [0,0] [0,3,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2889 : BadRow (Grammar43.fourRow ⟨2,2,0,3,4,7⟩ [0,0] [0,3,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2890 : BadRow (Grammar43.fourRow ⟨2,2,0,3,4,7⟩ [0,0] [1,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2891 : BadRow (Grammar43.fourRow ⟨2,2,0,3,4,7⟩ [0,0] [1,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
