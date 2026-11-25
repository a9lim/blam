import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f210 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [1,1,2,1,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,29,1,17,29] (hard := []) (by decide +kernel) .nil)

theorem f211 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [1,1,3,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,14,1,56] (hard := []) (by decide +kernel) .nil)

theorem f212 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [1,2,0,0,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f213 (hard : BadRow [Floor41.e605649495606]) : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [1,2,0,1,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,1,4,10,4,0,4,10,4] (hard := [Floor41.e605649495606]) (by decide +kernel) hard)

theorem f214 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [1,2,0,2,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,10,4,10,4] (hard := []) (by decide +kernel) .nil)

theorem f215 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [1,2,1,0,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,14,10,14,10] (hard := []) (by decide +kernel) .nil)

theorem f216 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [1,2,1,1,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,14,10,54,10,26] (hard := []) (by decide +kernel) .nil)

theorem f217 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [1,2,2,0,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f218 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [1,3,0,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,39,7,1] (hard := []) (by decide +kernel) .nil)

theorem f219 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [1,3,0,1,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,39,1,39] (hard := []) (by decide +kernel) .nil)

theorem f220 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [1,3,1,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f221 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [2,0,0,0,3]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f222 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [2,0,0,1,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f223 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [2,0,0,2,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
