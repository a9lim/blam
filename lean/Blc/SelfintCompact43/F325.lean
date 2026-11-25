import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3900 : BadRow (Grammar43.fourRow ⟨4,2,0,2,4,5⟩ [0,0] [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3901 : BadRow (Grammar43.fourRow ⟨4,2,0,2,4,5⟩ [0,0] [1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3902 : BadRow (Grammar43.fourRow ⟨4,2,0,2,4,5⟩ [0,0] [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3903 : BadRow (Grammar43.fourRow ⟨4,2,0,2,4,5⟩ [0,0] [1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3904 : BadRow (Grammar43.fourRow ⟨4,2,0,2,4,5⟩ [0,0] [2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3905 : BadRow (Grammar43.fourRow ⟨4,2,0,2,4,5⟩ [0,0] [2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3906 : BadRow (Grammar43.fourRow ⟨4,2,0,2,4,5⟩ [0,0] [2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3907 : BadRow (Grammar43.fourRow ⟨4,2,0,2,4,5⟩ [0,0] [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3908 : BadRow (Grammar43.fourRow ⟨4,2,0,2,4,5⟩ [0,0] [2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3909 : BadRow (Grammar43.fourRow ⟨4,2,0,2,4,5⟩ [0,0] [2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3910 : BadRow (Grammar43.fourRow ⟨4,2,0,2,4,5⟩ [0,0] [2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3911 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [0,1] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
