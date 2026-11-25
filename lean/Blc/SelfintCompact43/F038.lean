import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f456 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f457 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [0,0,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,15,15,15,15,15,15,15,15,15,87,85] (hard := []) (by decide +kernel) .nil)

theorem f458 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f459 (hard : BadRow [Floor43.e2393382325882]) : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [0,0,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,15,15,15,15,15,0,83] (hard := [Floor43.e2393382325882]) (by decide +kernel) hard)

theorem f460 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [0,0,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,15,15,15,15,15,15,15,15,15,10,86] (hard := []) (by decide +kernel) .nil)

theorem f461 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [0,0,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,15,15,15,15,15,10,83] (hard := []) (by decide +kernel) .nil)

theorem f462 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f463 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [0,1,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,15,15,15,15,15] (hard := []) (by decide +kernel) .nil)

theorem f464 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f465 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [0,1,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,15,15,15,15,15,83,83] (hard := []) (by decide +kernel) .nil)

theorem f466 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f467 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
