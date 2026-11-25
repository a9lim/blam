import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3924 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [0,1] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3925 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [0,1] [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3926 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [0,1] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3927 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [0,1] [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3928 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [0,1] [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3929 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [0,1] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3930 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [1,0] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3931 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [1,0] [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3932 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [1,0] [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3933 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [1,0] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3934 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [1,0] [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3935 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [1,0] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
