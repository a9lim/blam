import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f182 (hard : BadRow [Floor41.e605775184858]) : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,2,2,1,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,31,31,31,12,12,1,12,42,7,0] (hard := [Floor41.e605775184858]) (by decide +kernel) hard)

theorem f183 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,2,3,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,10,11] (hard := []) (by decide +kernel) .nil)

theorem f184 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,3,0,0,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,72,11,72,11,11] (hard := []) (by decide +kernel) .nil)

theorem f185 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,3,0,1,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,6,6,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f186 (hard : BadRow [Floor41.e605774986938]) : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,3,0,2,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,10,10,11,72,72,11,0] (hard := [Floor41.e605774986938]) (by decide +kernel) hard)

theorem f187 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,3,1,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,6,6,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f188 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,3,1,1,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f189 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,3,2,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,14,10,14,71] (hard := []) (by decide +kernel) .nil)

theorem f190 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [1,0,0,1,3]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,1,4,10,10,4,10,1] (hard := []) (by decide +kernel) .nil)

theorem f191 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [1,0,0,2,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,4,10,4,4,10,4,10,10,1,1] (hard := []) (by decide +kernel) .nil)

theorem f192 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [1,0,0,3,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,1,4,10,11,4,10,1] (hard := []) (by decide +kernel) .nil)

theorem f193 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [1,0,1,0,3]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,1,1,1,4,4,10,10,10,10,10,10,10,1,1] (hard := []) (by decide +kernel) .nil)

theorem f194 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [1,0,1,1,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,10,10,10,11,10,1] (hard := []) (by decide +kernel) .nil)

theorem f195 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [1,0,1,2,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,10,10,10,11,27,1,10] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
