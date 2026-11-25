import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3936 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [1,0] [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3937 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [1,0] [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3938 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [1,0] [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3939 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [1,0] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3940 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [1,0] [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3941 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [1,0] [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3942 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [1,0] [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3943 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [1,0] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3944 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [1,0] [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3945 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [1,0] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3946 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [1,0] [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3947 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [1,0] [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
