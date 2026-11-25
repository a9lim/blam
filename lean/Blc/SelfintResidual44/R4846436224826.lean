import Blc.SelfintResidual44.R4846436224826Block0
import Blc.SelfintResidual44.R4846436224826Block10
import Blc.SelfintResidual44.R4846436224826Block15
import Blc.SelfintResidual44.R4846436224826Block20
import Blc.SelfintResidual44.R4846436224826Block25
import Blc.SelfintResidual44.R4846436224826Block30
import Blc.SelfintResidual44.R4846436224826Block35
import Blc.SelfintResidual44.R4846436224826Block40
import Blc.SelfintResidual44.R4846436224826Block5

set_option Elab.async false
namespace Certgen.R4846436224826
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem allok (i : Nat) (h : i<1007) : SafePacked.valid d P 1007 i = true := by
 by_cases h504 : i<504
 · by_cases h240 : i<240
   · by_cases h120 : i<120
     · by_cases h48 : i<48
       · by_cases h24 : i<24
         · exact Certgen.FloorIndex.rangeOK_at ok0 (by omega) (by omega)
         · exact Certgen.FloorIndex.rangeOK_at ok24 (by omega) (by omega)
       · by_cases h72 : i<72
         · exact Certgen.FloorIndex.rangeOK_at ok48 (by omega) (by omega)
         · by_cases h96 : i<96
           · exact Certgen.FloorIndex.rangeOK_at ok72 (by omega) (by omega)
           · exact Certgen.FloorIndex.rangeOK_at ok96 (by omega) (by omega)
     · by_cases h168 : i<168
       · by_cases h144 : i<144
         · exact Certgen.FloorIndex.rangeOK_at ok120 (by omega) (by omega)
         · exact Certgen.FloorIndex.rangeOK_at ok144 (by omega) (by omega)
       · by_cases h192 : i<192
         · exact Certgen.FloorIndex.rangeOK_at ok168 (by omega) (by omega)
         · by_cases h216 : i<216
           · exact Certgen.FloorIndex.rangeOK_at ok192 (by omega) (by omega)
           · exact Certgen.FloorIndex.rangeOK_at ok216 (by omega) (by omega)
   · by_cases h360 : i<360
     · by_cases h288 : i<288
       · by_cases h264 : i<264
         · exact Certgen.FloorIndex.rangeOK_at ok240 (by omega) (by omega)
         · exact Certgen.FloorIndex.rangeOK_at ok264 (by omega) (by omega)
       · by_cases h312 : i<312
         · exact Certgen.FloorIndex.rangeOK_at ok288 (by omega) (by omega)
         · by_cases h336 : i<336
           · exact Certgen.FloorIndex.rangeOK_at ok312 (by omega) (by omega)
           · exact Certgen.FloorIndex.rangeOK_at ok336 (by omega) (by omega)
     · by_cases h432 : i<432
       · by_cases h384 : i<384
         · exact Certgen.FloorIndex.rangeOK_at ok360 (by omega) (by omega)
         · by_cases h408 : i<408
           · exact Certgen.FloorIndex.rangeOK_at ok384 (by omega) (by omega)
           · exact Certgen.FloorIndex.rangeOK_at ok408 (by omega) (by omega)
       · by_cases h456 : i<456
         · exact Certgen.FloorIndex.rangeOK_at ok432 (by omega) (by omega)
         · by_cases h480 : i<480
           · exact Certgen.FloorIndex.rangeOK_at ok456 (by omega) (by omega)
           · exact Certgen.FloorIndex.rangeOK_at ok480 (by omega) (by omega)
 · by_cases h744 : i<744
   · by_cases h624 : i<624
     · by_cases h552 : i<552
       · by_cases h528 : i<528
         · exact Certgen.FloorIndex.rangeOK_at ok504 (by omega) (by omega)
         · exact Certgen.FloorIndex.rangeOK_at ok528 (by omega) (by omega)
       · by_cases h576 : i<576
         · exact Certgen.FloorIndex.rangeOK_at ok552 (by omega) (by omega)
         · by_cases h600 : i<600
           · exact Certgen.FloorIndex.rangeOK_at ok576 (by omega) (by omega)
           · exact Certgen.FloorIndex.rangeOK_at ok600 (by omega) (by omega)
     · by_cases h672 : i<672
       · by_cases h648 : i<648
         · exact Certgen.FloorIndex.rangeOK_at ok624 (by omega) (by omega)
         · exact Certgen.FloorIndex.rangeOK_at ok648 (by omega) (by omega)
       · by_cases h696 : i<696
         · exact Certgen.FloorIndex.rangeOK_at ok672 (by omega) (by omega)
         · by_cases h720 : i<720
           · exact Certgen.FloorIndex.rangeOK_at ok696 (by omega) (by omega)
           · exact Certgen.FloorIndex.rangeOK_at ok720 (by omega) (by omega)
   · by_cases h864 : i<864
     · by_cases h792 : i<792
       · by_cases h768 : i<768
         · exact Certgen.FloorIndex.rangeOK_at ok744 (by omega) (by omega)
         · exact Certgen.FloorIndex.rangeOK_at ok768 (by omega) (by omega)
       · by_cases h816 : i<816
         · exact Certgen.FloorIndex.rangeOK_at ok792 (by omega) (by omega)
         · by_cases h840 : i<840
           · exact Certgen.FloorIndex.rangeOK_at ok816 (by omega) (by omega)
           · exact Certgen.FloorIndex.rangeOK_at ok840 (by omega) (by omega)
     · by_cases h936 : i<936
       · by_cases h888 : i<888
         · exact Certgen.FloorIndex.rangeOK_at ok864 (by omega) (by omega)
         · by_cases h912 : i<912
           · exact Certgen.FloorIndex.rangeOK_at ok888 (by omega) (by omega)
           · exact Certgen.FloorIndex.rangeOK_at ok912 (by omega) (by omega)
       · by_cases h960 : i<960
         · exact Certgen.FloorIndex.rangeOK_at ok936 (by omega) (by omega)
         · by_cases h984 : i<984
           · exact Certgen.FloorIndex.rangeOK_at ok960 (by omega) (by omega)
           · exact Certgen.FloorIndex.rangeOK_at ok984 (by omega) (by omega)
theorem excluded : ¬ IsSelfInterpreter e := by
  intro he
  have hp : replay [[.left,.left],[.left,.left],[.left,.left],[.left,.left,.left],[.left,.left,.left]] (call e (.lam (.lam (.var 0))) (.lam (.var 0)) (.var 0) []) = some (model.term 0) := by rw [n0]; decide
  obtain ⟨n,h⟩ := clocks_replay (inputCount (k := 2) he (by decide) (by decide)) hp
  have hj := Blc.Floor44.Safe.probe he (by decide) (tgt := (.var 0)) (k := 2) (by decide) hp
  exact SafePacked.excludes d model 1007 (by decide) allok (by decide) (by repeat constructor) hj n h
#print axioms excluded
end Certgen.R4846436224826
