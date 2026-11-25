import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f168 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,1,1,3,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,6,6,6,54,14,28,10] (hard := []) (by decide +kernel) .nil)

theorem f169 (hard : BadRow [Floor41.e605795416462]) : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,1,2,0,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,31,31,31,31,31,12,12,12,12,12,12,12,1,68,1,27,1,10,10,4,10,10,4,10,0,4] (hard := [Floor41.e605795416462]) (by decide +kernel) hard)

theorem f170 (hard : BadRow [Floor41.e605795416518]) : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,1,2,1,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,29,1,1,1,14,10,4,10,4,10,4,0,76] (hard := [Floor41.e605795416518]) (by decide +kernel) hard)

theorem f171 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,1,2,2,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,31,31,31,12,12,10,10] (hard := []) (by decide +kernel) .nil)

theorem f172 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,1,3,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,6,6,6,6,6,10,10,10,41] (hard := []) (by decide +kernel) .nil)

theorem f173 (hard : BadRow [Floor41.e605792472890,Floor41.e605795393338]) : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,1,3,1,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,6,6,6,0,14,0,11] (hard := [Floor41.e605792472890,Floor41.e605795393338]) (by decide +kernel) hard)

theorem f174 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,2,0,0,3]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,7,7,10] (hard := []) (by decide +kernel) .nil)

theorem f175 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,2,0,1,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,31,31,31,31,31,12,12,12,12,12,12,12,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f176 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,2,0,2,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,31,31,31,31,31,12,12,12,12,12,1,1,27,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f177 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,2,0,3,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,7,10,7,11,15] (hard := []) (by decide +kernel) .nil)

theorem f178 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,2,1,0,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,31,31,31,31,31,12,12,12,12,12,1,1,1,54,54,4,10,4] (hard := []) (by decide +kernel) .nil)

theorem f179 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,2,1,1,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,54,54,4,54,4,10,7,10,4,10] (hard := []) (by decide +kernel) .nil)

theorem f180 (hard : BadRow [Floor41.e605775184826]) : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,2,1,2,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,31,31,31,12,12,1,12,54,7,0] (hard := [Floor41.e605775184826]) (by decide +kernel) hard)

theorem f181 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,2,2,0,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,31,31,31,31,31,12,12,1,1,42,42] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
