import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1248 : BadRow (Grammar43.fourRow ⟨1,3,1,2,4,6⟩ [1,0,0] [2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1249 : BadRow (Grammar43.fourRow ⟨1,3,1,2,4,6⟩ [1,0,0] [2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1250 : BadRow (Grammar43.fourRow ⟨1,3,1,2,4,6⟩ [1,0,0] [2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1251 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [0,1,1] [0,1,2,2]) :=
  row_of_forall (discharge bank [1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f1252 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [0,1,1] [0,2,1,2]) :=
  row_of_forall (discharge bank [14,47,14] (hard := []) (by decide +kernel) .nil)

theorem f1253 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [0,1,1] [0,2,2,1]) :=
  row_of_forall (discharge bank [48,47,47] (hard := []) (by decide +kernel) .nil)

theorem f1254 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [0,1,1] [1,0,2,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f1255 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [0,1,1] [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1256 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [0,1,1] [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1257 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [0,1,1] [1,2,0,2]) :=
  row_of_forall (discharge bank [1,31,14,1,1] (hard := []) (by decide +kernel) .nil)

theorem f1258 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [0,1,1] [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1259 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [0,1,1] [1,2,2,0]) :=
  row_of_forall (discharge bank [38,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
