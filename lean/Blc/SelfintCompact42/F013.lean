import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f182 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,0,1,3,2]) :=
  row_of_forall (discharge bank [12,9,9,1,1,9,9,9,1,1,12,1,12,9,9,1,1,9,9,1,1,1,1,3,60,3] (hard := []) (by decide +kernel) .nil)

theorem f183 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,0,2,1,3]) :=
  row_of_forall (discharge bank [9,9,12,12,12,9,9,12,12,12,12,12,11,12,9,9,1,1,1,9,9,9,9,1,1,1,1,1,3,3,12,11,3,3] (hard := []) (by decide +kernel) .nil)

theorem f184 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,0,2,2,2]) :=
  row_of_forall (discharge bank [9,11,12,11,11,9,12,12,12,9,12,9,11,12,11,11,26,12,11,11,9,12,12,12,9,12,11,12,12,11,9,8,1,1,1,9,8,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f185 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,0,2,3,1]) :=
  row_of_forall (discharge bank [9,9,8,11,9,9,8,11,9,8,11,12,9,9,8,1,9,9,1,1,1,1,1,3,12,3] (hard := []) (by decide +kernel) .nil)

theorem f186 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,0,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f187 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,0,3,1,2]) :=
  row_of_forall (discharge bank [12,9,9,12,11,9,9,11,12,11,26,12,9,9,1,1,9,9,9,9,1,1,1,1,3,3,60,60,3,3] (hard := []) (by decide +kernel) .nil)

theorem f188 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,0,3,2,1]) :=
  row_of_forall (discharge bank [9,12,9,12,9,26,11,9,11,9,11,12,9,1,9,1,9,9,1,1,1,1,1,3,60,3] (hard := []) (by decide +kernel) .nil)

theorem f189 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,0,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f190 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,1,0,2,3]) :=
  row_of_forall (discharge bank [9,8,1,9,8,1,1,9,8,1,9,8,9,8,1,1,1,1,1,9,9,8,1,9,8,1,1,8,1,3,12,12,12,12,12,12,12,26] (hard := []) (by decide +kernel) .nil)

theorem f191 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,1,0,3,2]) :=
  row_of_forall (discharge bank [12,12,9,1,9,1,1,9,1,9,9,1,1,1,1,1,9,9,1,9,1,1,8,1,3,12,12,12,12,12,26] (hard := []) (by decide +kernel) .nil)

theorem f192 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,1,1,1,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,18,18,43,3,3] (hard := []) (by decide +kernel) .nil)

theorem f193 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,1,1,2,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,1,9,1,9,9,9,9,9,1,1,11,9,9,9,9,9,9,9,9,9,9,1,9,9,12,9,9,1,1,11,1,9,1,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f194 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,1,1,3,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,18,18,43,3,12,3] (hard := []) (by decide +kernel) .nil)

theorem f195 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,1,2,0,3]) :=
  row_of_forall (discharge bank [1,8,1,1,1,1,8,1,1,1,1,1,1,1,9,9,1,16,1,1,1,8,8,1,1,3,3,12,12,3,12,3,26,26] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
