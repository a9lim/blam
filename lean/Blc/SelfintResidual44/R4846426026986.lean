import Blc.SelfintResidual44.R4846426026986Block0
import Blc.SelfintResidual44.R4846426026986Block5

set_option Elab.async false
namespace Certgen.R4846426026986
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem allok (i : Nat) (h : i<214) : Packed.valid d P 214 i = true := by
 by_cases h96 : i<96
 · by_cases h48 : i<48
   · by_cases h24 : i<24
     · exact Certgen.FloorIndex.rangeOK_at ok0 (by omega) (by omega)
     · exact Certgen.FloorIndex.rangeOK_at ok24 (by omega) (by omega)
   · by_cases h72 : i<72
     · exact Certgen.FloorIndex.rangeOK_at ok48 (by omega) (by omega)
     · exact Certgen.FloorIndex.rangeOK_at ok72 (by omega) (by omega)
 · by_cases h144 : i<144
   · by_cases h120 : i<120
     · exact Certgen.FloorIndex.rangeOK_at ok96 (by omega) (by omega)
     · exact Certgen.FloorIndex.rangeOK_at ok120 (by omega) (by omega)
   · by_cases h168 : i<168
     · exact Certgen.FloorIndex.rangeOK_at ok144 (by omega) (by omega)
     · by_cases h192 : i<192
       · exact Certgen.FloorIndex.rangeOK_at ok168 (by omega) (by omega)
       · exact Certgen.FloorIndex.rangeOK_at ok192 (by omega) (by omega)
theorem excluded : ¬ IsSelfInterpreter e := by
  intro he
  have hp : replay [[],[]] e = some (model.term 0) := by rw [n0]; decide
  obtain ⟨n,h⟩ := clocks_replay (rawCount he) hp
  exact Packed.excludes d model 214 (by decide) allok (by decide) n h
#print axioms excluded
end Certgen.R4846426026986
