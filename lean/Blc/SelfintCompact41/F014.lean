import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f196 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [1,0,1,3,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,29,1,1,4,10,10] (hard := []) (by decide +kernel) .nil)

theorem f197 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [1,0,2,0,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,10,4,4,10,4,4,10,10,9,1,1] (hard := []) (by decide +kernel) .nil)

theorem f198 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [1,0,2,1,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,10,54,4,4,26,4,10,9,1,1,4] (hard := []) (by decide +kernel) .nil)

theorem f199 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [1,0,2,2,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,10,4,10,4,10] (hard := []) (by decide +kernel) .nil)

theorem f200 (hard : BadRow [Floor41.e605649462230]) : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [1,0,3,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,70,1,1,1,4,4,10,0] (hard := [Floor41.e605649462230]) (by decide +kernel) hard)

theorem f201 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [1,0,3,1,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,1,4,11,54,14] (hard := []) (by decide +kernel) .nil)

theorem f202 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [1,1,0,0,3]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,1,1,1,1,1,10,1,1] (hard := []) (by decide +kernel) .nil)

theorem f203 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [1,1,0,1,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,1,17] (hard := []) (by decide +kernel) .nil)

theorem f204 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [1,1,0,2,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,22,1,10,1,1,17,68,1] (hard := []) (by decide +kernel) .nil)

theorem f205 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [1,1,0,3,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,1,1,1,1,1,1,29,1] (hard := []) (by decide +kernel) .nil)

theorem f206 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [1,1,1,0,2]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,10,1,17,17] (hard := []) (by decide +kernel) .nil)

theorem f207 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [1,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f208 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [1,1,1,2,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,10,1,17,1] (hard := []) (by decide +kernel) .nil)

theorem f209 : BadRow (markedRow ⟨0,2,0,3,5,5⟩ [0,0] [1,1,2,0,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,1,17,17,69] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
