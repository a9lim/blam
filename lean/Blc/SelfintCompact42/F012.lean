import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f168 : BadRow (markedRow ⟨0,4,0,2,4,4⟩ [0,0,0,0] [2,1,1,0]) :=
  row_of_forall (discharge bank [14,14,18,15,15,12,1,1,12,12,12,12,20,24,12] (hard := []) (by decide +kernel) .nil)

theorem f169 : BadRow (markedRow ⟨0,4,0,2,4,4⟩ [0,0,0,0] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f170 : BadRow (markedRow ⟨0,2,0,3,4,10⟩ [0,0] [1,3,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f171 : BadRow (markedRow ⟨0,2,0,3,4,10⟩ [0,0] [2,2,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f172 : BadRow (markedRow ⟨0,2,0,3,4,10⟩ [0,0] [2,3,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f173 : BadRow (markedRow ⟨0,2,0,3,4,10⟩ [0,0] [2,3,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f174 : BadRow (markedRow ⟨0,2,0,3,4,10⟩ [0,0] [3,1,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f175 : BadRow (markedRow ⟨0,2,0,3,4,10⟩ [0,0] [3,2,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f176 : BadRow (markedRow ⟨0,2,0,3,4,10⟩ [0,0] [3,2,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f177 : BadRow (markedRow ⟨0,2,0,3,4,10⟩ [0,0] [3,3,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f178 : BadRow (markedRow ⟨0,2,0,3,4,10⟩ [0,0] [3,3,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f179 : BadRow (markedRow ⟨0,2,0,3,4,10⟩ [0,0] [3,3,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f180 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,0,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f181 : BadRow (markedRow ⟨0,2,0,3,5,6⟩ [0,0] [0,0,1,2,3]) :=
  row_of_forall (discharge bank [9,9,8,1,1,9,9,8,9,8,1,1,12,1,11,9,9,8,1,1,9,9,1,1,1,1,1,3,60,3] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
