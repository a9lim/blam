import Blc.SelfintResidual44.R4779506667130Block0
import Blc.SelfintResidual44.R4779506667130Block10
import Blc.SelfintResidual44.R4779506667130Block15
import Blc.SelfintResidual44.R4779506667130Block20
import Blc.SelfintResidual44.R4779506667130Block25
import Blc.SelfintResidual44.R4779506667130Block30
import Blc.SelfintResidual44.R4779506667130Block5

set_option Elab.async false
namespace Certgen.R4779506667130
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem allok (i : Nat) (h : i<795) : Packed.valid d P 795 i = true := by
 by_cases h408 : i<408
 · by_cases h192 : i<192
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
         · by_cases h384 : i<384
           · exact Certgen.FloorIndex.rangeOK_at ok360 (by omega) (by omega)
           · exact Certgen.FloorIndex.rangeOK_at ok384 (by omega) (by omega)
 · by_cases h600 : i<600
   · by_cases h504 : i<504
     · by_cases h456 : i<456
       · by_cases h432 : i<432
         · exact Certgen.FloorIndex.rangeOK_at ok408 (by omega) (by omega)
         · exact Certgen.FloorIndex.rangeOK_at ok432 (by omega) (by omega)
       · by_cases h480 : i<480
         · exact Certgen.FloorIndex.rangeOK_at ok456 (by omega) (by omega)
         · exact Certgen.FloorIndex.rangeOK_at ok480 (by omega) (by omega)
     · by_cases h552 : i<552
       · by_cases h528 : i<528
         · exact Certgen.FloorIndex.rangeOK_at ok504 (by omega) (by omega)
         · exact Certgen.FloorIndex.rangeOK_at ok528 (by omega) (by omega)
       · by_cases h576 : i<576
         · exact Certgen.FloorIndex.rangeOK_at ok552 (by omega) (by omega)
         · exact Certgen.FloorIndex.rangeOK_at ok576 (by omega) (by omega)
   · by_cases h696 : i<696
     · by_cases h648 : i<648
       · by_cases h624 : i<624
         · exact Certgen.FloorIndex.rangeOK_at ok600 (by omega) (by omega)
         · exact Certgen.FloorIndex.rangeOK_at ok624 (by omega) (by omega)
       · by_cases h672 : i<672
         · exact Certgen.FloorIndex.rangeOK_at ok648 (by omega) (by omega)
         · exact Certgen.FloorIndex.rangeOK_at ok672 (by omega) (by omega)
     · by_cases h744 : i<744
       · by_cases h720 : i<720
         · exact Certgen.FloorIndex.rangeOK_at ok696 (by omega) (by omega)
         · exact Certgen.FloorIndex.rangeOK_at ok720 (by omega) (by omega)
       · by_cases h768 : i<768
         · exact Certgen.FloorIndex.rangeOK_at ok744 (by omega) (by omega)
         · by_cases h792 : i<792
           · exact Certgen.FloorIndex.rangeOK_at ok768 (by omega) (by omega)
           · exact Certgen.FloorIndex.rangeOK_at ok792 (by omega) (by omega)
theorem excluded : ¬ IsSelfInterpreter e := by
  intro he
  have hp : replay [[.left,.left,.left,.left,.left],[.left,.left,.left,.left,.left,.left],[.left,.left,.left,.left,.left,.left],[.left,.left,.left,.left,.left]] (call e (.lam (.lam (.var 0))) (.lam (.var 0)) (.var 0) [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))]) = some (model.term 0) := by rw [n0]; decide
  obtain ⟨n,h⟩ := clocks_replay (inputCount (k := 2) he (by decide) (by decide)) hp
  exact Packed.excludes d model 795 (by decide) allok (by decide) n h
#print axioms excluded
end Certgen.R4779506667130
