import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f350 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [3,0,4,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f351 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [3,1,0,3]) :=
  row_of_forall (discharge bank [31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f352 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [3,1,1,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f353 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [3,1,2,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f354 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [3,1,3,0]) :=
  row_of_forall (discharge bank [31,31,31,12] (hard := []) (by decide +kernel) .nil)

theorem f355 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [3,2,0,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f356 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [3,2,1,1]) :=
  row_of_forall (discharge bank [31,31,31,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f357 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [3,2,2,0]) :=
  row_of_forall (discharge bank [31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f358 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [3,3,0,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31] (hard := []) (by decide +kernel) .nil)

theorem f359 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [3,3,1,0]) :=
  row_of_forall (discharge bank [31,31,31,12] (hard := []) (by decide +kernel) .nil)

theorem f360 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [3,4,0,0]) :=
  row_of_forall (discharge bank [12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f361 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [4,0,0,3]) :=
  row_of_forall (discharge bank [12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f362 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [4,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f363 : BadRow (markedRow ⟨0,2,0,4,4,7⟩ [0,0] [4,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
