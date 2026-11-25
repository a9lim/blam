import Blc.SelfintResidual44.R4838381819718Block0
import Blc.SelfintResidual44.R4838381819718Block5

set_option Elab.async false
namespace Certgen.R4838381819718
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem allok (i : Nat) (h : i<143) : Packed.valid d P 143 i = true := by
 by_cases h72 : i<72
 · by_cases h24 : i<24
   · exact Certgen.FloorIndex.rangeOK_at ok0 (by omega) (by omega)
   · by_cases h48 : i<48
     · exact Certgen.FloorIndex.rangeOK_at ok24 (by omega) (by omega)
     · exact Certgen.FloorIndex.rangeOK_at ok48 (by omega) (by omega)
 · by_cases h96 : i<96
   · exact Certgen.FloorIndex.rangeOK_at ok72 (by omega) (by omega)
   · by_cases h120 : i<120
     · exact Certgen.FloorIndex.rangeOK_at ok96 (by omega) (by omega)
     · exact Certgen.FloorIndex.rangeOK_at ok120 (by omega) (by omega)
theorem excluded : ¬ IsSelfInterpreter e := by
  intro he
  have hp : replay [] e = some (model.term 0) := by rw [n0]; decide
  obtain ⟨n,h⟩ := clocks_replay (rawCount he) hp
  exact Packed.excludes d model 143 (by decide) allok (by decide) n h
#print axioms excluded
end Certgen.R4838381819718
