import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f48 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,2,1,0,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,1,1,48,48,48,48,48,36,36,48,36,48,48,36,48,36] (hard := []) (by decide +kernel) .nil)

theorem f49 (hard : BadRow [Floor43.e2423100750266,Floor43.e2423100747450,Floor43.e2423100526266]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,2,1,0,2,0]) :=
  row_of_forall (discharge bank [14,14,14,14,14,25,25,25,47,14,14,25,25,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,25,25,14,14,14,14,14,14,14,14,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,25,48,48,48,48,48,36,36,48,36,48,48,36,48,36,0,0,36,0,36] (hard := [Floor43.e2423100750266,Floor43.e2423100747450,Floor43.e2423100526266]) (by decide +kernel) hard)

theorem f50 (hard : BadRow [Floor43.e2423170852662]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,2,1,1,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,0,48,36,48,36,36,36,36,36,48,36,36,36,36] (hard := [Floor43.e2423170852662]) (by decide +kernel) hard)

theorem f51 (hard : BadRow [Floor43.e2423170852666]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,2,1,1,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,0,36,36,36,36,36,36,36,36] (hard := [Floor43.e2423170852666]) (by decide +kernel) hard)

theorem f52 (hard : BadRow [Floor43.e2423100750314]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,2,1,2,0,0]) :=
  row_of_forall (discharge bank [14,14,14,14,14,25,25,14,14,25,14,14,14,14,14,14,14,14,14,14,14,14,14,14,25,14,14,14,14,14,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1,48,48,36,48,36,36,36,48,36,36,0,36,36] (hard := [Floor43.e2423100750314]) (by decide +kernel) hard)

theorem f53 (hard : BadRow [Floor43.e2422414702422,Floor43.e2422407131862,Floor43.e2422406503734,Floor43.e2422408410966,Floor43.e2422406503638,Floor43.e2422406838102,Floor43.e2422406500182,Floor43.e2422406346582]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,2,2,0,0,1]) :=
  row_of_forall (discharge bank [30,30,48,48,38,14,14,38,14,38,48,14,37,0,48,48,47,48,30,47,47,48,0,30,48,116,47,0,30,48,48,38,0,48,47,47,0,30,0,0,47,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,48,48,48,48,48,36,36,14,36,14,14,36,14,36] (hard := [Floor43.e2422414702422,Floor43.e2422407131862,Floor43.e2422406503734,Floor43.e2422408410966,Floor43.e2422406503638,Floor43.e2422406838102,Floor43.e2422406500182,Floor43.e2422406346582]) (by decide +kernel) hard)

theorem f54 (hard : BadRow [Floor43.e2422414761178,Floor43.e2422406503738,Floor43.e2422406346586,Floor43.e2423100751066,Floor43.e2423100747610,Floor43.e2423100526426]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,2,2,0,1,0]) :=
  row_of_forall (discharge bank [30,30,48,48,38,14,14,38,14,38,48,0,37,14,48,48,47,47,30,47,47,48,48,30,48,48,47,0,30,48,48,38,14,48,48,47,48,30,125,48,47,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,44,30,1,1,1,48,48,48,48,48,36,36,14,36,48,48,36,14,36,0,0,36,0,36] (hard := [Floor43.e2422414761178,Floor43.e2422406503738,Floor43.e2422406346586,Floor43.e2423100751066,Floor43.e2423100747610,Floor43.e2423100526426]) (by decide +kernel) hard)

theorem f55 (hard : BadRow [Floor43.e2422414761194,Floor43.e2423170855834,Floor43.e2423170855658,Floor43.e2423170841834,Floor43.e2423169957098,Floor43.e2423100751082]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,2,2,1,0,0]) :=
  row_of_forall (discharge bank [30,30,48,48,38,14,14,38,48,0,48,48,14,47,30,47,47,48,48,47,47,48,30,48,48,48,14,47,48,14,47,48,1,1,1,1,1,1,1,1,1,1,44,30,1,0,0,36,0,36,36,36,0,36,36,0,36,36] (hard := [Floor43.e2422414761194,Floor43.e2423170855834,Floor43.e2423170855658,Floor43.e2423170841834,Floor43.e2423169957098,Floor43.e2423100751082]) (by decide +kernel) hard)

theorem f56 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,0,0,0,2,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f57 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,0,0,1,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,14,14,14,14,36,14,14,36,14,36,14,14,14,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f58 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,0,0,1,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,14,48,14,14,36,48,14,36,14,36,14,14,14,1,1,1,1,14,14,36,1,1] (hard := []) (by decide +kernel) .nil)

theorem f59 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [1,0,0,2,0,2]) :=
  row_of_forall (discharge bank [1,25,1,1,1,1,25,1,1,1,1,1,1,1,1,25,1,1,1,1,25,1,25,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
