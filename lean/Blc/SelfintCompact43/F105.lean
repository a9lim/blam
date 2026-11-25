import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1260 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [0,1,1] [2,0,1,2]) :=
  row_of_forall (discharge bank [1,1,1,1,98] (hard := []) (by decide +kernel) .nil)

theorem f1261 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [0,1,1] [2,0,2,1]) :=
  row_of_forall (discharge bank [38,1,1,1,14] (hard := []) (by decide +kernel) .nil)

theorem f1262 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [0,1,1] [2,1,0,2]) :=
  row_of_forall (discharge bank [1,1,1,1,99] (hard := []) (by decide +kernel) .nil)

theorem f1263 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [0,1,1] [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1264 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [0,1,1] [2,1,2,0]) :=
  row_of_forall (discharge bank [38,1,1] (hard := []) (by decide +kernel) .nil)

theorem f1265 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [0,1,1] [2,2,0,1]) :=
  row_of_forall (discharge bank [9,9,36,13,36] (hard := []) (by decide +kernel) .nil)

theorem f1266 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [0,1,1] [2,2,1,0]) :=
  row_of_forall (discharge bank [9,9,36] (hard := []) (by decide +kernel) .nil)

theorem f1267 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,0,1] [0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1268 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,0,1] [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1269 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,0,1] [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1270 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,0,1] [1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1271 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,0,1] [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
