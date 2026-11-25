import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f192 (hard : BadRow [Floor43.e2418939182454,Floor43.e2391558765942]) : BadRow (Grammar43.fourRow ⟨0,4,0,2,4,5⟩ [0,0,0,0] [2,0,2,1]) :=
  row_of_forall (discharge bank [1,1,14,14,0,14,14,47,47,48,1,1,14,14,14,14,14,48,14,0,14,14,14,47,61] (hard := [Floor43.e2418939182454,Floor43.e2391558765942]) (by decide +kernel) hard)

theorem f193 : BadRow (Grammar43.fourRow ⟨0,4,0,2,4,5⟩ [0,0,0,0] [2,1,0,2]) :=
  row_of_forall (discharge bank [1,1,14,14,14,14,14,14,14,14,1,1,14,14,14,14,14,14,14,14,14,14,14,47,61] (hard := []) (by decide +kernel) .nil)

theorem f194 : BadRow (Grammar43.fourRow ⟨0,4,0,2,4,5⟩ [0,0,0,0] [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f195 : BadRow (Grammar43.fourRow ⟨0,4,0,2,4,5⟩ [0,0,0,0] [2,1,2,0]) :=
  row_of_forall (discharge bank [1,1,14,14,14,14,1,1,14,14,14,14,14,14,14] (hard := []) (by decide +kernel) .nil)

theorem f196 : BadRow (Grammar43.fourRow ⟨0,4,0,2,4,5⟩ [0,0,0,0] [2,2,0,1]) :=
  row_of_forall (discharge bank [1,1,36,14,36,14,14,36,48,36,1,1,36,14,36,14,14,36,14,36,14,14,36,47,36] (hard := []) (by decide +kernel) .nil)

theorem f197 : BadRow (Grammar43.fourRow ⟨0,4,0,2,4,5⟩ [0,0,0,0] [2,2,1,0]) :=
  row_of_forall (discharge bank [1,1,36,14,14,36,1,1,36,14,14,36,14,14,36] (hard := []) (by decide +kernel) .nil)

theorem f198 : BadRow (Grammar43.fourRow ⟨0,2,0,3,4,11⟩ [0,0] [2,3,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f199 : BadRow (Grammar43.fourRow ⟨0,2,0,3,4,11⟩ [0,0] [3,2,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f200 : BadRow (Grammar43.fourRow ⟨0,2,0,3,4,11⟩ [0,0] [3,3,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f201 : BadRow (Grammar43.fourRow ⟨0,2,0,3,4,11⟩ [0,0] [3,3,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f202 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,0,1,3,3]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,14,47,47,1,1,14,1,14,14,14,1] (hard := []) (by decide +kernel) .nil)

theorem f203 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [0,0,2,2,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,14,14,14,4,4,4,1,47,47,47,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
