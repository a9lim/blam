import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f196 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,1,2,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,9,8,9,9,8,1,9,9,9,8,9,9,9,9,9,9,9,12,9,9,9,9,9,9,9,9,8,1,9,9,8,12,1,1,9,9,9,12,9,1,9,9,1,1,23,1,12,12,3,12,12,3,3] (hard := []) (by decide +kernel) .nil)

theorem f197 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,1,2,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,9,16,36,9,8,9,16,1,9,9,8,9,8,9,9,9,11,1,1,1,9,9,9,9,12,9,9,9,9,9,11,9,27,36,9,1,23,1,12,12,3,3,3,3] (hard := []) (by decide +kernel) .nil)

theorem f198 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,1,2,3,0]) :=
  row_of_forall (discharge bank [16,16,9,9,8,1,1,9,16,8,1,9,3,12,26,11] (hard := []) (by decide +kernel) .nil)

theorem f199 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,1,3,0,2]) :=
  row_of_forall (discharge bank [11,1,1,1,1,1,1,1,9,9,1,1,8,8,1,1,3,3,12,12,26,26] (hard := []) (by decide +kernel) .nil)

theorem f200 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,1,3,1,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,18,18,12] (hard := []) (by decide +kernel) .nil)

theorem f201 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,1,3,2,0]) :=
  row_of_forall (discharge bank [1,1,1,9,9,1,1,9,1,8,1,9,3,12,26,11] (hard := []) (by decide +kernel) .nil)

theorem f202 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,2,0,1,3]) :=
  row_of_forall (discharge bank [11,11,12,12,8,8,55,12,12,11,12,12,11,12,11,11,1,1,1,36,8,12,26,26,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f203 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,2,0,2,2]) :=
  row_of_forall (discharge bank [9,16,12,12,9,8,11,8,8,11,9,11,12,12,12,12,9,16,9,11,12,26,8,11,26,11,12,11,12,1,11,11,1,9,16,1,1,9,39,36,47,1,8,1,26,26,26,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f204 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,2,0,3,1]) :=
  row_of_forall (discharge bank [63,12,26,11,8,26,11,8,26,11,11,1,1,16,1,1,3,26,1,1] (hard := []) (by decide +kernel) .nil)

theorem f205 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,2,1,0,3]) :=
  row_of_forall (discharge bank [63,63,12,12,12,12,8,8,55,12,12,12,12,12,12,12,12,12,1,1,1,36,8,12,12,26,26,3,26,3] (hard := []) (by decide +kernel) .nil)

theorem f206 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,2,1,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,9,9,9,12,9,8,8,12,27,9,9,9,9,9,12,9,9,9,9,9,9,9,8,11,9,9,9,9,9,9,9,9,12,12,16,12,9,12,12,9,8,11,9,9,9,9,1,9,1,25,8,8,18,18,26,26,3,12,26,3,12] (hard := []) (by decide +kernel) .nil)

theorem f207 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,2,1,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,9,9,9,16,12,9,8,8,9,8,9,9,9,8,12,9,9,9,9,23,9,8,9,8,11,9,12,12,12,9,9,9,8,9,9,9,9,9,9,8,11,9,9,9,9,16,1,9,39,25,9,1,1,18,18,26,26,3,3,3,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f208 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,2,1,3,0]) :=
  row_of_forall (discharge bank [63,11,12,12,9,9,12,12,12,1,9,9,12,26,12,11] (hard := []) (by decide +kernel) .nil)

theorem f209 (hard : BadRow [Floor42.e1211203251854]) : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,2,2,0,2]) :=
  row_of_forall (discharge bank [16,39,12,8,23,55,12,26,11,12,8,11,26,9,12,12,12,16,26,11,11,0,12,1,9,12,12,1,27,16,1,16,36,1,8,26,26,3,49,12,3,12] (hard := [Floor42.e1211203251854]) (by decide +kernel) hard)

end Blc.SelfintSingleObject.Compact42
