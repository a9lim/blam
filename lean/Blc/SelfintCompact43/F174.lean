import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2088 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [4,0,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2089 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [4,0,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2090 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [4,1,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2091 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [4,1,1,0]) :=
  row_of_forall (discharge bank [4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2092 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [4,2,0,0]) :=
  row_of_forall (discharge bank [4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2093 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [0,0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2094 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [0,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2095 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [0,0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2096 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [0,1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2097 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [0,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2098 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [0,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2099 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [0,1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
