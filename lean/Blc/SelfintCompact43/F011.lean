import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f132 (hard : BadRow [Floor43.e2419190848750,Floor43.e2419190845294,Floor43.e2419190839150,Floor43.e2393421044974,Floor43.e2393421041518,Floor43.e2393421035374]) : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [0,0,2,1,2]) :=
  row_of_forall (discharge bank [47,47,48,47,14,47,48,47,48,14,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0] (hard := [Floor43.e2419190848750,Floor43.e2419190845294,Floor43.e2419190839150,Floor43.e2393421044974,Floor43.e2393421041518,Floor43.e2393421035374]) (by decide +kernel) hard)

theorem f133 (hard : BadRow [Floor43.e2419190848758,Floor43.e2419190845302,Floor43.e2419190839158,Floor43.e2393421044982,Floor43.e2393421041526,Floor43.e2393421035382]) : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [0,0,2,2,1]) :=
  row_of_forall (discharge bank [48,47,48,48,47,48,48,14,48,47,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0] (hard := [Floor43.e2419190848758,Floor43.e2419190845302,Floor43.e2419190839158,Floor43.e2393421044982,Floor43.e2393421041526,Floor43.e2393421035382]) (by decide +kernel) hard)

theorem f134 (hard : BadRow [Floor43.e2419190896366,Floor43.e2419190852078,Floor43.e2419190851310,Floor43.e2419190840046,Floor43.e2393421092590,Floor43.e2393421048302,Floor43.e2393421047534,Floor43.e2393421036270]) : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [0,1,0,2,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,47,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,48,0,0,0,0] (hard := [Floor43.e2419190896366,Floor43.e2419190852078,Floor43.e2419190851310,Floor43.e2419190840046,Floor43.e2393421092590,Floor43.e2393421048302,Floor43.e2393421047534,Floor43.e2393421036270]) (by decide +kernel) hard)

theorem f135 : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [0,1,1,1,2]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,39,39,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f136 : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [0,1,1,2,1]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,39,39,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f137 (hard : BadRow [Floor43.e2419190898286,Floor43.e2419190896558,Floor43.e2419190851502,Floor43.e2393421094510,Floor43.e2393421092782,Floor43.e2393421047726]) : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [0,1,2,0,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,36,0,36,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,36,0,36] (hard := [Floor43.e2419190898286,Floor43.e2419190896558,Floor43.e2419190851502,Floor43.e2393421094510,Floor43.e2393421092782,Floor43.e2393421047726]) (by decide +kernel) hard)

theorem f138 : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [0,1,2,1,1]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,39,39,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f139 (hard : BadRow [Floor43.e2419190898298,Floor43.e2393421094522]) : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [0,1,2,2,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,0,36,36,1,1,1,1,1,1,1,1,1,1,1,1,1,0,36,36] (hard := [Floor43.e2419190898298,Floor43.e2393421094522]) (by decide +kernel) hard)

theorem f140 (hard : BadRow [Floor43.e2419190910190,Floor43.e2419190909806,Floor43.e2419190854894,Floor43.e2419190854510,Floor43.e2419190840686,Floor43.e2393421106414,Floor43.e2393421106030,Floor43.e2393421051118,Floor43.e2393421050734,Floor43.e2393421036910]) : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [0,2,0,1,2]) :=
  row_of_forall (discharge bank [14,14,14,14,14,48,47,14,47,47,14,47,81,48,1,1,1,1,1,0,0,0,0,0,1,1,44,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0] (hard := [Floor43.e2419190910190,Floor43.e2419190909806,Floor43.e2419190854894,Floor43.e2419190854510,Floor43.e2419190840686,Floor43.e2393421106414,Floor43.e2393421106030,Floor43.e2393421051118,Floor43.e2393421050734,Floor43.e2393421036910]) (by decide +kernel) hard)

theorem f141 (hard : BadRow [Floor43.e2419143668982,Floor43.e2419190910198,Floor43.e2419190909814,Floor43.e2419190854902,Floor43.e2419190854518,Floor43.e2419190840694,Floor43.e2393421106422,Floor43.e2393421106038,Floor43.e2393421051126,Floor43.e2393421050742,Floor43.e2393421036918]) : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [0,2,0,2,1]) :=
  row_of_forall (discharge bank [14,14,0,14,14,48,47,48,48,14,48,48,47,116,1,1,1,1,1,0,0,0,0,0,1,1,31,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0] (hard := [Floor43.e2419143668982,Floor43.e2419190910198,Floor43.e2419190909814,Floor43.e2419190854902,Floor43.e2419190854518,Floor43.e2419190840694,Floor43.e2393421106422,Floor43.e2393421106038,Floor43.e2393421051126,Floor43.e2393421050742,Floor43.e2393421036918]) (by decide +kernel) hard)

theorem f142 (hard : BadRow [Floor43.e2419190910574,Floor43.e2419190909870,Floor43.e2419190854574,Floor43.e2393421106798,Floor43.e2393421106094,Floor43.e2393421050798]) : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [0,2,1,0,2]) :=
  row_of_forall (discharge bank [14,14,48,14,47,48,81,48,47,47,47,48,47,47,1,1,1,1,1,0,0,36,0,36,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,36,0,36] (hard := [Floor43.e2419190910574,Floor43.e2419190909870,Floor43.e2419190854574,Floor43.e2393421106798,Floor43.e2393421106094,Floor43.e2393421050798]) (by decide +kernel) hard)

theorem f143 : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [0,2,1,1,1]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,39,39,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
