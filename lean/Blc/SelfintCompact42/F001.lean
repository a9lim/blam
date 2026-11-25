import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f14 : BadRow (markedRow ⟨0,2,0,2,5,8⟩ [0,0] [2,2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f15 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [0,0,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f16 (hard : BadRow [Floor42.e1211608689902,Floor42.e1211608688494,Floor42.e1211608685422]) : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [0,0,0,1,1,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1,1,1,1,1,1,1,3,3,3,0,0,0,3,3,3] (hard := [Floor42.e1211608689902,Floor42.e1211608688494,Floor42.e1211608685422]) (by decide +kernel) hard)

theorem f17 (hard : BadRow [Floor42.e1211608689910,Floor42.e1211608688502,Floor42.e1211608685430]) : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [0,0,0,1,2,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,9,9,9,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,3,3,3,0,0,0,3,3,3] (hard := [Floor42.e1211608689910,Floor42.e1211608688502,Floor42.e1211608685430]) (by decide +kernel) hard)

theorem f18 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [0,0,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f19 (hard : BadRow [Floor42.e1211608690294,Floor42.e1211608688566,Floor42.e1211608685494]) : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [0,0,0,2,1,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,9,9,9,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,3,3,3,0,0,0,3,3,3] (hard := [Floor42.e1211608690294,Floor42.e1211608688566,Floor42.e1211608685494]) (by decide +kernel) hard)

theorem f20 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [0,0,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f21 (hard : BadRow [Floor42.e1211608714478,Floor42.e1211608714094,Floor42.e1211608691950,Floor42.e1211608691566,Floor42.e1211608685934]) : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [0,0,1,0,1,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,9,9,9,9,9,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,3,3,3,3,3,3,0,0,0,0,0,3,3,3,3,3,3,3] (hard := [Floor42.e1211608714478,Floor42.e1211608714094,Floor42.e1211608691950,Floor42.e1211608691566,Floor42.e1211608685934]) (by decide +kernel) hard)

theorem f22 (hard : BadRow [Floor42.e1211608714486,Floor42.e1211608714102,Floor42.e1211608691958,Floor42.e1211608691574,Floor42.e1211608685942]) : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [0,0,1,0,2,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1,9,9,9,9,9,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,3,3,3,3,3,3,3,3,0,0,0,0,0,3,3,3,3,3,3,3] (hard := [Floor42.e1211608714486,Floor42.e1211608714102,Floor42.e1211608691958,Floor42.e1211608691574,Floor42.e1211608685942]) (by decide +kernel) hard)

theorem f23 (hard : BadRow [Floor42.e1211608714862,Floor42.e1211608714158,Floor42.e1211608691630]) : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [0,0,1,1,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1,9,9,9,9,9,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,3,3,3,3,3,3,3,3,0,0,3,0,3,3,3,3,3,3,3,3,3,3] (hard := [Floor42.e1211608714862,Floor42.e1211608714158,Floor42.e1211608691630]) (by decide +kernel) hard)

theorem f24 : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [0,0,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f25 (hard : BadRow [Floor42.e1211608714874,Floor42.e1211550249914,Floor42.e1211550244282,Floor42.e1211550231994]) : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [0,0,1,1,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,9,9,9,1,1,1,9,9,9,1,1,1,1,1,1,1,1,1,1,3,3,3,3,3,0,3,3,3,3,3,3,3,0,0,0] (hard := [Floor42.e1211608714874,Floor42.e1211550249914,Floor42.e1211550244282,Floor42.e1211550231994]) (by decide +kernel) hard)

theorem f26 (hard : BadRow [Floor42.e1211608715062,Floor42.e1211608714198,Floor42.e1211608691670]) : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [0,0,1,2,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1,1,9,9,9,9,9,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,3,3,3,3,3,3,3,3,3,0,0,3,0,3,3,3,3,3,3,3,3,3,3] (hard := [Floor42.e1211608715062,Floor42.e1211608714198,Floor42.e1211608691670]) (by decide +kernel) hard)

theorem f27 (hard : BadRow [Floor42.e1211608715066,Floor42.e1211550249946,Floor42.e1211550244314,Floor42.e1211550232026]) : BadRow (markedRow ⟨0,2,0,2,6,4⟩ [0,0] [0,0,1,2,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,9,9,9,1,1,1,1,9,9,9,1,1,1,1,1,1,1,1,1,1,1,3,3,3,3,3,0,3,3,3,3,3,3,3,0,0,0] (hard := [Floor42.e1211608715066,Floor42.e1211550249946,Floor42.e1211550244314,Floor42.e1211550232026]) (by decide +kernel) hard)

end Blc.SelfintSingleObject.Compact42
