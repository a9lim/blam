import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f154 : BadRow (markedRow ⟨0,4,0,2,4,4⟩ [0,0,0,0] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f155 : BadRow (markedRow ⟨0,4,0,2,4,4⟩ [0,0,0,0] [0,2,1,1]) :=
  row_of_forall (discharge bank [8,16,8,12,12,12,1,1,1,1,1,1,12,12,37] (hard := []) (by decide +kernel) .nil)

theorem f156 : BadRow (markedRow ⟨0,4,0,2,4,4⟩ [0,0,0,0] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f157 (hard : BadRow [Floor42.e1192558529390]) : BadRow (markedRow ⟨0,4,0,2,4,4⟩ [0,0,0,0] [1,0,1,2]) :=
  row_of_forall (discharge bank [8,8,8,8,8,11,23,1,1,1,1,12,12,12,12,12,12,12,23,1,11,11,13,12,27,12,12,38,37,0] (hard := [Floor42.e1192558529390]) (by decide +kernel) hard)

theorem f158 : BadRow (markedRow ⟨0,4,0,2,4,4⟩ [0,0,0,0] [1,0,2,1]) :=
  row_of_forall (discharge bank [16,8,16,8,8,3,27,1,1,1,1,3,12,12,12,12,12,3,25,1,11,12,11,3,25,12,12,12,37,3] (hard := []) (by decide +kernel) .nil)

theorem f159 (hard : BadRow [Floor42.e1196584695406,Floor42.e1196584689070,Floor42.e1192558163566,Floor42.e1192558529454]) : BadRow (markedRow ⟨0,4,0,2,4,4⟩ [0,0,0,0] [1,1,0,2]) :=
  row_of_forall (discharge bank [8,8,8,8,8,12,12,23,25,1,1,1,12,12,12,12,0,12,0,11,12,23,1,12,26,12,12,12,27,12,0,26,37,11,0] (hard := [Floor42.e1196584695406,Floor42.e1196584689070,Floor42.e1192558163566,Floor42.e1192558529454]) (by decide +kernel) hard)

theorem f160 : BadRow (markedRow ⟨0,4,0,2,4,4⟩ [0,0,0,0] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f161 (hard : BadRow [Floor42.e1196584695418,Floor42.e1192558163578]) : BadRow (markedRow ⟨0,4,0,2,4,4⟩ [0,0,0,0] [1,1,2,0]) :=
  row_of_forall (discharge bank [16,8,16,12,27,23,1,12,12,12,0,12,27,27,12,26,25,39,0,26] (hard := [Floor42.e1196584695418,Floor42.e1192558163578]) (by decide +kernel) hard)

theorem f162 (hard : BadRow [Floor42.e1192558530358]) : BadRow (markedRow ⟨0,4,0,2,4,4⟩ [0,0,0,0] [1,2,0,1]) :=
  row_of_forall (discharge bank [16,23,8,16,8,26,3,27,1,1,1,1,26,3,12,12,12,12,12,11,3,1,25,12,12,12,26,3,25,12,12,12,37,0,3] (hard := [Floor42.e1192558530358]) (by decide +kernel) hard)

theorem f163 (hard : BadRow [Floor42.e1209469964090,Floor42.e1192558530362]) : BadRow (markedRow ⟨0,4,0,2,4,4⟩ [0,0,0,0] [1,2,1,0]) :=
  row_of_forall (discharge bank [16,23,8,0,27,25,1,26,12,12,12,26,1,1,12,26,25,12,11,0] (hard := [Floor42.e1209469964090,Floor42.e1192558530362]) (by decide +kernel) hard)

theorem f164 : BadRow (markedRow ⟨0,4,0,2,4,4⟩ [0,0,0,0] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f165 : BadRow (markedRow ⟨0,4,0,2,4,4⟩ [0,0,0,0] [2,0,1,1]) :=
  row_of_forall (discharge bank [14,14,18,18,18,27,12,12,12,11,1,1,12,12,12,12,12,17,12,30,20,12,12,11,37] (hard := []) (by decide +kernel) .nil)

theorem f166 : BadRow (markedRow ⟨0,4,0,2,4,4⟩ [0,0,0,0] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f167 : BadRow (markedRow ⟨0,4,0,2,4,4⟩ [0,0,0,0] [2,1,0,1]) :=
  row_of_forall (discharge bank [14,14,18,18,18,15,12,12,12,12,1,1,12,12,12,12,12,12,12,12,20,12,12,11,37] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
