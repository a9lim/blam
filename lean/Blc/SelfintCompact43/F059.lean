import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f708 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [4,1,0,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f709 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [0,0,1,4]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,39,39,39,39,39,8,14,58,6,6,6,6,6,6,6,6,1,1,1,1,18,1,58] (hard := []) (by decide +kernel) .nil)

theorem f710 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [0,0,2,3]) :=
  row_of_forall (discharge bank [2,2,2,39,39,39,2,39,39,39,39,39,39,39,2,39,39,14,55,47,6,6,6,6,6,6,6,6,1,1,1,1,1,1,15,1,1,1,12,14] (hard := []) (by decide +kernel) .nil)

theorem f711 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [0,0,3,2]) :=
  row_of_forall (discharge bank [2,2,2,39,39,39,2,39,39,39,39,39,39,39,2,39,39,14,14,12,6,6,6,6,6,6,6,6,1,1,1,1,1,1,15,1,1,1,24,13] (hard := []) (by decide +kernel) .nil)

theorem f712 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [0,0,4,1]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,39,39,39,39,39,8,14,102,6,6,6,6,6,6,6,6,1,1,1,1,18,1,10] (hard := []) (by decide +kernel) .nil)

theorem f713 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [0,1,0,4]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,39,39,39,39,39,39,39,39,39,39,39,39,39,39,8,8,14,64,58,102,6,6,6,6,6,6,6,6,6,6,6,6,6,6,25,30,1,1,1,30,37,18,18,14,9,73,58] (hard := []) (by decide +kernel) .nil)

theorem f714 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [0,1,1,3]) :=
  row_of_forall (discharge bank [2,2,2,2,39,2,2,2,2,39,39,39,2,39,39,39,39,39,2,39,47,47,6,6,6,6,6,6,6,6,6,6,6,6,6,6,30,1,1,1,15,37,9,55] (hard := []) (by decide +kernel) .nil)

theorem f715 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [0,1,2,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,39,39,39,39,39,39,39,39,39,39,14,47,5,5,5,6,6,6,6,6,6,25,30,30,1,1,1,1,1,38,37,73,73] (hard := []) (by decide +kernel) .nil)

theorem f716 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [0,1,3,1]) :=
  row_of_forall (discharge bank [2,2,2,2,39,2,39,39,2,2,2,39,2,39,39,39,2,14,6,6,6,6,6,6,6,6,6,6,6,6,6,6,1,1,15,11] (hard := []) (by decide +kernel) .nil)

theorem f717 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [0,1,4,0]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,8,6,6,6,6,6,1,18] (hard := []) (by decide +kernel) .nil)

theorem f718 (hard : BadRow [Floor43.e2419190909982]) : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [0,2,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,39,39,2,2,39,39,39,39,39,39,39,2,2,39,39,0,47,6,6,6,6,6,6,6,6,6,25,30,1,1,1,1,1,15,15,38,31,24,40] (hard := [Floor43.e2419190909982]) (by decide +kernel) hard)

theorem f719 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [0,2,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,39,39,39,39,39,39,39,39,2,39,39,48,93,5,5,5,6,6,6,6,6,6,6,6,6,25,30,1,1,30,1,1,1,15,38,31,47,24] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
