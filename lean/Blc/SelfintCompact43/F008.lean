import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f96 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,2,0,2,0,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,25,25,1,25,1,1,25,1,25,14,14,14,14,14,1,1,1,1,14,25,1,1,1,1,1,25,1,25,1,1,1,1,1,25,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f97 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,2,1,0,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,48,48,48,48,48,48,48,48,14,48,48,48,48,14,14,48,48,14,14] (hard := []) (by decide +kernel) .nil)

theorem f98 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,2,1,0,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,48,48,48,48,48,48,48,48,14,48,48,14,14,14,14,14,14,14,14,14,14] (hard := []) (by decide +kernel) .nil)

theorem f99 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,2,1,1,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,48,48,48,48,48,48,48,48,48,14,14,14,14] (hard := []) (by decide +kernel) .nil)

theorem f100 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,2,2,0,0,0]) :=
  row_of_forall (discharge bank [30,30,1,1,38,1,1,38,1,38,1,1,37,1,1,1,1,1,30,30,14,1,30,1,1,38,1,1,1,30,1,1] (hard := []) (by decide +kernel) .nil)

theorem f101 (hard : BadRow [Floor43.e2422407476590]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [2,0,0,0,1,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,7,7,7,7,7,7,7,14,14,7,7,14,47,17,7,7,7,7,7,48,48,47,17,47,0,17,17,17] (hard := [Floor43.e2422407476590]) (by decide +kernel) hard)

theorem f102 (hard : BadRow [Floor43.e2422406598006]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [2,0,0,0,2,1]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,7,7,7,7,7,7,7,14,47,7,7,14,47,17,1,1,1,1,1,7,7,7,48,7,7,0,48,17] (hard := [Floor43.e2422406598006]) (by decide +kernel) hard)

theorem f103 (hard : BadRow [Floor43.e2422407476654]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [2,0,0,1,0,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,7,7,7,7,7,7,7,14,14,7,7,47,47,17,7,7,7,7,7,48,48,47,17,14,0,17,17,17] (hard := [Floor43.e2422407476654]) (by decide +kernel) hard)

theorem f104 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [2,0,0,1,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f105 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [2,0,0,1,2,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,7,7,7,7,7,7,7,14,14,7,7,48,47,17,1,1,1,1,1,7,7,7,14,7,7,47,14,17] (hard := []) (by decide +kernel) .nil)

theorem f106 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [2,0,0,2,0,1]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,7,7,7,7,7,7,7,14,48,1,1,7,7,48,1,1,1,1,1,7,7,7,48,47,14,7,7,48] (hard := []) (by decide +kernel) .nil)

theorem f107 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [2,0,0,2,1,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,7,7,7,7,7,7,7,14,14,1,1,7,7,48,1,1,1,1,1,7,7,7,14,48,48,7,7,122] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
