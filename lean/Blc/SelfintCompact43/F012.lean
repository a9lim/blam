import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f144 (hard : BadRow [Floor43.e2419190910586,Floor43.e2393421106810]) : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [0,2,1,2,0]) :=
  row_of_forall (discharge bank [14,14,48,47,47,47,47,48,14,47,1,1,1,0,36,36,1,1,1,1,1,1,1,1,1,1,1,1,1,0,36,36] (hard := [Floor43.e2419190910586,Floor43.e2393421106810]) (by decide +kernel) hard)

theorem f145 (hard : BadRow [Floor43.e2419143654870,Floor43.e2419143331638,Floor43.e2419143138774,Floor43.e2419190910774,Floor43.e2419190909910,Floor43.e2419190854614,Floor43.e2393421106998,Floor43.e2393421106134,Floor43.e2393421050838]) : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [0,2,2,0,1]) :=
  row_of_forall (discharge bank [14,14,14,14,0,0,48,47,48,14,48,48,47,0,1,1,1,1,1,0,0,36,0,36,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,36,0,36] (hard := [Floor43.e2419143654870,Floor43.e2419143331638,Floor43.e2419143138774,Floor43.e2419190910774,Floor43.e2419190909910,Floor43.e2419190854614,Floor43.e2393421106998,Floor43.e2393421106134,Floor43.e2393421050838]) (by decide +kernel) hard)

theorem f146 (hard : BadRow [Floor43.e2419190910778,Floor43.e2393421107002]) : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [0,2,2,1,0]) :=
  row_of_forall (discharge bank [14,14,14,47,47,14,48,47,47,48,1,1,1,0,36,36,1,1,1,1,1,1,1,1,1,1,1,1,1,0,36,36] (hard := [Floor43.e2419190910778,Floor43.e2393421107002]) (by decide +kernel) hard)

theorem f147 : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [1,0,0,2,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,14,14,81,14,14,14,14,14,14] (hard := []) (by decide +kernel) .nil)

theorem f148 (hard : BadRow [Floor43.e2393373579118,Floor43.e2393373388014,Floor43.e2393373386606,Floor43.e2393373383534,Floor43.e2393373338478]) : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [1,0,1,1,2]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,39,39,39,39,39,39,39,14,14,14,38,1,1,1,1,47,0,47,0,14,14,0,0,0,14,14,14] (hard := [Floor43.e2393373579118,Floor43.e2393373388014,Floor43.e2393373386606,Floor43.e2393373383534,Floor43.e2393373338478]) (by decide +kernel) hard)

theorem f149 (hard : BadRow [Floor43.e2393373579126,Floor43.e2393373388022,Floor43.e2393373386614,Floor43.e2393373338486,Floor43.e2393382607734]) : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [1,0,1,2,1]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,39,39,39,39,39,39,39,14,14,14,14,38,1,1,1,1,47,0,47,0,14,14,0,14,0,14,14,14,0] (hard := [Floor43.e2393373579126,Floor43.e2393373388022,Floor43.e2393373386614,Floor43.e2393373338486,Floor43.e2393382607734]) (by decide +kernel) hard)

theorem f150 : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [1,0,2,0,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,14,1,1,1,1,1,1,1,1,1,1,1,14,11,14,14,14,14,14,14,24] (hard := []) (by decide +kernel) .nil)

theorem f151 (hard : BadRow [Floor43.e2393373579190,Floor43.e2393373386678,Floor43.e2393373383606]) : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [1,0,2,1,1]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,39,39,39,39,39,39,39,36,48,36,36,38,1,1,1,1,14,0,14,14,14,14,0,0,14,36,48,36,36] (hard := [Floor43.e2393373579190,Floor43.e2393373386678,Floor43.e2393373383606]) (by decide +kernel) hard)

theorem f152 : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [1,0,2,2,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,14,14,14,14,14,14,14,14,14] (hard := []) (by decide +kernel) .nil)

theorem f153 (hard : BadRow [Floor43.e2393373384046]) : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [1,1,0,1,2]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,39,39,39,39,39,39,39,14,14,14,14,14,48,36,38,1,1,1,1,14,14,48,14,14,14,14,0,14,14,14,14,14,14,48,36] (hard := [Floor43.e2393373384046]) (by decide +kernel) hard)

theorem f154 (hard : BadRow [Floor43.e2393382613878,Floor43.e2393382608246]) : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [1,1,0,2,1]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,39,39,39,39,39,39,39,14,14,14,14,14,36,36,14,14,37,1,1,1,1,14,14,48,14,14,14,14,47,14,14,14,14,14,14,36,36,0,0] (hard := [Floor43.e2393382613878,Floor43.e2393382608246]) (by decide +kernel) hard)

theorem f155 (hard : BadRow [Floor43.e2393373593198,Floor43.e2393373390446,Floor43.e2393373389742,Floor43.e2393373339054]) : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [1,1,1,0,2]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,39,39,39,39,39,39,39,14,14,14,14,14,48,48,36,36,38,44,1,1,1,0,47,14,0,14,14,0,14,0,48,14,48,48,14,48,48,36,36] (hard := [Floor43.e2393373593198,Floor43.e2393373390446,Floor43.e2393373389742,Floor43.e2393373339054]) (by decide +kernel) hard)

end Blc.SelfintSingleObject.Compact43
