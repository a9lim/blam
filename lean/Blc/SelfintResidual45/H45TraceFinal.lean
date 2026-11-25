import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45Literals
import Blc.SelfintResidual45.H45TracePath8

set_option Elab.async false
namespace Blc.H45.Trace
open Term SelfintLowerBound SelfintControl SelfintProbe SelfintSharp
set_option maxRecDepth 15000
set_option maxHeartbeats 2500000
def common : Term := (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.var 1)))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.var 1))))))) (.lam (.var 0)))
theorem exclusion : ¬ IsSelfInterpreter common := by
  intro he
  have hj := probeJoin (e := common) (c := churchFalse) (m := identity) (r := .var 0) (args := []) (u := n28) (v := .var 0) (ps := []) (qs := [[.left],[]]) (by decide) (by rfl) (by decide) he
  have hj := join_after_betas p0 hj
  have hj := join_after_betas p1 hj
  have hj := join_after_betas p2 hj
  have hj := join_after_betas p3 hj
  have hj := join_after_betas p4 hj
  have hj := join_after_betas p5 hj
  have hj := join_after_betas p6 hj
  have hj := join_after_betas p7 hj
  have hj := join_after_betas p8 hj
  have hj := join_after_betas p9 hj
  have hj := join_after_betas p10 hj
  have hj := join_after_betas p11 hj
  have hj := join_after_betas p12 hj
  have hj := join_after_betas p13 hj
  have hj := join_after_betas p14 hj
  have hj := join_after_betas p15 hj
  have hj := join_after_betas p16 hj
  have hj := join_after_betas p17 hj
  have hj := join_after_betas p18 hj
  have hj := join_after_betas p19 hj
  have hj := join_after_betas p20 hj
  have hj := join_after_betas p21 hj
  have hj := join_after_betas p22 hj
  have hj := join_after_betas p23 hj
  have hj := join_after_betas p24 hj
  have hj := join_after_betas p25 hj
  have hj := join_after_betas p26 hj
  have hj := join_after_betas p27 hj
  have hj := join_after_betas p28 hj
  have hj := join_after_betas p29 hj
  have hj := join_after_betas p30 hj
  have hj := join_after_betas p31 hj
  have hj := join_after_betas p32 hj
  have hj := join_after_betas p33 hj
  have hj := join_after_betas p34 hj
  have hj := join_after_betas p35 hj
  have hj := join_after_betas p36 hj
  have hj := join_after_betas p37 hj
  have hj := join_after_betas p38 hj
  have hj := join_after_betas p39 hj
  have hj := join_after_betas p40 hj
  have hj := join_after_betas p41 hj
  have hj := join_after_betas p42 hj
  have hj := join_after_betas p43 hj
  exact lamVar (b := n26) hj
theorem ex_e9570311402454 : ¬ IsSelfInterpreter e9570311402454 := fun he => exclusion (transfer (SelfintSharp.replay_sound (by decide : SelfintSharp.replay [[]] e9570311402454 = some common)) he)
theorem ex_e11219262979426 : ¬ IsSelfInterpreter e11219262979426 := fun he => exclusion (transfer (SelfintSharp.replay_sound (by decide : SelfintSharp.replay [[.left]] e11219262979426 = some common)) he)
end Blc.H45.Trace
