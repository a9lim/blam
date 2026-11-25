import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f156 : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [1,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f157 (hard : BadRow [Floor43.e2393373593210,Floor43.e2393373570682,Floor43.e2393373390458]) : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [1,1,1,2,0]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,39,39,14,14,14,48,36,37,38,1,37,1,0,14,0,0,48,48,48,48,36] (hard := [Floor43.e2393373593210,Floor43.e2393373570682,Floor43.e2393373390458]) (by decide +kernel) hard)

theorem f158 (hard : BadRow [Floor43.e2419155472182,Floor43.e2393373593398,Floor43.e2393373390646,Floor43.e2393373389782,Floor43.e2393373339094,Floor43.e2393385668406,Floor43.e2393382613974]) : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [1,1,2,0,1]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,39,39,39,39,39,39,39,14,14,14,14,14,0,36,36,36,14,37,1,1,1,1,0,14,14,0,14,14,0,14,0,48,14,48,48,14,0,36,36,36,0] (hard := [Floor43.e2419155472182,Floor43.e2393373593398,Floor43.e2393373390646,Floor43.e2393373389782,Floor43.e2393373339094,Floor43.e2393385668406,Floor43.e2393382613974]) (by decide +kernel) hard)

theorem f159 (hard : BadRow [Floor43.e2419155472186,Floor43.e2393373593402,Floor43.e2393373390650,Floor43.e2393385668410]) : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [1,1,2,1,0]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,39,39,14,14,14,0,36,37,31,1,31,1,0,14,47,0,48,48,48,0,36] (hard := [Floor43.e2419155472186,Floor43.e2393373593402,Floor43.e2393373390650,Floor43.e2393385668410]) (by decide +kernel) hard)

theorem f160 : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [1,2,0,0,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,14,14,14,1,1,1,1,1,1,1,1,1,1,1,14,14,14,14,14,14,14,14,14] (hard := []) (by decide +kernel) .nil)

theorem f161 (hard : BadRow [Floor43.e2393373384374,Floor43.e2393382615478]) : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [1,2,0,1,1]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,39,39,39,39,39,39,39,48,48,36,48,36,48,36,37,1,1,1,1,14,14,47,14,14,14,14,0,14,48,14,36,14,36,0,36] (hard := [Floor43.e2393373384374,Floor43.e2393382615478]) (by decide +kernel) hard)

theorem f162 : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [1,2,0,2,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,14,14,1,1,1,1,1,1,1,1,1,1,1,1,14,14,14,14,14,14,14,47,14] (hard := []) (by decide +kernel) .nil)

theorem f163 (hard : BadRow [Floor43.e2393373599190,Floor43.e2393373391670,Floor43.e2393373339350,Floor43.e2393382615510]) : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [1,2,1,0,1]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,39,39,39,39,39,39,39,48,48,48,48,48,48,37,1,1,1,1,48,0,14,0,14,14,47,14,0,48,48,48,48,48,0] (hard := [Floor43.e2393373599190,Floor43.e2393373391670,Floor43.e2393373339350,Floor43.e2393382615510]) (by decide +kernel) hard)

theorem f164 (hard : BadRow [Floor43.e2393373391674,Floor43.e2393385330490,Floor43.e2393385330138,Floor43.e2393385302842]) : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [1,2,1,1,0]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,39,39,48,48,48,37,37,1,31,1,48,14,47,0,0,0,0] (hard := [Floor43.e2393373391674,Floor43.e2393385330490,Floor43.e2393385330138,Floor43.e2393385302842]) (by decide +kernel) hard)

theorem f165 : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [1,2,2,0,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,14,1,1,1,1,1,1,1,1,14,14,14,14,14] (hard := []) (by decide +kernel) .nil)

theorem f166 : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [2,0,0,1,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,14,14,14,48,14,14,14,14,48,1,1,1,1,1,31,14,44,14,14,14,14,14,14] (hard := []) (by decide +kernel) .nil)

theorem f167 : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [2,0,0,2,1]) :=
  row_of_forall (discharge bank [1,1,1,1,1,14,14,14,48,14,14,48,48,48,1,1,1,1,1,31,14,31,14,14,14,14,14,14] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
