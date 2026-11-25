import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3912 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [0,1] [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3913 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [0,1] [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3914 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [0,1] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3915 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [0,1] [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3916 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [0,1] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3917 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [0,1] [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3918 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [0,1] [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3919 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [0,1] [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3920 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [0,1] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3921 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [0,1] [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3922 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [0,1] [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3923 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [0,1] [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
