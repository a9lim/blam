import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f224 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [2,0,0,3,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f225 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [2,0,1,0,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f226 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [2,0,1,1,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f227 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [2,0,1,2,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f228 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [2,0,2,0,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f229 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [2,0,2,1,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f230 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [2,0,3,0,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f231 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [2,1,0,0,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f232 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [2,1,0,1,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f233 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [2,1,0,2,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f234 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [2,1,1,0,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f235 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [2,1,1,1,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f236 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [2,1,2,0,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f237 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [2,2,0,0,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
