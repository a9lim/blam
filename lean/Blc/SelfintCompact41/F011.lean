import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f154 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,0,1,3,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,6,6,6,9,1,1,1,1,4,77,4] (hard := []) (by decide +kernel) .nil)

theorem f155 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,0,2,0,3]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,72,9,11,11,11,10,10,10,42,4,4] (hard := []) (by decide +kernel) .nil)

theorem f156 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,0,2,1,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,31,31,31,12,12,12,12,12,12,12,12,12,12,1,9,1,1,1,1,1,1,1,4,54,4] (hard := []) (by decide +kernel) .nil)

theorem f157 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,0,2,2,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,31,31,31,12,12,12,12,12,12,12,12,1,1,9,1,1,1,1,1,4,54,4] (hard := []) (by decide +kernel) .nil)

theorem f158 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,0,2,3,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,11,11,10,10,28,4,11] (hard := []) (by decide +kernel) .nil)

theorem f159 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,0,3,0,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,72,11,10,11,10,10,10,10,41,4,4] (hard := []) (by decide +kernel) .nil)

theorem f160 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,0,3,1,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,6,6,6,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f161 (hard : BadRow [Floor41.e605774985146]) : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,0,3,2,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,29,10,10,10,54,4,0] (hard := [Floor41.e605774985146]) (by decide +kernel) hard)

theorem f162 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,1,0,1,3]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,6,6,6,6,6,10,10,10,10,10,10,10,10,4] (hard := []) (by decide +kernel) .nil)

theorem f163 (hard : BadRow [Floor41.e605795408110]) : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,1,0,2,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,31,31,31,31,31,12,12,12,12,12,12,12,12,69,1,1,1,1,1,10,10,10,10,10,10,10,10,4,0] (hard := [Floor41.e605795408110]) (by decide +kernel) hard)

theorem f164 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,1,0,3,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,9,1,1,1,6,6,6,6,6,10,10,10,10,10,10,74] (hard := []) (by decide +kernel) .nil)

theorem f165 (hard : BadRow [Floor41.e605795414814]) : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,1,1,0,3]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,9,1,1,1,6,6,6,6,6,10,10,4,10,4,10,73,0,4] (hard := [Floor41.e605795414814]) (by decide +kernel) hard)

theorem f166 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,1,1,1,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,10,14,14,10,4,10,75] (hard := []) (by decide +kernel) .nil)

theorem f167 (hard : BadRow [Floor41.e605795414982]) : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [0,1,1,2,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,9,1,1,10,4,4,14,10,0] (hard := [Floor41.e605795414982]) (by decide +kernel) hard)

end Blc.SelfintSingleObject.Compact41
