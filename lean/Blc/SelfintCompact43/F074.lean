import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f888 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f889 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f890 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [1,0,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f891 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f892 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f893 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f894 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [1,2,0,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f895 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [2,0,0,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f896 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [2,0,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f897 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [2,0,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f898 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [2,1,0,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f899 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
