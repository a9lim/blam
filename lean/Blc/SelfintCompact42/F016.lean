import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f224 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,0,0,2,3]) :=
  row_of_forall (discharge bank [9,9,9,9,8,1,9,8,1,1,9,8,1,9,8,9,8,1,1,1,1,1,5,5,5,12,1] (hard := []) (by decide +kernel) .nil)

theorem f225 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,0,0,3,2]) :=
  row_of_forall (discharge bank [9,9,9,9,1,9,1,1,9,1,9,9,1,1,1,1,1,5,5,5,12,1] (hard := []) (by decide +kernel) .nil)

theorem f226 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,0,1,1,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,12,12,12,12,12,12,23] (hard := []) (by decide +kernel) .nil)

theorem f227 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,0,1,2,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,1,9,9,9,9,9,1,9,9,9,9,9,1,1,9,9,9,9,9,9,9,9,1,9,9,9,9,1,1,39,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f228 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,0,1,3,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,12,12,3,12,12,12,1,63,12] (hard := []) (by decide +kernel) .nil)

theorem f229 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,0,2,0,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,1,8,1,1,1,1,8,12,1,1,1,1,1,1,5,5,5,5,5,12,12,1,1] (hard := []) (by decide +kernel) .nil)

theorem f230 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,0,2,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,8,9,9,9,9,9,9,8,1,9,9,9,9,8,9,9,9,9,9,9,9,9,9,9,9,9,8,1,9,9,8,1,1,9,9,20,3,3,12,12,3,12,12,16,1,3] (hard := []) (by decide +kernel) .nil)

theorem f231 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,0,2,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,16,36,9,9,8,9,1,1,9,9,9,9,16,1,9,9,8,9,8,9,9,1,1,1,1,1,9,9,9,9,9,9,9,9,20,3,12,43,3,12,16,1,3,12] (hard := []) (by decide +kernel) .nil)

theorem f232 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,0,2,3,0]) :=
  row_of_forall (discharge bank [9,9,9,16,9,8,1,16,9,8,1,9,8,1,1,5,5,5,12,1,14] (hard := []) (by decide +kernel) .nil)

theorem f233 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,0,3,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,1,1,12,1,1,1,1,5,5,5,5,5,12,12,1,1] (hard := []) (by decide +kernel) .nil)

theorem f234 (hard : BadRow [Floor42.e1211277428662]) : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,0,3,1,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,18,3,18,51,0] (hard := [Floor42.e1211277428662]) (by decide +kernel) hard)

theorem f235 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,0,3,2,0]) :=
  row_of_forall (discharge bank [9,9,9,1,9,1,1,1,9,1,9,1,1,5,5,5,12,1,14] (hard := []) (by decide +kernel) .nil)

theorem f236 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,1,0,1,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1,1,1,1,1,1,1,1,1,12,12,3,3] (hard := []) (by decide +kernel) .nil)

theorem f237 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [1,1,0,2,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,9,9,9,9,9,9,9,12,12,9,9,1,9,9,9,9,9,9,9,9,1,9,9,1,48,1,1,27,1,1,1,1,3,12,3,3,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
