import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f168 : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [2,0,1,0,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,14,14,14,14,14,14,14,14,14,1,1,1,1,1,14,37,14,14,14,14,14,14,14] (hard := []) (by decide +kernel) .nil)

theorem f169 : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [2,0,1,1,1]) :=
  row_of_forall (discharge bank [6,6,6,6,6,6,6,6,6,6,6,6,6,6,38,1,1,1,1,14,14,14,14,14,14,14,14,14] (hard := []) (by decide +kernel) .nil)

theorem f170 : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [2,0,1,2,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,14,14,14,14,14,14,14,48,14,1,1,1,1,1,14,14,14,14,14,14,14,14,14] (hard := []) (by decide +kernel) .nil)

theorem f171 (hard : BadRow [Floor43.e2419143202614,Floor43.e2419143144918]) : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [2,0,2,0,1]) :=
  row_of_forall (discharge bank [1,1,1,1,1,14,14,14,0,14,14,48,48,0,1,1,1,1,1,14,37,14,14,14,14,14,14,14] (hard := [Floor43.e2419143202614,Floor43.e2419143144918]) (by decide +kernel) hard)

theorem f172 (hard : BadRow [Floor43.e2419143202618,Floor43.e2419143201754,Floor43.e2419143144922]) : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [2,0,2,1,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,14,14,14,0,14,14,0,14,0,1,1,1,1,1,14,44,14,14,14,14,44,14,14] (hard := [Floor43.e2419143202618,Floor43.e2419143201754,Floor43.e2419143144922]) (by decide +kernel) hard)

theorem f173 : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [2,1,0,0,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,14,14,14,14,14,14,14,14,14,1,1,1,1,1,14,14,14,14,14,14,14,14,14] (hard := []) (by decide +kernel) .nil)

theorem f174 : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [2,1,0,1,1]) :=
  row_of_forall (discharge bank [6,6,6,6,6,6,6,6,6,6,6,6,6,6,37,1,1,1,1,14,14,47,14,14,14,14,14,14] (hard := []) (by decide +kernel) .nil)

theorem f175 : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [2,1,0,2,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,14,14,14,14,14,14,14,14,14,1,1,1,1,1,14,14,14,14,14,14,14,14,14] (hard := []) (by decide +kernel) .nil)

theorem f176 (hard : BadRow [Floor43.e2393373399862,Floor43.e2393373341398]) : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [2,1,1,0,1]) :=
  row_of_forall (discharge bank [6,6,6,6,6,6,6,6,6,6,6,6,6,6,11,1,1,1,13,14,14,14,0,48,14,14,14,0] (hard := [Floor43.e2393373399862,Floor43.e2393373341398]) (by decide +kernel) hard)

theorem f177 (hard : BadRow [Floor43.e2393373399866]) : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [2,1,1,1,0]) :=
  row_of_forall (discharge bank [6,6,6,6,6,6,6,6,6,11,11,1,13,1,14,14,14,0] (hard := [Floor43.e2393373399866]) (by decide +kernel) hard)

theorem f178 : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [2,1,2,0,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,14,14,14,14,14,1,1,1,1,1,14,14,14,14,14] (hard := []) (by decide +kernel) .nil)

theorem f179 : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [2,2,0,0,1]) :=
  row_of_forall (discharge bank [1,1,1,1,1,36,36,14,36,14,14,36,48,36,1,1,1,1,1,36,36,14,36,14,14,36,14,36] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
