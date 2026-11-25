import Blc.SelfintResidual44.R4817895530858Block0
import Blc.SelfintResidual44.R4817895530858Block10
import Blc.SelfintResidual44.R4817895530858Block15
import Blc.SelfintResidual44.R4817895530858Block5

set_option Elab.async false
namespace Certgen.R4817895530858
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem allok (i : Nat) (h : i<377) : Packed.valid d P 377 i = true := by
 by_cases h192 : i<192
 · by_cases h96 : i<96
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
       · exact Certgen.FloorIndex.rangeOK_at ok168 (by omega) (by omega)
 · by_cases h288 : i<288
   · by_cases h240 : i<240
     · by_cases h216 : i<216
       · exact Certgen.FloorIndex.rangeOK_at ok192 (by omega) (by omega)
       · exact Certgen.FloorIndex.rangeOK_at ok216 (by omega) (by omega)
     · by_cases h264 : i<264
       · exact Certgen.FloorIndex.rangeOK_at ok240 (by omega) (by omega)
       · exact Certgen.FloorIndex.rangeOK_at ok264 (by omega) (by omega)
   · by_cases h336 : i<336
     · by_cases h312 : i<312
       · exact Certgen.FloorIndex.rangeOK_at ok288 (by omega) (by omega)
       · exact Certgen.FloorIndex.rangeOK_at ok312 (by omega) (by omega)
     · by_cases h360 : i<360
       · exact Certgen.FloorIndex.rangeOK_at ok336 (by omega) (by omega)
       · exact Certgen.FloorIndex.rangeOK_at ok360 (by omega) (by omega)
theorem excluded : ¬ IsSelfInterpreter e := by
  intro he
  have hp : replay [] e = some (model.term 0) := by rw [n0]; decide
  obtain ⟨n,h⟩ := clocks_replay (rawCount he) hp
  exact Packed.excludes d model 377 (by decide) allok (by decide) n h
#print axioms excluded
end Certgen.R4817895530858
