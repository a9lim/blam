import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f140 (hard : BadRow [Floor42.e1196691307754]) : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [1,2,1,0,0]) :=
  row_of_forall (discharge bank [7,7,7,7,7,7,7,7,7,7,26,26,26,26,16,16,16,16,16,26,12,23,23,11,26,26,26,0] (hard := [Floor42.e1196691307754]) (by decide +kernel) hard)

theorem f141 : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [2,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f142 : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [2,0,0,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,16,1,16,1,1,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f143 : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [2,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f144 : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [2,0,1,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,16,1,1,1,1,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f145 : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [2,0,1,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,16,16,1,16,1,12,12,12,12,23,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f146 : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [2,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f147 : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [2,1,0,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,14,14,1,1,1,12,12,12,12,12,12,12,12,17] (hard := []) (by decide +kernel) .nil)

theorem f148 : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [2,1,0,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,14,14,1,14,1,12,12,12,12,18,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f149 : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [2,1,1,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,14,14,14,14,14,12,12,18,18,12] (hard := []) (by decide +kernel) .nil)

theorem f150 : BadRow (markedRow ⟨0,3,0,2,5,4⟩ [0,0,0] [2,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f151 : BadRow (markedRow ⟨0,4,0,2,4,4⟩ [0,0,0,0] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f152 : BadRow (markedRow ⟨0,4,0,2,4,4⟩ [0,0,0,0] [0,1,1,2]) :=
  row_of_forall (discharge bank [8,8,8,1,1,1,1,1,1,1,1,1,12,12,37] (hard := []) (by decide +kernel) .nil)

theorem f153 : BadRow (markedRow ⟨0,4,0,2,4,4⟩ [0,0,0,0] [0,1,2,1]) :=
  row_of_forall (discharge bank [16,8,8,1,1,1,1,1,1,1,1,1,12,12,37] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
