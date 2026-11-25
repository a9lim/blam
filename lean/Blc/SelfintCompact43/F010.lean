import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f120 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [2,1,0,1,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f121 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [2,1,0,1,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f122 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [2,1,0,2,0,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,7,7,7,7,7,7,7,14,14,1,1,7,7,14,1,1,1,1,1,7,7,7,14,14,14,7,7,14] (hard := []) (by decide +kernel) .nil)

theorem f123 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [2,1,1,0,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f124 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [2,1,1,0,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f125 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [2,1,1,1,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f126 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [2,1,2,0,0,0]) :=
  row_of_forall (discharge bank [1,1,1,1,38,1,1,1,1,1,1,1,1,1,7,7,7,7,7,1,1,7,1,1,1,1,1,7,7,14,14,7] (hard := []) (by decide +kernel) .nil)

theorem f127 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [2,2,0,0,0,1]) :=
  row_of_forall (discharge bank [17,17,17,17,17,1,1,1,9,1,1,9,9,9,36,36,36,36,36,9,9,36,36,9,1,36,11,36,9,9,1,1,11,36,36,11,36,11,48,36,11,36] (hard := []) (by decide +kernel) .nil)

theorem f128 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [2,2,0,0,1,0]) :=
  row_of_forall (discharge bank [17,17,17,17,17,1,1,1,9,1,1,9,9,9,36,36,36,36,36,9,9,36,36,9,1,36,11,36,9,9,1,1,11,36,36,11,36,11,48,36,11,36] (hard := []) (by decide +kernel) .nil)

theorem f129 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [2,2,0,1,0,0]) :=
  row_of_forall (discharge bank [17,17,17,17,17,1,1,1,9,1,1,9,9,9,36,36,36,36,36,9,9,36,36,9,1,36,11,36,9,9,1,1,11,36,36,11,36,11,48,36,11,36] (hard := []) (by decide +kernel) .nil)

theorem f130 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [2,2,1,0,0,0]) :=
  row_of_forall (discharge bank [17,17,17,17,17,1,1,1,9,1,1,9,9,9,36,36,36,36,36,9,1,36,9,9,1,1,11,36,36,11,48,36] (hard := []) (by decide +kernel) .nil)

theorem f131 (hard : BadRow [Floor43.e2419190847982,Floor43.e2419190845166,Floor43.e2419190839022,Floor43.e2393421044206,Floor43.e2393421041390,Floor43.e2393421035246]) : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [0,0,1,2,2]) :=
  row_of_forall (discharge bank [1,1,1,14,47,14,14,47,14,47,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0] (hard := [Floor43.e2419190847982,Floor43.e2419190845166,Floor43.e2419190839022,Floor43.e2393421044206,Floor43.e2393421041390,Floor43.e2393421035246]) (by decide +kernel) hard)

end Blc.SelfintSingleObject.Compact43
