import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3972 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [1,1] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3973 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [1,1] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3974 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [1,1] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3975 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [1,1] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3976 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [1,1] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3977 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [1,1] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3978 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [1,1] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3979 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [1,1] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3980 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [1,1] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3981 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [2,0] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3982 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [2,0] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3983 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [2,0] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
