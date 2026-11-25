import Blc.Selfint40Evidence.Parity
import Blc.Selfint40Evidence.R302887565882
import Blc.Selfint40Evidence.R302887593670
import Blc.Selfint40Evidence.R302887593798
import Blc.Selfint40Evidence.R302888259382
import Blc.Selfint40Evidence.R302888259386
import Blc.Selfint40Evidence.WeightedRows
import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402308513590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402308513590 : ¬ MinimalInterpreter v1402308513590 :=
  cost_cut false 2 (by decide)

private def v1402308512726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v1402308512726 : ¬ MinimalInterpreter v1402308512726 :=
  cost_cut false 2 (by decide)

private def v1402308491062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402308491062 : ¬ MinimalInterpreter v1402308491062 :=
  cost_cut false 2 (by decide)

private def v1402308490198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1))))))))
private theorem no_v1402308490198 : ¬ MinimalInterpreter v1402308490198 :=
  cost_cut false 2 (by decide)

private def v1402308484566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1))))))))
private theorem no_v1402308484566 : ¬ MinimalInterpreter v1402308484566 :=
  cost_cut false 2 (by decide)

private def v1402308316982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402308316982 : ¬ MinimalInterpreter v1402308316982 :=
  cost_cut false 2 (by decide)

private def v1402308316118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1402308316118 : ¬ MinimalInterpreter v1402308316118 :=
  cost_cut false 2 (by decide)

private def v1402308294454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1))))))))
private theorem no_v1402308294454 : ¬ MinimalInterpreter v1402308294454 :=
  cost_cut false 2 (by decide)

private def v1402308245302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v1402308245302 : ¬ MinimalInterpreter v1402308245302 :=
  cost_cut false 2 (by decide)

private def v1402308293590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))) (.var 1)))))))
private theorem no_v1402308293590 : ¬ MinimalInterpreter v1402308293590 :=
  cost_cut false 2 (by decide)

private def v1402308287958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 1)))))))
private theorem no_v1402308287958 : ¬ MinimalInterpreter v1402308287958 :=
  cost_cut false 2 (by decide)

private def v1402308244438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v1402308244438 : ¬ MinimalInterpreter v1402308244438 :=
  cost_cut false 2 (by decide)

private def v1402308238806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.var 1)))))))
private theorem no_v1402308238806 : ¬ MinimalInterpreter v1402308238806 :=
  cost_cut false 2 (by decide)

private def v1402308226518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v1402308226518 : ¬ MinimalInterpreter v1402308226518 :=
  cost_cut false 2 (by decide)

private def v1402313232182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402313232182 : ¬ MinimalInterpreter v1402313232182 :=
  cost_cut false 2 (by decide)

private def v1402313231318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v1402313231318 : ¬ MinimalInterpreter v1402313231318 :=
  cost_cut false 2 (by decide)

private def v1402313209654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402313209654 : ¬ MinimalInterpreter v1402313209654 :=
  cost_cut false 2 (by decide)

private def v1402313208790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1))))))))
private theorem no_v1402313208790 : ¬ MinimalInterpreter v1402313208790 :=
  cost_cut false 2 (by decide)

private def v1402313203158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1))))))))
private theorem no_v1402313203158 : ¬ MinimalInterpreter v1402313203158 :=
  cost_cut false 2 (by decide)

private def v1402313576246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402313576246 : ¬ MinimalInterpreter v1402313576246 :=
  cost_cut false 2 (by decide)

private def v1402313575382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v1402313575382 : ¬ MinimalInterpreter v1402313575382 :=
  cost_cut false 2 (by decide)

private def v1402312789814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402312789814 : ¬ MinimalInterpreter v1402312789814 :=
  cost_cut false 2 (by decide)

private def v1402312788950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1402312788950 : ¬ MinimalInterpreter v1402312788950 :=
  cost_cut false 2 (by decide)

private def v1402312618966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))) (.var 1))))))
private theorem no_v1402312618966 : ¬ MinimalInterpreter v1402312618966 :=
  cost_cut false 2 (by decide)

private def v1402312613334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 1))))))
private theorem no_v1402312613334 : ¬ MinimalInterpreter v1402312613334 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 1)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 1))) (.app (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 1)) (.var 0) (by decide) (by decide))))))

private def v1402313587910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 1))))))))))
private theorem no_v1402313587910 : ¬ MinimalInterpreter v1402313587910 :=
  chain_cut false 2 (by decide)

private def v1402313584454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 1)))))))))
private theorem no_v1402313584454 : ¬ MinimalInterpreter v1402313584454 :=
  chain_cut false 2 (by decide)

private def v1402313497798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v1402313497798 : ¬ MinimalInterpreter v1402313497798 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1))))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 1)))))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (so_dead (by decide) (.var 1))))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313494342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 1))))))))
private theorem no_v1402313494342 : ¬ MinimalInterpreter v1402313494342 :=
  chain_cut false 2 (by decide)

private def v1402313471814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1))))))))
private theorem no_v1402313471814 : ¬ MinimalInterpreter v1402313471814 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 1))))) (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (so_dead (by decide) (.var 1)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312801478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v1402312801478 : ¬ MinimalInterpreter v1402312801478 :=
  chain_cut false 2 (by decide)

private def v1402312798022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.var 0)) (.lam (.var 1))))))))
private theorem no_v1402312798022 : ¬ MinimalInterpreter v1402312798022 :=
  chain_cut false 2 (by decide)

private def v1402312642358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1402312642358 : ¬ MinimalInterpreter v1402312642358 :=
  chain_cut false 2 (by decide)

private def v1402312641494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1402312641494 : ¬ MinimalInterpreter v1402312641494 :=
  chain_cut false 2 (by decide)

private def v1402312711366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.lam (.var 1))))))))
private theorem no_v1402312711366 : ¬ MinimalInterpreter v1402312711366 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.lam (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312514758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.app (.var 0) (.lam (.var 1))))))))
private theorem no_v1402312514758 : ¬ MinimalInterpreter v1402312514758 :=
  chain_cut false 2 (by decide)

private def v1402312472374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v1402312472374 : ¬ MinimalInterpreter v1402312472374 :=
  chain_cut false 2 (by decide)

private def v1402312707910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))) (.lam (.var 1)))))))
private theorem no_v1402312707910 : ¬ MinimalInterpreter v1402312707910 :=
  chain_cut false 2 (by decide)

private def v1402312685382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.lam (.var 1)))))))
private theorem no_v1402312685382 : ¬ MinimalInterpreter v1402312685382 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 1)))) (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312511302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))) (.lam (.var 1)))))))
private theorem no_v1402312511302 : ¬ MinimalInterpreter v1402312511302 :=
  chain_cut false 2 (by decide)

private def v1402312488774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.lam (.var 1)))))))
private theorem no_v1402312488774 : ¬ MinimalInterpreter v1402312488774 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 1)))) (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312439622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)) (.lam (.var 1)))))))
private theorem no_v1402312439622 : ¬ MinimalInterpreter v1402312439622 :=
  chain_cut false 2 (by decide)

private def v1402312471510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v1402312471510 : ¬ MinimalInterpreter v1402312471510 :=
  chain_cut false 2 (by decide)

private def v1402312429014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v1402312429014 : ¬ MinimalInterpreter v1402312429014 :=
  chain_cut false 2 (by decide)

private def v1402332106550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402332106550 : ¬ MinimalInterpreter v1402332106550 :=
  cost_cut false 2 (by decide)

private def v1402332105686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v1402332105686 : ¬ MinimalInterpreter v1402332105686 :=
  cost_cut false 2 (by decide)

private def v1402332084022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402332084022 : ¬ MinimalInterpreter v1402332084022 :=
  cost_cut false 2 (by decide)

private def v1402332083158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1))))))))
private theorem no_v1402332083158 : ¬ MinimalInterpreter v1402332083158 :=
  cost_cut false 2 (by decide)

private def v1402332077526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1))))))))
private theorem no_v1402332077526 : ¬ MinimalInterpreter v1402332077526 :=
  cost_cut false 2 (by decide)

private def v1402332450614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402332450614 : ¬ MinimalInterpreter v1402332450614 :=
  cost_cut false 2 (by decide)

private def v1402332449750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v1402332449750 : ¬ MinimalInterpreter v1402332449750 :=
  cost_cut false 2 (by decide)

private def v1402332462278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 1))))))))))
private theorem no_v1402332462278 : ¬ MinimalInterpreter v1402332462278 :=
  chain_cut false 2 (by decide)

private def v1402332458822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 1)))))))))
private theorem no_v1402332458822 : ¬ MinimalInterpreter v1402332458822 :=
  chain_cut false 2 (by decide)

private def v1402332372166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v1402332372166 : ¬ MinimalInterpreter v1402332372166 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1))))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402332368710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 1))))))))
private theorem no_v1402332368710 : ¬ MinimalInterpreter v1402332368710 :=
  chain_cut false 2 (by decide)

private def v1402332346182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1))))))))
private theorem no_v1402332346182 : ¬ MinimalInterpreter v1402332346182 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402330091318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1402330091318 : ¬ MinimalInterpreter v1402330091318 :=
  chain_cut false 2 (by decide)

private def v1402330090454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1402330090454 : ¬ MinimalInterpreter v1402330090454 :=
  chain_cut false 2 (by decide)

private def v1402330009414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))) (.lam (.var 1))))))
private theorem no_v1402330009414 : ¬ MinimalInterpreter v1402330009414 :=
  chain_cut false 2 (by decide)

private def v1402329986886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (.var 1))))))
private theorem no_v1402329986886 : ¬ MinimalInterpreter v1402329986886 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (.var 1)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (.var 1)))) (.app (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (so_dead (by decide) (.var 1))) (.var 0) (by decide) (by decide)))))

private def v1402407959750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 1))))))))))
private theorem no_v1402407959750 : ¬ MinimalInterpreter v1402407959750 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402407956294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 1)))))))))
private theorem no_v1402407956294 : ¬ MinimalInterpreter v1402407956294 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402407869638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v1402407869638 : ¬ MinimalInterpreter v1402407869638 :=
  w_cut false 0 (by decide)

private def v1402407866182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 1))))))))
private theorem no_v1402407866182 : ¬ MinimalInterpreter v1402407866182 :=
  chain_cut true 9 (by decide)

private def v1402407843654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1))))))))
private theorem no_v1402407843654 : ¬ MinimalInterpreter v1402407843654 :=
  w_cut false 0 (by decide)

private def v1402399887158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1402399887158 : ¬ MinimalInterpreter v1402399887158 :=
  fun he => _root_.Certgen.R302888259382.excluded he.1

private def v1402399886294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1402399886294 : ¬ MinimalInterpreter v1402399886294 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)

private def v1402399215430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.lam (.var 1)))))
private theorem no_v1402399215430 : ¬ MinimalInterpreter v1402399215430 :=
  chain_cut false 12 (by decide)

private def v1402399192902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (.var 1)))))
private theorem no_v1402399192902 : ¬ MinimalInterpreter v1402399192902 :=
  w_cut false 0 (by decide)

theorem four105 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,1,2,0,1]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,1,2,0,1] = [v1402308513590,v1402308512726,v1402308491062,v1402308490198,v1402308484566,v1402308316982,v1402308316118,v1402308294454,v1402308245302,v1402308293590,v1402308287958,v1402308244438,v1402308238806,v1402308226518,v1402313232182,v1402313231318,v1402313209654,v1402313208790,v1402313203158,v1402313576246,v1402313575382,v1402312789814,v1402312788950,v1402312618966,v1402312613334,v1402313587910,v1402313584454,v1402313497798,v1402313494342,v1402313471814,v1402312801478,v1402312798022,v1402312642358,v1402312641494,v1402312711366,v1402312514758,v1402312472374,v1402312707910,v1402312685382,v1402312511302,v1402312488774,v1402312439622,v1402312471510,v1402312429014,v1402332106550,v1402332105686,v1402332084022,v1402332083158,v1402332077526,v1402332450614,v1402332449750,v1402332462278,v1402332458822,v1402332372166,v1402332368710,v1402332346182,v1402330091318,v1402330090454,v1402330009414,v1402329986886,v1402407959750,v1402407956294,v1402407869638,v1402407866182,v1402407843654,v1402399887158,v1402399886294,v1402399215430,v1402399192902] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308513590) (.cons (no_v1402308512726) (.cons (no_v1402308491062) (.cons (no_v1402308490198) (.cons (no_v1402308484566) (.cons (no_v1402308316982) (.cons (no_v1402308316118) (.cons (no_v1402308294454) (.cons (no_v1402308245302) (.cons (no_v1402308293590) (.cons (no_v1402308287958) (.cons (no_v1402308244438) (.cons (no_v1402308238806) (.cons (no_v1402308226518) (.cons (no_v1402313232182) (.cons (no_v1402313231318) (.cons (no_v1402313209654) (.cons (no_v1402313208790) (.cons (no_v1402313203158) (.cons (no_v1402313576246) (.cons (no_v1402313575382) (.cons (no_v1402312789814) (.cons (no_v1402312788950) (.cons (no_v1402312618966) (.cons (no_v1402312613334) (.cons (no_v1402313587910) (.cons (no_v1402313584454) (.cons (no_v1402313497798) (.cons (no_v1402313494342) (.cons (no_v1402313471814) (.cons (no_v1402312801478) (.cons (no_v1402312798022) (.cons (no_v1402312642358) (.cons (no_v1402312641494) (.cons (no_v1402312711366) (.cons (no_v1402312514758) (.cons (no_v1402312472374) (.cons (no_v1402312707910) (.cons (no_v1402312685382) (.cons (no_v1402312511302) (.cons (no_v1402312488774) (.cons (no_v1402312439622) (.cons (no_v1402312471510) (.cons (no_v1402312429014) (.cons (no_v1402332106550) (.cons (no_v1402332105686) (.cons (no_v1402332084022) (.cons (no_v1402332083158) (.cons (no_v1402332077526) (.cons (no_v1402332450614) (.cons (no_v1402332449750) (.cons (no_v1402332462278) (.cons (no_v1402332458822) (.cons (no_v1402332372166) (.cons (no_v1402332368710) (.cons (no_v1402332346182) (.cons (no_v1402330091318) (.cons (no_v1402330090454) (.cons (no_v1402330009414) (.cons (no_v1402329986886) (.cons (no_v1402407959750) (.cons (no_v1402407956294) (.cons (no_v1402407869638) (.cons (no_v1402407866182) (.cons (no_v1402407843654) (.cons (no_v1402399887158) (.cons (no_v1402399886294) (.cons (no_v1402399215430) (.cons (no_v1402399192902) .nil)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

private def v1402308513594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402308513594 : ¬ MinimalInterpreter v1402308513594 :=
  cost_cut false 2 (by decide)

private def v1402308512730 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v1402308512730 : ¬ MinimalInterpreter v1402308512730 :=
  cost_cut false 2 (by decide)

private def v1402308491066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402308491066 : ¬ MinimalInterpreter v1402308491066 :=
  cost_cut false 2 (by decide)

private def v1402308490202 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))))))
private theorem no_v1402308490202 : ¬ MinimalInterpreter v1402308490202 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308484570 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))))
private theorem no_v1402308484570 : ¬ MinimalInterpreter v1402308484570 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308316986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402308316986 : ¬ MinimalInterpreter v1402308316986 :=
  cost_cut false 2 (by decide)

private def v1402308316122 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1402308316122 : ¬ MinimalInterpreter v1402308316122 :=
  cost_cut false 2 (by decide)

private def v1402308294458 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 1) (.var 0))))))))
private theorem no_v1402308294458 : ¬ MinimalInterpreter v1402308294458 :=
  cost_cut false 2 (by decide)

private def v1402308245306 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v1402308245306 : ¬ MinimalInterpreter v1402308245306 :=
  cost_cut false 2 (by decide)

private def v1402308293594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))) (.var 0)))))))
private theorem no_v1402308293594 : ¬ MinimalInterpreter v1402308293594 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308287962 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))) (.var 0)))))))
private theorem no_v1402308287962 : ¬ MinimalInterpreter v1402308287962 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308244442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v1402308244442 : ¬ MinimalInterpreter v1402308244442 :=
  cost_cut false 2 (by decide)

private def v1402308238810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 1)) (.var 0)))))))
private theorem no_v1402308238810 : ¬ MinimalInterpreter v1402308238810 :=
  cost_cut false 2 (by decide)

private def v1402308226522 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v1402308226522 : ¬ MinimalInterpreter v1402308226522 :=
  cost_cut false 2 (by decide)

private def v1402313232186 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402313232186 : ¬ MinimalInterpreter v1402313232186 :=
  cost_cut false 2 (by decide)

private def v1402313231322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v1402313231322 : ¬ MinimalInterpreter v1402313231322 :=
  cost_cut false 2 (by decide)

private def v1402313209658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402313209658 : ¬ MinimalInterpreter v1402313209658 :=
  cost_cut false 2 (by decide)

private def v1402313208794 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))))))
private theorem no_v1402313208794 : ¬ MinimalInterpreter v1402313208794 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402313203162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))))
private theorem no_v1402313203162 : ¬ MinimalInterpreter v1402313203162 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402313576250 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402313576250 : ¬ MinimalInterpreter v1402313576250 :=
  cost_cut false 2 (by decide)

private def v1402313575386 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v1402313575386 : ¬ MinimalInterpreter v1402313575386 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.app (.var 0) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)))) (.var 0) (by decide) (by decide))))))

private def v1402312789818 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402312789818 : ¬ MinimalInterpreter v1402312789818 :=
  cost_cut false 2 (by decide)

private def v1402312788954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1402312788954 : ¬ MinimalInterpreter v1402312788954 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.app (.var 0) (.var 1)) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402313584410 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.lam (.var 1))) (.var 0))))))))
private theorem no_v1402313584410 : ¬ MinimalInterpreter v1402313584410 :=
  chain_cut false 2 (by decide)

private def v1402313494298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.lam (.var 1)))) (.var 0)))))))
private theorem no_v1402313494298 : ¬ MinimalInterpreter v1402313494298 :=
  chain_cut false 2 (by decide)

private def v1402313471770 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0)))))))
private theorem no_v1402313471770 : ¬ MinimalInterpreter v1402313471770 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))) (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1))) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312797978 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.lam (.var 1))) (.var 0)))))))
private theorem no_v1402312797978 : ¬ MinimalInterpreter v1402312797978 :=
  chain_cut false 2 (by decide)

private def v1402312642362 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1402312642362 : ¬ MinimalInterpreter v1402312642362 :=
  chain_cut false 2 (by decide)

private def v1402312641498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1402312641498 : ¬ MinimalInterpreter v1402312641498 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 0)))) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312472378 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v1402312472378 : ¬ MinimalInterpreter v1402312472378 :=
  chain_cut false 2 (by decide)

private def v1402312707866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 1))))) (.var 0))))))
private theorem no_v1402312707866 : ¬ MinimalInterpreter v1402312707866 :=
  chain_cut false 2 (by decide)

private def v1402312685338 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))) (.var 0))))))
private theorem no_v1402312685338 : ¬ MinimalInterpreter v1402312685338 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.app (.var 1) (.lam (.var 1)))) (.var 0))) (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1)))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312511258 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 1)))) (.var 0))))))
private theorem no_v1402312511258 : ¬ MinimalInterpreter v1402312511258 :=
  chain_cut false 2 (by decide)

private def v1402312471514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v1402312471514 : ¬ MinimalInterpreter v1402312471514 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 1)) (.var 0))) (.app (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312488730 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 1))) (.var 0))))))
private theorem no_v1402312488730 : ¬ MinimalInterpreter v1402312488730 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 1))) (.var 0))) (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (so_dead (by decide) (.var 1))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312439578 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 1))) (.var 0))))))
private theorem no_v1402312439578 : ¬ MinimalInterpreter v1402312439578 :=
  chain_cut false 2 (by decide)

private def v1402312429018 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v1402312429018 : ¬ MinimalInterpreter v1402312429018 :=
  chain_cut false 2 (by decide)

private def v1402332106554 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402332106554 : ¬ MinimalInterpreter v1402332106554 :=
  cost_cut false 2 (by decide)

private def v1402332105690 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v1402332105690 : ¬ MinimalInterpreter v1402332105690 :=
  cost_cut false 2 (by decide)

private def v1402332084026 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402332084026 : ¬ MinimalInterpreter v1402332084026 :=
  cost_cut false 2 (by decide)

private def v1402332083162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))))))
private theorem no_v1402332083162 : ¬ MinimalInterpreter v1402332083162 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402332077530 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))))
private theorem no_v1402332077530 : ¬ MinimalInterpreter v1402332077530 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402332450618 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402332450618 : ¬ MinimalInterpreter v1402332450618 :=
  cost_cut false 2 (by decide)

private def v1402332449754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v1402332449754 : ¬ MinimalInterpreter v1402332449754 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))

private def v1402332458778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 1))) (.var 0))))))))
private theorem no_v1402332458778 : ¬ MinimalInterpreter v1402332458778 :=
  chain_cut false 2 (by decide)

private def v1402332368666 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 1)))) (.var 0)))))))
private theorem no_v1402332368666 : ¬ MinimalInterpreter v1402332368666 :=
  chain_cut false 2 (by decide)

private def v1402332346138 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0)))))))
private theorem no_v1402332346138 : ¬ MinimalInterpreter v1402332346138 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402330091322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1402330091322 : ¬ MinimalInterpreter v1402330091322 :=
  chain_cut false 2 (by decide)

private def v1402330090458 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1402330090458 : ¬ MinimalInterpreter v1402330090458 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402330009370 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))) (.var 0)))))
private theorem no_v1402330009370 : ¬ MinimalInterpreter v1402330009370 :=
  chain_cut false 2 (by decide)

private def v1402329986842 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))) (.var 0)))))
private theorem no_v1402329986842 : ¬ MinimalInterpreter v1402329986842 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))) (.var 0))) (.app (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0)) (.var 0) (by decide) (by decide)))))

private def v1402407956250 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 1))) (.var 0))))))))
private theorem no_v1402407956250 : ¬ MinimalInterpreter v1402407956250 :=
  chain_cut false 7 (by decide)

private def v1402407866138 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 1)))) (.var 0)))))))
private theorem no_v1402407866138 : ¬ MinimalInterpreter v1402407866138 :=
  chain_cut false 8 (by decide)

private def v1402407843610 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0)))))))
private theorem no_v1402407843610 : ¬ MinimalInterpreter v1402407843610 :=
  w_cut false 0 (by decide)

private def v1402399887162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1402399887162 : ¬ MinimalInterpreter v1402399887162 :=
  fun he => _root_.Certgen.R302888259386.excluded he.1

private def v1402399886298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1402399886298 : ¬ MinimalInterpreter v1402399886298 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402399215386 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1))))))) (.var 0))))
private theorem no_v1402399215386 : ¬ MinimalInterpreter v1402399215386 :=
  chain_cut false 12 (by decide)

private def v1402399192858 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))) (.var 0))))
private theorem no_v1402399192858 : ¬ MinimalInterpreter v1402399192858 :=
  w_cut false 0 (by decide)

theorem four106 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,1,2,1,0]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,1,2,1,0] = [v1402308513594,v1402308512730,v1402308491066,v1402308490202,v1402308484570,v1402308316986,v1402308316122,v1402308294458,v1402308245306,v1402308293594,v1402308287962,v1402308244442,v1402308238810,v1402308226522,v1402313232186,v1402313231322,v1402313209658,v1402313208794,v1402313203162,v1402313576250,v1402313575386,v1402312789818,v1402312788954,v1402313584410,v1402313494298,v1402313471770,v1402312797978,v1402312642362,v1402312641498,v1402312472378,v1402312707866,v1402312685338,v1402312511258,v1402312471514,v1402312488730,v1402312439578,v1402312429018,v1402332106554,v1402332105690,v1402332084026,v1402332083162,v1402332077530,v1402332450618,v1402332449754,v1402332458778,v1402332368666,v1402332346138,v1402330091322,v1402330090458,v1402330009370,v1402329986842,v1402407956250,v1402407866138,v1402407843610,v1402399887162,v1402399886298,v1402399215386,v1402399192858] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308513594) (.cons (no_v1402308512730) (.cons (no_v1402308491066) (.cons (no_v1402308490202) (.cons (no_v1402308484570) (.cons (no_v1402308316986) (.cons (no_v1402308316122) (.cons (no_v1402308294458) (.cons (no_v1402308245306) (.cons (no_v1402308293594) (.cons (no_v1402308287962) (.cons (no_v1402308244442) (.cons (no_v1402308238810) (.cons (no_v1402308226522) (.cons (no_v1402313232186) (.cons (no_v1402313231322) (.cons (no_v1402313209658) (.cons (no_v1402313208794) (.cons (no_v1402313203162) (.cons (no_v1402313576250) (.cons (no_v1402313575386) (.cons (no_v1402312789818) (.cons (no_v1402312788954) (.cons (no_v1402313584410) (.cons (no_v1402313494298) (.cons (no_v1402313471770) (.cons (no_v1402312797978) (.cons (no_v1402312642362) (.cons (no_v1402312641498) (.cons (no_v1402312472378) (.cons (no_v1402312707866) (.cons (no_v1402312685338) (.cons (no_v1402312511258) (.cons (no_v1402312471514) (.cons (no_v1402312488730) (.cons (no_v1402312439578) (.cons (no_v1402312429018) (.cons (no_v1402332106554) (.cons (no_v1402332105690) (.cons (no_v1402332084026) (.cons (no_v1402332083162) (.cons (no_v1402332077530) (.cons (no_v1402332450618) (.cons (no_v1402332449754) (.cons (no_v1402332458778) (.cons (no_v1402332368666) (.cons (no_v1402332346138) (.cons (no_v1402330091322) (.cons (no_v1402330090458) (.cons (no_v1402330009370) (.cons (no_v1402329986842) (.cons (no_v1402407956250) (.cons (no_v1402407866138) (.cons (no_v1402407843610) (.cons (no_v1402399887162) (.cons (no_v1402399886298) (.cons (no_v1402399215386) (.cons (no_v1402399192858) .nil))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

private def v1402308513690 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 3) (.app (.var 0) (.var 0))))))))))
private theorem no_v1402308513690 : ¬ MinimalInterpreter v1402308513690 :=
  chain_cut false 2 (by decide)

private def v1402308512746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 3) (.var 0)) (.var 0)))))))))
private theorem no_v1402308512746 : ¬ MinimalInterpreter v1402308512746 :=
  chain_cut false 2 (by decide)

private def v1402308491162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402308491162 : ¬ MinimalInterpreter v1402308491162 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308490218 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 3) (.var 0))) (.var 0))))))))
private theorem no_v1402308490218 : ¬ MinimalInterpreter v1402308490218 :=
  chain_cut false 2 (by decide)

private def v1402308484586 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0))))))))
private theorem no_v1402308484586 : ¬ MinimalInterpreter v1402308484586 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308317082 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 3) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402308317082 : ¬ MinimalInterpreter v1402308317082 :=
  chain_cut false 2 (by decide)

private def v1402308316138 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 3) (.var 0)) (.var 0))))))))
private theorem no_v1402308316138 : ¬ MinimalInterpreter v1402308316138 :=
  chain_cut false 2 (by decide)

private def v1402308294554 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 0))))))))
private theorem no_v1402308294554 : ¬ MinimalInterpreter v1402308294554 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308245402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))))))))
private theorem no_v1402308245402 : ¬ MinimalInterpreter v1402308245402 :=
  chain_cut false 2 (by decide)

private def v1402308293610 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 3) (.var 0)))) (.var 0)))))))
private theorem no_v1402308293610 : ¬ MinimalInterpreter v1402308293610 :=
  chain_cut false 2 (by decide)

private def v1402308287978 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 0))) (.var 0)))))))
private theorem no_v1402308287978 : ¬ MinimalInterpreter v1402308287978 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 0))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))) (.app (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 0))) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308244458 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 3) (.var 0))) (.var 0)))))))
private theorem no_v1402308244458 : ¬ MinimalInterpreter v1402308244458 :=
  chain_cut false 2 (by decide)

private def v1402308238826 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0)) (.var 0)))))))
private theorem no_v1402308238826 : ¬ MinimalInterpreter v1402308238826 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.app (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308226538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 3)) (.var 0)) (.var 0)))))))
private theorem no_v1402308226538 : ¬ MinimalInterpreter v1402308226538 :=
  chain_cut false 2 (by decide)

private def v1402313232282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 3) (.app (.var 0) (.var 0))))))))))
private theorem no_v1402313232282 : ¬ MinimalInterpreter v1402313232282 :=
  chain_cut false 2 (by decide)

private def v1402313231338 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 3) (.var 0)) (.var 0)))))))))
private theorem no_v1402313231338 : ¬ MinimalInterpreter v1402313231338 :=
  chain_cut false 2 (by decide)

private def v1402313209754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402313209754 : ¬ MinimalInterpreter v1402313209754 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1402313208810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 3) (.var 0))) (.var 0))))))))
private theorem no_v1402313208810 : ¬ MinimalInterpreter v1402313208810 :=
  chain_cut false 2 (by decide)

private def v1402313203178 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0))))))))
private theorem no_v1402313203178 : ¬ MinimalInterpreter v1402313203178 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1402312618986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 3) (.var 0))))) (.var 0))))))
private theorem no_v1402312618986 : ¬ MinimalInterpreter v1402312618986 :=
  chain_cut false 2 (by decide)

private def v1402312613354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 3)) (.var 0)))) (.var 0))))))
private theorem no_v1402312613354 : ¬ MinimalInterpreter v1402312613354 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 3)) (.var 0)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 0))) (.app (.app (.var 0) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 0)) (.var 1) (by decide) (by decide))))))

private def v1402313492378 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 0))))))))
private theorem no_v1402313492378 : ¬ MinimalInterpreter v1402313492378 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.app (.var 0) (.var 0)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402313470442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 0)))))))
private theorem no_v1402313470442 : ¬ MinimalInterpreter v1402313470442 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.var 0))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402312705946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.app (.var 0) (.var 0)))))))
private theorem no_v1402312705946 : ¬ MinimalInterpreter v1402312705946 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (.var 0))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402312509338 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 3))) (.app (.var 0) (.var 0)))))))
private theorem no_v1402312509338 : ¬ MinimalInterpreter v1402312509338 :=
  chain_cut false 2 (by decide)

private def v1402312684010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 0))) (.var 0))))))
private theorem no_v1402312684010 : ¬ MinimalInterpreter v1402312684010 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 0))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))) (.app (.app (.var 0) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402312487402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 0)) (.var 0))))))
private theorem no_v1402312487402 : ¬ MinimalInterpreter v1402312487402 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.app (.app (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.var 0)) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402312438250 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 3))) (.var 0)) (.var 0))))))
private theorem no_v1402312438250 : ¬ MinimalInterpreter v1402312438250 :=
  chain_cut false 2 (by decide)

private def v1402332366746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 0))))))))
private theorem no_v1402332366746 : ¬ MinimalInterpreter v1402332366746 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.app (.var 0) (.var 0))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402332344810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 0)))))))
private theorem no_v1402332344810 : ¬ MinimalInterpreter v1402332344810 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402329985514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))) (.var 0)))))
private theorem no_v1402329985514 : ¬ MinimalInterpreter v1402329985514 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 0))) (.app (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (.var 0)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402407604122 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.app (.var 0) (.var 0))))))))))
private theorem no_v1402407604122 : ¬ MinimalInterpreter v1402407604122 :=
  chain_cut false 4 (by decide)

private def v1402407603178 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 0)) (.var 0)))))))))
private theorem no_v1402407603178 : ¬ MinimalInterpreter v1402407603178 :=
  chain_cut false 4 (by decide)

private def v1402407581594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402407581594 : ¬ MinimalInterpreter v1402407581594 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1402407580650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 0))) (.var 0))))))))
private theorem no_v1402407580650 : ¬ MinimalInterpreter v1402407580650 :=
  chain_cut false 4 (by decide)

private def v1402407575018 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0))))))))
private theorem no_v1402407575018 : ¬ MinimalInterpreter v1402407575018 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1402407864218 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 0))))))))
private theorem no_v1402407864218 : ¬ MinimalInterpreter v1402407864218 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.app (.var 0) (.var 0))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))

private def v1402407842282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 0)))))))
private theorem no_v1402407842282 : ¬ MinimalInterpreter v1402407842282 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))

private def v1402399126506 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 0))))))) (.var 0))))
private theorem no_v1402399126506 : ¬ MinimalInterpreter v1402399126506 :=
  chain_cut false 7 (by decide)

private def v1402399120874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 0)))))) (.var 0))))
private theorem no_v1402399120874 : ¬ MinimalInterpreter v1402399120874 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 0)))))) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))) (.var 0)))))

private def v1402399191530 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))) (.var 0))))
private theorem no_v1402399191530 : ¬ MinimalInterpreter v1402399191530 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.app (.var 0) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))) (.var 0)))))

theorem four107 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,1,3,0,0]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,1,3,0,0] = [v1402308513690,v1402308512746,v1402308491162,v1402308490218,v1402308484586,v1402308317082,v1402308316138,v1402308294554,v1402308245402,v1402308293610,v1402308287978,v1402308244458,v1402308238826,v1402308226538,v1402313232282,v1402313231338,v1402313209754,v1402313208810,v1402313203178,v1402312618986,v1402312613354,v1402313492378,v1402313470442,v1402312705946,v1402312509338,v1402312684010,v1402312487402,v1402312438250,v1402332366746,v1402332344810,v1402329985514,v1402407604122,v1402407603178,v1402407581594,v1402407580650,v1402407575018,v1402407864218,v1402407842282,v1402399126506,v1402399120874,v1402399191530] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308513690) (.cons (no_v1402308512746) (.cons (no_v1402308491162) (.cons (no_v1402308490218) (.cons (no_v1402308484586) (.cons (no_v1402308317082) (.cons (no_v1402308316138) (.cons (no_v1402308294554) (.cons (no_v1402308245402) (.cons (no_v1402308293610) (.cons (no_v1402308287978) (.cons (no_v1402308244458) (.cons (no_v1402308238826) (.cons (no_v1402308226538) (.cons (no_v1402313232282) (.cons (no_v1402313231338) (.cons (no_v1402313209754) (.cons (no_v1402313208810) (.cons (no_v1402313203178) (.cons (no_v1402312618986) (.cons (no_v1402312613354) (.cons (no_v1402313492378) (.cons (no_v1402313470442) (.cons (no_v1402312705946) (.cons (no_v1402312509338) (.cons (no_v1402312684010) (.cons (no_v1402312487402) (.cons (no_v1402312438250) (.cons (no_v1402332366746) (.cons (no_v1402332344810) (.cons (no_v1402329985514) (.cons (no_v1402407604122) (.cons (no_v1402407603178) (.cons (no_v1402407581594) (.cons (no_v1402407580650) (.cons (no_v1402407575018) (.cons (no_v1402407864218) (.cons (no_v1402407842282) (.cons (no_v1402399126506) (.cons (no_v1402399120874) (.cons (no_v1402399191530) .nil)))))))))))))))))))))))))))))))))))))))))

private def v1402313611662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.var 2))))))))))
private theorem no_v1402313611662 : ¬ MinimalInterpreter v1402313611662 :=
  chain_cut false 2 (by decide)

private def v1402313610894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))))))
private theorem no_v1402313610894 : ¬ MinimalInterpreter v1402313610894 :=
  chain_cut false 2 (by decide)

private def v1402313501070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v1402313501070 : ¬ MinimalInterpreter v1402313501070 :=
  chain_cut false 2 (by decide)

private def v1402313500302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.var 2))))))))
private theorem no_v1402313500302 : ¬ MinimalInterpreter v1402313500302 :=
  chain_cut false 2 (by decide)

private def v1402313472654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.lam (.var 2))))))))
private theorem no_v1402313472654 : ¬ MinimalInterpreter v1402313472654 :=
  chain_cut false 2 (by decide)

private def v1402312825230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v1402312825230 : ¬ MinimalInterpreter v1402312825230 :=
  chain_cut false 2 (by decide)

private def v1402312824462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))))
private theorem no_v1402312824462 : ¬ MinimalInterpreter v1402312824462 :=
  chain_cut false 2 (by decide)

private def v1402312648302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 0) (.app (.var 0) (.var 2))))))))
private theorem no_v1402312648302 : ¬ MinimalInterpreter v1402312648302 :=
  chain_cut false 2 (by decide)

private def v1402312648110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 2)))))))
private theorem no_v1402312648110 : ¬ MinimalInterpreter v1402312648110 :=
  chain_cut false 2 (by decide)

private def v1402312714638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 0) (.lam (.var 2))))))))
private theorem no_v1402312714638 : ¬ MinimalInterpreter v1402312714638 :=
  chain_cut false 2 (by decide)

private def v1402312518030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 0) (.lam (.var 2))))))))
private theorem no_v1402312518030 : ¬ MinimalInterpreter v1402312518030 :=
  chain_cut false 2 (by decide)

private def v1402312473198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 0)) (.app (.var 0) (.var 2)))))))
private theorem no_v1402312473198 : ¬ MinimalInterpreter v1402312473198 :=
  chain_cut false 2 (by decide)

private def v1402312713870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0)))) (.lam (.var 2)))))))
private theorem no_v1402312713870 : ¬ MinimalInterpreter v1402312713870 :=
  chain_cut false 2 (by decide)

private def v1402312686222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 0))) (.lam (.var 2)))))))
private theorem no_v1402312686222 : ¬ MinimalInterpreter v1402312686222 :=
  chain_cut false 2 (by decide)

private def v1402312517262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0))) (.lam (.var 2)))))))
private theorem no_v1402312517262 : ¬ MinimalInterpreter v1402312517262 :=
  chain_cut false 2 (by decide)

private def v1402312489614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0)) (.lam (.var 2)))))))
private theorem no_v1402312489614 : ¬ MinimalInterpreter v1402312489614 :=
  chain_cut false 2 (by decide)

private def v1402312440462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0)) (.lam (.var 2)))))))
private theorem no_v1402312440462 : ¬ MinimalInterpreter v1402312440462 :=
  chain_cut false 2 (by decide)

private def v1402312473006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 0) (.var 0))) (.var 2))))))
private theorem no_v1402312473006 : ¬ MinimalInterpreter v1402312473006 :=
  chain_cut false 2 (by decide)

private def v1402312429230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 0)) (.var 0)) (.var 2))))))
private theorem no_v1402312429230 : ¬ MinimalInterpreter v1402312429230 :=
  chain_cut false 2 (by decide)

private def v1402332486030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.var 2))))))))))
private theorem no_v1402332486030 : ¬ MinimalInterpreter v1402332486030 :=
  chain_cut false 2 (by decide)

private def v1402332485262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))))))
private theorem no_v1402332485262 : ¬ MinimalInterpreter v1402332485262 :=
  chain_cut false 2 (by decide)

private def v1402332375438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v1402332375438 : ¬ MinimalInterpreter v1402332375438 :=
  chain_cut false 2 (by decide)

private def v1402332374670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.var 2))))))))
private theorem no_v1402332374670 : ¬ MinimalInterpreter v1402332374670 :=
  chain_cut false 2 (by decide)

private def v1402332347022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.lam (.var 2))))))))
private theorem no_v1402332347022 : ¬ MinimalInterpreter v1402332347022 :=
  chain_cut false 2 (by decide)

private def v1402407983502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.var 2))))))))))
private theorem no_v1402407983502 : ¬ MinimalInterpreter v1402407983502 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407982734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))))))
private theorem no_v1402407982734 : ¬ MinimalInterpreter v1402407982734 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407872910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v1402407872910 : ¬ MinimalInterpreter v1402407872910 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407872142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.var 2))))))))
private theorem no_v1402407872142 : ¬ MinimalInterpreter v1402407872142 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407844494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.lam (.var 2))))))))
private theorem no_v1402407844494 : ¬ MinimalInterpreter v1402407844494 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem four108 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,2,0,0,2]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,2,0,0,2] = [v1402313611662,v1402313610894,v1402313501070,v1402313500302,v1402313472654,v1402312825230,v1402312824462,v1402312648302,v1402312648110,v1402312714638,v1402312518030,v1402312473198,v1402312713870,v1402312686222,v1402312517262,v1402312489614,v1402312440462,v1402312473006,v1402312429230,v1402332486030,v1402332485262,v1402332375438,v1402332374670,v1402332347022,v1402407983502,v1402407982734,v1402407872910,v1402407872142,v1402407844494] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313611662) (.cons (no_v1402313610894) (.cons (no_v1402313501070) (.cons (no_v1402313500302) (.cons (no_v1402313472654) (.cons (no_v1402312825230) (.cons (no_v1402312824462) (.cons (no_v1402312648302) (.cons (no_v1402312648110) (.cons (no_v1402312714638) (.cons (no_v1402312518030) (.cons (no_v1402312473198) (.cons (no_v1402312713870) (.cons (no_v1402312686222) (.cons (no_v1402312517262) (.cons (no_v1402312489614) (.cons (no_v1402312440462) (.cons (no_v1402312473006) (.cons (no_v1402312429230) (.cons (no_v1402332486030) (.cons (no_v1402332485262) (.cons (no_v1402332375438) (.cons (no_v1402332374670) (.cons (no_v1402332347022) (.cons (no_v1402407983502) (.cons (no_v1402407982734) (.cons (no_v1402407872910) (.cons (no_v1402407872142) (.cons (no_v1402407844494) .nil)))))))))))))))))))))))))))))

private def v1402308519542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1))))))))))
private theorem no_v1402308519542 : ¬ MinimalInterpreter v1402308519542 :=
  cost_cut false 2 (by decide)

private def v1402308519350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1)))))))))
private theorem no_v1402308519350 : ¬ MinimalInterpreter v1402308519350 :=
  cost_cut false 2 (by decide)

private def v1402308491894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1)))))))))
private theorem no_v1402308491894 : ¬ MinimalInterpreter v1402308491894 :=
  cost_cut false 2 (by decide)

private def v1402308491702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1))))))))
private theorem no_v1402308491702 : ¬ MinimalInterpreter v1402308491702 :=
  cost_cut false 2 (by decide)

private def v1402308484790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1))))))))
private theorem no_v1402308484790 : ¬ MinimalInterpreter v1402308484790 :=
  cost_cut false 2 (by decide)

private def v1402308322934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 1)))))))))
private theorem no_v1402308322934 : ¬ MinimalInterpreter v1402308322934 :=
  cost_cut false 2 (by decide)

private def v1402308322742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 1)) (.var 1))))))))
private theorem no_v1402308322742 : ¬ MinimalInterpreter v1402308322742 :=
  cost_cut false 2 (by decide)

private def v1402308295286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 1) (.var 1))))))))
private theorem no_v1402308295286 : ¬ MinimalInterpreter v1402308295286 :=
  cost_cut false 2 (by decide)

private def v1402308246134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 1) (.var 1))))))))
private theorem no_v1402308246134 : ¬ MinimalInterpreter v1402308246134 :=
  cost_cut false 2 (by decide)

private def v1402308295094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))) (.var 1)))))))
private theorem no_v1402308295094 : ¬ MinimalInterpreter v1402308295094 :=
  cost_cut false 2 (by decide)

private def v1402308288182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))) (.var 1)))))))
private theorem no_v1402308288182 : ¬ MinimalInterpreter v1402308288182 :=
  cost_cut false 2 (by decide)

private def v1402308245942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))) (.var 1)))))))
private theorem no_v1402308245942 : ¬ MinimalInterpreter v1402308245942 :=
  cost_cut false 2 (by decide)

private def v1402308239030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)) (.var 1)))))))
private theorem no_v1402308239030 : ¬ MinimalInterpreter v1402308239030 :=
  cost_cut false 2 (by decide)

private def v1402308226742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)) (.var 1)))))))
private theorem no_v1402308226742 : ¬ MinimalInterpreter v1402308226742 :=
  cost_cut false 2 (by decide)

private def v1402313238134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1))))))))))
private theorem no_v1402313238134 : ¬ MinimalInterpreter v1402313238134 :=
  cost_cut false 2 (by decide)

private def v1402313237942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1)))))))))
private theorem no_v1402313237942 : ¬ MinimalInterpreter v1402313237942 :=
  cost_cut false 2 (by decide)

private def v1402313210486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1)))))))))
private theorem no_v1402313210486 : ¬ MinimalInterpreter v1402313210486 :=
  cost_cut false 2 (by decide)

private def v1402313210294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1))))))))
private theorem no_v1402313210294 : ¬ MinimalInterpreter v1402313210294 :=
  cost_cut false 2 (by decide)

private def v1402313203382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1))))))))
private theorem no_v1402313203382 : ¬ MinimalInterpreter v1402313203382 :=
  cost_cut false 2 (by decide)

private def v1402312620470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))) (.var 1))))))
private theorem no_v1402312620470 : ¬ MinimalInterpreter v1402312620470 :=
  cost_cut false 2 (by decide)

private def v1402312613558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))) (.var 1))))))
private theorem no_v1402312613558 : ¬ MinimalInterpreter v1402312613558 :=
  cost_cut false 2 (by decide)

private def v1402313611718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 1))))))))))
private theorem no_v1402313611718 : ¬ MinimalInterpreter v1402313611718 :=
  chain_cut false 2 (by decide)

private def v1402313610950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))))))))
private theorem no_v1402313610950 : ¬ MinimalInterpreter v1402313610950 :=
  chain_cut false 2 (by decide)

private def v1402313610806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.lam (.var 1))) (.var 1))))))))
private theorem no_v1402313610806 : ¬ MinimalInterpreter v1402313610806 :=
  chain_cut false 2 (by decide)

private def v1402313501126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v1402313501126 : ¬ MinimalInterpreter v1402313501126 :=
  chain_cut false 2 (by decide)

private def v1402313500358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 1))))))))
private theorem no_v1402313500358 : ¬ MinimalInterpreter v1402313500358 :=
  chain_cut false 2 (by decide)

private def v1402313472710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 1))))))))
private theorem no_v1402313472710 : ¬ MinimalInterpreter v1402313472710 :=
  chain_cut false 2 (by decide)

private def v1402313500214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.lam (.var 1)))) (.var 1)))))))
private theorem no_v1402313500214 : ¬ MinimalInterpreter v1402313500214 :=
  chain_cut false 2 (by decide)

private def v1402313472566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 1))) (.var 1)))))))
private theorem no_v1402313472566 : ¬ MinimalInterpreter v1402313472566 :=
  chain_cut false 2 (by decide)

private def v1402312825286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v1402312825286 : ¬ MinimalInterpreter v1402312825286 :=
  chain_cut false 2 (by decide)

private def v1402312824518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))))
private theorem no_v1402312824518 : ¬ MinimalInterpreter v1402312824518 :=
  chain_cut false 2 (by decide)

private def v1402312824374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))))))
private theorem no_v1402312824374 : ¬ MinimalInterpreter v1402312824374 :=
  chain_cut false 2 (by decide)

private def v1402312714694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 1) (.lam (.var 1))))))))
private theorem no_v1402312714694 : ¬ MinimalInterpreter v1402312714694 :=
  chain_cut false 2 (by decide)

private def v1402312518086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 1) (.lam (.var 1))))))))
private theorem no_v1402312518086 : ¬ MinimalInterpreter v1402312518086 :=
  chain_cut false 2 (by decide)

private def v1402312713926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))) (.lam (.var 1)))))))
private theorem no_v1402312713926 : ¬ MinimalInterpreter v1402312713926 :=
  chain_cut false 2 (by decide)

private def v1402312686278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))) (.lam (.var 1)))))))
private theorem no_v1402312686278 : ¬ MinimalInterpreter v1402312686278 :=
  chain_cut false 2 (by decide)

private def v1402312517318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))) (.lam (.var 1)))))))
private theorem no_v1402312517318 : ¬ MinimalInterpreter v1402312517318 :=
  chain_cut false 2 (by decide)

private def v1402312489670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)) (.lam (.var 1)))))))
private theorem no_v1402312489670 : ¬ MinimalInterpreter v1402312489670 :=
  chain_cut false 2 (by decide)

private def v1402312440518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)) (.lam (.var 1)))))))
private theorem no_v1402312440518 : ¬ MinimalInterpreter v1402312440518 :=
  chain_cut false 2 (by decide)

private def v1402312713782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.var 1))))) (.var 1))))))
private theorem no_v1402312713782 : ¬ MinimalInterpreter v1402312713782 :=
  chain_cut false 2 (by decide)

private def v1402312686134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.var 1)))) (.var 1))))))
private theorem no_v1402312686134 : ¬ MinimalInterpreter v1402312686134 :=
  chain_cut false 2 (by decide)

private def v1402312517174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.var 1)))) (.var 1))))))
private theorem no_v1402312517174 : ¬ MinimalInterpreter v1402312517174 :=
  chain_cut false 2 (by decide)

private def v1402312489526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.var 1))) (.var 1))))))
private theorem no_v1402312489526 : ¬ MinimalInterpreter v1402312489526 :=
  chain_cut false 2 (by decide)

private def v1402312440374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 1))) (.var 1))))))
private theorem no_v1402312440374 : ¬ MinimalInterpreter v1402312440374 :=
  chain_cut false 2 (by decide)

private def v1402332112502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1))))))))))
private theorem no_v1402332112502 : ¬ MinimalInterpreter v1402332112502 :=
  cost_cut false 2 (by decide)

private def v1402332112310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1)))))))))
private theorem no_v1402332112310 : ¬ MinimalInterpreter v1402332112310 :=
  cost_cut false 2 (by decide)

private def v1402332084854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1)))))))))
private theorem no_v1402332084854 : ¬ MinimalInterpreter v1402332084854 :=
  cost_cut false 2 (by decide)

private def v1402332084662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1))))))))
private theorem no_v1402332084662 : ¬ MinimalInterpreter v1402332084662 :=
  cost_cut false 2 (by decide)

private def v1402332077750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1))))))))
private theorem no_v1402332077750 : ¬ MinimalInterpreter v1402332077750 :=
  cost_cut false 2 (by decide)

private def v1402332486086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 1))))))))))
private theorem no_v1402332486086 : ¬ MinimalInterpreter v1402332486086 :=
  chain_cut false 2 (by decide)

private def v1402332485318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))))))))
private theorem no_v1402332485318 : ¬ MinimalInterpreter v1402332485318 :=
  chain_cut false 2 (by decide)

private def v1402332485174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 1))) (.var 1))))))))
private theorem no_v1402332485174 : ¬ MinimalInterpreter v1402332485174 :=
  chain_cut false 2 (by decide)

private def v1402332375494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v1402332375494 : ¬ MinimalInterpreter v1402332375494 :=
  chain_cut false 2 (by decide)

private def v1402332374726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 1))))))))
private theorem no_v1402332374726 : ¬ MinimalInterpreter v1402332374726 :=
  chain_cut false 2 (by decide)

private def v1402332347078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 1))))))))
private theorem no_v1402332347078 : ¬ MinimalInterpreter v1402332347078 :=
  chain_cut false 2 (by decide)

private def v1402332374582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 1)))) (.var 1)))))))
private theorem no_v1402332374582 : ¬ MinimalInterpreter v1402332374582 :=
  chain_cut false 2 (by decide)

private def v1402332346934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 1))) (.var 1)))))))
private theorem no_v1402332346934 : ¬ MinimalInterpreter v1402332346934 :=
  chain_cut false 2 (by decide)

private def v1402330015430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))) (.lam (.var 1))))))
private theorem no_v1402330015430 : ¬ MinimalInterpreter v1402330015430 :=
  chain_cut false 2 (by decide)

private def v1402329987782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))) (.lam (.var 1))))))
private theorem no_v1402329987782 : ¬ MinimalInterpreter v1402329987782 :=
  chain_cut false 2 (by decide)

private def v1402407983558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 1))))))))))
private theorem no_v1402407983558 : ¬ MinimalInterpreter v1402407983558 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407982790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))))))))
private theorem no_v1402407982790 : ¬ MinimalInterpreter v1402407982790 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407982646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 1))) (.var 1))))))))
private theorem no_v1402407982646 : ¬ MinimalInterpreter v1402407982646 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407872966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v1402407872966 : ¬ MinimalInterpreter v1402407872966 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407872198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 1))))))))
private theorem no_v1402407872198 : ¬ MinimalInterpreter v1402407872198 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407844550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 1))))))))
private theorem no_v1402407844550 : ¬ MinimalInterpreter v1402407844550 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407872054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 1)))) (.var 1)))))))
private theorem no_v1402407872054 : ¬ MinimalInterpreter v1402407872054 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407844406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 1))) (.var 1)))))))
private theorem no_v1402407844406 : ¬ MinimalInterpreter v1402407844406 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402399221446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))) (.lam (.var 1)))))
private theorem no_v1402399221446 : ¬ MinimalInterpreter v1402399221446 :=
  fun he => _root_.Certgen.R302887593670.excluded he.1

private def v1402399193798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))) (.lam (.var 1)))))
private theorem no_v1402399193798 : ¬ MinimalInterpreter v1402399193798 :=
  fun he => _root_.Blc.Floor40.Parity.excluded he.1

theorem four109 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,2,0,1,1]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,2,0,1,1] = [v1402308519542,v1402308519350,v1402308491894,v1402308491702,v1402308484790,v1402308322934,v1402308322742,v1402308295286,v1402308246134,v1402308295094,v1402308288182,v1402308245942,v1402308239030,v1402308226742,v1402313238134,v1402313237942,v1402313210486,v1402313210294,v1402313203382,v1402312620470,v1402312613558,v1402313611718,v1402313610950,v1402313610806,v1402313501126,v1402313500358,v1402313472710,v1402313500214,v1402313472566,v1402312825286,v1402312824518,v1402312824374,v1402312714694,v1402312518086,v1402312713926,v1402312686278,v1402312517318,v1402312489670,v1402312440518,v1402312713782,v1402312686134,v1402312517174,v1402312489526,v1402312440374,v1402332112502,v1402332112310,v1402332084854,v1402332084662,v1402332077750,v1402332486086,v1402332485318,v1402332485174,v1402332375494,v1402332374726,v1402332347078,v1402332374582,v1402332346934,v1402330015430,v1402329987782,v1402407983558,v1402407982790,v1402407982646,v1402407872966,v1402407872198,v1402407844550,v1402407872054,v1402407844406,v1402399221446,v1402399193798] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308519542) (.cons (no_v1402308519350) (.cons (no_v1402308491894) (.cons (no_v1402308491702) (.cons (no_v1402308484790) (.cons (no_v1402308322934) (.cons (no_v1402308322742) (.cons (no_v1402308295286) (.cons (no_v1402308246134) (.cons (no_v1402308295094) (.cons (no_v1402308288182) (.cons (no_v1402308245942) (.cons (no_v1402308239030) (.cons (no_v1402308226742) (.cons (no_v1402313238134) (.cons (no_v1402313237942) (.cons (no_v1402313210486) (.cons (no_v1402313210294) (.cons (no_v1402313203382) (.cons (no_v1402312620470) (.cons (no_v1402312613558) (.cons (no_v1402313611718) (.cons (no_v1402313610950) (.cons (no_v1402313610806) (.cons (no_v1402313501126) (.cons (no_v1402313500358) (.cons (no_v1402313472710) (.cons (no_v1402313500214) (.cons (no_v1402313472566) (.cons (no_v1402312825286) (.cons (no_v1402312824518) (.cons (no_v1402312824374) (.cons (no_v1402312714694) (.cons (no_v1402312518086) (.cons (no_v1402312713926) (.cons (no_v1402312686278) (.cons (no_v1402312517318) (.cons (no_v1402312489670) (.cons (no_v1402312440518) (.cons (no_v1402312713782) (.cons (no_v1402312686134) (.cons (no_v1402312517174) (.cons (no_v1402312489526) (.cons (no_v1402312440374) (.cons (no_v1402332112502) (.cons (no_v1402332112310) (.cons (no_v1402332084854) (.cons (no_v1402332084662) (.cons (no_v1402332077750) (.cons (no_v1402332486086) (.cons (no_v1402332485318) (.cons (no_v1402332485174) (.cons (no_v1402332375494) (.cons (no_v1402332374726) (.cons (no_v1402332347078) (.cons (no_v1402332374582) (.cons (no_v1402332346934) (.cons (no_v1402330015430) (.cons (no_v1402329987782) (.cons (no_v1402407983558) (.cons (no_v1402407982790) (.cons (no_v1402407982646) (.cons (no_v1402407872966) (.cons (no_v1402407872198) (.cons (no_v1402407844550) (.cons (no_v1402407872054) (.cons (no_v1402407844406) (.cons (no_v1402399221446) (.cons (no_v1402399193798) .nil)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

private def v1402313610810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))))
private theorem no_v1402313610810 : ¬ MinimalInterpreter v1402313610810 :=
  chain_cut false 2 (by decide)

private def v1402313500218 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.lam (.var 2)))) (.var 0)))))))
private theorem no_v1402313500218 : ¬ MinimalInterpreter v1402313500218 :=
  chain_cut false 2 (by decide)

private def v1402313472570 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 2))) (.var 0)))))))
private theorem no_v1402313472570 : ¬ MinimalInterpreter v1402313472570 :=
  chain_cut false 2 (by decide)

private def v1402312824378 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))))))
private theorem no_v1402312824378 : ¬ MinimalInterpreter v1402312824378 :=
  chain_cut false 2 (by decide)

private def v1402312648314 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private theorem no_v1402312648314 : ¬ MinimalInterpreter v1402312648314 :=
  chain_cut false 2 (by decide)

private def v1402312648122 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private theorem no_v1402312648122 : ¬ MinimalInterpreter v1402312648122 :=
  chain_cut false 2 (by decide)

private def v1402312473210 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 0)) (.app (.var 2) (.var 0)))))))
private theorem no_v1402312473210 : ¬ MinimalInterpreter v1402312473210 :=
  chain_cut false 2 (by decide)

private def v1402312713786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.var 2))))) (.var 0))))))
private theorem no_v1402312713786 : ¬ MinimalInterpreter v1402312713786 :=
  chain_cut false 2 (by decide)

private def v1402312686138 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.var 2)))) (.var 0))))))
private theorem no_v1402312686138 : ¬ MinimalInterpreter v1402312686138 :=
  chain_cut false 2 (by decide)

private def v1402312517178 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.var 2)))) (.var 0))))))
private theorem no_v1402312517178 : ¬ MinimalInterpreter v1402312517178 :=
  chain_cut false 2 (by decide)

private def v1402312473018 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 0) (.var 2))) (.var 0))))))
private theorem no_v1402312473018 : ¬ MinimalInterpreter v1402312473018 :=
  chain_cut false 2 (by decide)

private def v1402312489530 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.var 2))) (.var 0))))))
private theorem no_v1402312489530 : ¬ MinimalInterpreter v1402312489530 :=
  chain_cut false 2 (by decide)

private def v1402312440378 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 2))) (.var 0))))))
private theorem no_v1402312440378 : ¬ MinimalInterpreter v1402312440378 :=
  chain_cut false 2 (by decide)

private def v1402312429242 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 0)) (.var 2)) (.var 0))))))
private theorem no_v1402312429242 : ¬ MinimalInterpreter v1402312429242 :=
  chain_cut false 2 (by decide)

private def v1402332485178 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))))
private theorem no_v1402332485178 : ¬ MinimalInterpreter v1402332485178 :=
  chain_cut false 2 (by decide)

private def v1402332374586 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 2)))) (.var 0)))))))
private theorem no_v1402332374586 : ¬ MinimalInterpreter v1402332374586 :=
  chain_cut false 2 (by decide)

private def v1402332346938 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 2))) (.var 0)))))))
private theorem no_v1402332346938 : ¬ MinimalInterpreter v1402332346938 :=
  chain_cut false 2 (by decide)

private def v1402330015290 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))) (.var 0)))))
private theorem no_v1402330015290 : ¬ MinimalInterpreter v1402330015290 :=
  chain_cut false 2 (by decide)

private def v1402329987642 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 2))))) (.var 0)))))
private theorem no_v1402329987642 : ¬ MinimalInterpreter v1402329987642 :=
  chain_cut false 2 (by decide)

private def v1402407982650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))))
private theorem no_v1402407982650 : ¬ MinimalInterpreter v1402407982650 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407872058 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 2)))) (.var 0)))))))
private theorem no_v1402407872058 : ¬ MinimalInterpreter v1402407872058 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407844410 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 2))) (.var 0)))))))
private theorem no_v1402407844410 : ¬ MinimalInterpreter v1402407844410 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402399221306 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2))))))) (.var 0))))
private theorem no_v1402399221306 : ¬ MinimalInterpreter v1402399221306 :=
  fun he => _root_.Blc.Floor40.WeightedRows.ex_e302887593530 he.1

private def v1402399193658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 2)))))) (.var 0))))
private theorem no_v1402399193658 : ¬ MinimalInterpreter v1402399193658 :=
  fun he => _root_.Certgen.R302887565882.excluded he.1

theorem four110 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,2,0,2,0]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,2,0,2,0] = [v1402313610810,v1402313500218,v1402313472570,v1402312824378,v1402312648314,v1402312648122,v1402312473210,v1402312713786,v1402312686138,v1402312517178,v1402312473018,v1402312489530,v1402312440378,v1402312429242,v1402332485178,v1402332374586,v1402332346938,v1402330015290,v1402329987642,v1402407982650,v1402407872058,v1402407844410,v1402399221306,v1402399193658] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313610810) (.cons (no_v1402313500218) (.cons (no_v1402313472570) (.cons (no_v1402312824378) (.cons (no_v1402312648314) (.cons (no_v1402312648122) (.cons (no_v1402312473210) (.cons (no_v1402312713786) (.cons (no_v1402312686138) (.cons (no_v1402312517178) (.cons (no_v1402312473018) (.cons (no_v1402312489530) (.cons (no_v1402312440378) (.cons (no_v1402312429242) (.cons (no_v1402332485178) (.cons (no_v1402332374586) (.cons (no_v1402332346938) (.cons (no_v1402330015290) (.cons (no_v1402329987642) (.cons (no_v1402407982650) (.cons (no_v1402407872058) (.cons (no_v1402407844410) (.cons (no_v1402399221306) (.cons (no_v1402399193658) .nil))))))))))))))))))))))))

private def v1402308519734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402308519734 : ¬ MinimalInterpreter v1402308519734 :=
  cost_cut false 2 (by decide)

private def v1402308519382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1)))))))))
private theorem no_v1402308519382 : ¬ MinimalInterpreter v1402308519382 :=
  cost_cut false 2 (by decide)

private def v1402308492086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402308492086 : ¬ MinimalInterpreter v1402308492086 :=
  cost_cut false 2 (by decide)

private def v1402308491734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1))))))))
private theorem no_v1402308491734 : ¬ MinimalInterpreter v1402308491734 :=
  cost_cut false 2 (by decide)

private def v1402308484822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1))))))))
private theorem no_v1402308484822 : ¬ MinimalInterpreter v1402308484822 :=
  cost_cut false 2 (by decide)

private def v1402308323126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402308323126 : ¬ MinimalInterpreter v1402308323126 :=
  cost_cut false 2 (by decide)

private def v1402308322774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.var 0)) (.var 1))))))))
private theorem no_v1402308322774 : ¬ MinimalInterpreter v1402308322774 :=
  cost_cut false 2 (by decide)

private def v1402308295478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 1))))))))
private theorem no_v1402308295478 : ¬ MinimalInterpreter v1402308295478 :=
  cost_cut false 2 (by decide)

private def v1402308246326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.app (.var 0) (.var 1))))))))
private theorem no_v1402308246326 : ¬ MinimalInterpreter v1402308246326 :=
  cost_cut false 2 (by decide)

private def v1402308295126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))) (.var 1)))))))
private theorem no_v1402308295126 : ¬ MinimalInterpreter v1402308295126 :=
  cost_cut false 2 (by decide)

private def v1402308288214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 1)))))))
private theorem no_v1402308288214 : ¬ MinimalInterpreter v1402308288214 :=
  cost_cut false 2 (by decide)

private def v1402308245974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))) (.var 1)))))))
private theorem no_v1402308245974 : ¬ MinimalInterpreter v1402308245974 :=
  cost_cut false 2 (by decide)

private def v1402308239062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.var 1)))))))
private theorem no_v1402308239062 : ¬ MinimalInterpreter v1402308239062 :=
  cost_cut false 2 (by decide)

private def v1402308226774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)) (.var 1)))))))
private theorem no_v1402308226774 : ¬ MinimalInterpreter v1402308226774 :=
  cost_cut false 2 (by decide)

private def v1402313238326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402313238326 : ¬ MinimalInterpreter v1402313238326 :=
  cost_cut false 2 (by decide)

private def v1402313237974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1)))))))))
private theorem no_v1402313237974 : ¬ MinimalInterpreter v1402313237974 :=
  cost_cut false 2 (by decide)

private def v1402313210678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402313210678 : ¬ MinimalInterpreter v1402313210678 :=
  cost_cut false 2 (by decide)

private def v1402313210326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1))))))))
private theorem no_v1402313210326 : ¬ MinimalInterpreter v1402313210326 :=
  cost_cut false 2 (by decide)

private def v1402313203414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1))))))))
private theorem no_v1402313203414 : ¬ MinimalInterpreter v1402313203414 :=
  cost_cut false 2 (by decide)

private def v1402312620502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))) (.var 1))))))
private theorem no_v1402312620502 : ¬ MinimalInterpreter v1402312620502 :=
  cost_cut false 2 (by decide)

private def v1402312613590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.var 1))))))
private theorem no_v1402312613590 : ¬ MinimalInterpreter v1402312613590 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.var 1)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.var 1))) (.app (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 1)) (.var 0) (by decide) (by decide))))))

private def v1402313612486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 1))))))))))
private theorem no_v1402313612486 : ¬ MinimalInterpreter v1402313612486 :=
  chain_cut false 2 (by decide)

private def v1402313611078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))))))))
private theorem no_v1402313611078 : ¬ MinimalInterpreter v1402313611078 :=
  chain_cut false 2 (by decide)

private def v1402313501894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v1402313501894 : ¬ MinimalInterpreter v1402313501894 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1))))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 1)))))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (so_dead (by decide) (.var 1))))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313499446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 0) (.var 1))))))))
private theorem no_v1402313499446 : ¬ MinimalInterpreter v1402313499446 :=
  chain_cut false 2 (by decide)

private def v1402313500486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 1))))))))
private theorem no_v1402313500486 : ¬ MinimalInterpreter v1402313500486 :=
  chain_cut false 2 (by decide)

private def v1402313472838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1))))))))
private theorem no_v1402313472838 : ¬ MinimalInterpreter v1402313472838 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 1))))) (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (so_dead (by decide) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313472214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 0)) (.var 1)))))))
private theorem no_v1402313472214 : ¬ MinimalInterpreter v1402313472214 :=
  chain_cut false 2 (by decide)

private def v1402312826054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v1402312826054 : ¬ MinimalInterpreter v1402312826054 :=
  chain_cut false 2 (by decide)

private def v1402312824646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.var 0)) (.lam (.var 1))))))))
private theorem no_v1402312824646 : ¬ MinimalInterpreter v1402312824646 :=
  chain_cut false 2 (by decide)

private def v1402312715462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.lam (.var 1))))))))
private theorem no_v1402312715462 : ¬ MinimalInterpreter v1402312715462 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312518854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.app (.var 0) (.lam (.var 1))))))))
private theorem no_v1402312518854 : ¬ MinimalInterpreter v1402312518854 :=
  chain_cut false 2 (by decide)

private def v1402312713014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 1)))) (.app (.var 0) (.var 1)))))))
private theorem no_v1402312713014 : ¬ MinimalInterpreter v1402312713014 :=
  chain_cut false 2 (by decide)

private def v1402312516406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 1))) (.app (.var 0) (.var 1)))))))
private theorem no_v1402312516406 : ¬ MinimalInterpreter v1402312516406 :=
  chain_cut false 2 (by decide)

private def v1402312714054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))) (.lam (.var 1)))))))
private theorem no_v1402312714054 : ¬ MinimalInterpreter v1402312714054 :=
  chain_cut false 2 (by decide)

private def v1402312686406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.lam (.var 1)))))))
private theorem no_v1402312686406 : ¬ MinimalInterpreter v1402312686406 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 1)))) (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312517446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))) (.lam (.var 1)))))))
private theorem no_v1402312517446 : ¬ MinimalInterpreter v1402312517446 :=
  chain_cut false 2 (by decide)

private def v1402312489798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.lam (.var 1)))))))
private theorem no_v1402312489798 : ¬ MinimalInterpreter v1402312489798 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 1)))) (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312440646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)) (.lam (.var 1)))))))
private theorem no_v1402312440646 : ¬ MinimalInterpreter v1402312440646 :=
  chain_cut false 2 (by decide)

private def v1402312685782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 1))) (.var 0))) (.var 1))))))
private theorem no_v1402312685782 : ¬ MinimalInterpreter v1402312685782 :=
  chain_cut false 2 (by decide)

private def v1402312489174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 1)))) (.var 0)) (.var 1))))))
private theorem no_v1402312489174 : ¬ MinimalInterpreter v1402312489174 :=
  chain_cut false 2 (by decide)

private def v1402312440022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 1))) (.var 0)) (.var 1))))))
private theorem no_v1402312440022 : ¬ MinimalInterpreter v1402312440022 :=
  chain_cut false 2 (by decide)

private def v1402332112694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402332112694 : ¬ MinimalInterpreter v1402332112694 :=
  cost_cut false 2 (by decide)

private def v1402332112342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1)))))))))
private theorem no_v1402332112342 : ¬ MinimalInterpreter v1402332112342 :=
  cost_cut false 2 (by decide)

private def v1402332085046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402332085046 : ¬ MinimalInterpreter v1402332085046 :=
  cost_cut false 2 (by decide)

private def v1402332084694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1))))))))
private theorem no_v1402332084694 : ¬ MinimalInterpreter v1402332084694 :=
  cost_cut false 2 (by decide)

private def v1402332077782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1))))))))
private theorem no_v1402332077782 : ¬ MinimalInterpreter v1402332077782 :=
  cost_cut false 2 (by decide)

private def v1402332486854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 1))))))))))
private theorem no_v1402332486854 : ¬ MinimalInterpreter v1402332486854 :=
  chain_cut false 2 (by decide)

private def v1402332485446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))))))))
private theorem no_v1402332485446 : ¬ MinimalInterpreter v1402332485446 :=
  chain_cut false 2 (by decide)

private def v1402332376262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v1402332376262 : ¬ MinimalInterpreter v1402332376262 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1))))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402332373814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 0) (.var 1))))))))
private theorem no_v1402332373814 : ¬ MinimalInterpreter v1402332373814 :=
  chain_cut false 2 (by decide)

private def v1402332374854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 1))))))))
private theorem no_v1402332374854 : ¬ MinimalInterpreter v1402332374854 :=
  chain_cut false 2 (by decide)

private def v1402332347206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1))))))))
private theorem no_v1402332347206 : ¬ MinimalInterpreter v1402332347206 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402332346582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 0)) (.var 1)))))))
private theorem no_v1402332346582 : ¬ MinimalInterpreter v1402332346582 :=
  chain_cut false 2 (by decide)

private def v1402330015558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))) (.lam (.var 1))))))
private theorem no_v1402330015558 : ¬ MinimalInterpreter v1402330015558 :=
  chain_cut false 2 (by decide)

private def v1402329987910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (.var 1))))))
private theorem no_v1402329987910 : ¬ MinimalInterpreter v1402329987910 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (.var 1)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (.var 1)))) (.app (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (so_dead (by decide) (.var 1))) (.var 0) (by decide) (by decide)))))

private def v1402407984326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 1))))))))))
private theorem no_v1402407984326 : ¬ MinimalInterpreter v1402407984326 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)

private def v1402407982918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))))))))
private theorem no_v1402407982918 : ¬ MinimalInterpreter v1402407982918 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402407873734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v1402407873734 : ¬ MinimalInterpreter v1402407873734 :=
  w_cut false 0 (by decide)

private def v1402407871286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 0) (.var 1))))))))
private theorem no_v1402407871286 : ¬ MinimalInterpreter v1402407871286 :=
  chain_cut false 6 (by decide)

private def v1402407872326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 1))))))))
private theorem no_v1402407872326 : ¬ MinimalInterpreter v1402407872326 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)

private def v1402407844678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1))))))))
private theorem no_v1402407844678 : ¬ MinimalInterpreter v1402407844678 :=
  w_cut false 0 (by decide)

private def v1402407844054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 0)) (.var 1)))))))
private theorem no_v1402407844054 : ¬ MinimalInterpreter v1402407844054 :=
  chain_cut false 6 (by decide)

private def v1402399221574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))) (.lam (.var 1)))))
private theorem no_v1402399221574 : ¬ MinimalInterpreter v1402399221574 :=
  fun he => _root_.Certgen.R302887593798.excluded he.1

private def v1402399193926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (.var 1)))))
private theorem no_v1402399193926 : ¬ MinimalInterpreter v1402399193926 :=
  w_cut false 0 (by decide)

theorem four111 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,2,1,0,1]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,2,1,0,1] = [v1402308519734,v1402308519382,v1402308492086,v1402308491734,v1402308484822,v1402308323126,v1402308322774,v1402308295478,v1402308246326,v1402308295126,v1402308288214,v1402308245974,v1402308239062,v1402308226774,v1402313238326,v1402313237974,v1402313210678,v1402313210326,v1402313203414,v1402312620502,v1402312613590,v1402313612486,v1402313611078,v1402313501894,v1402313499446,v1402313500486,v1402313472838,v1402313472214,v1402312826054,v1402312824646,v1402312715462,v1402312518854,v1402312713014,v1402312516406,v1402312714054,v1402312686406,v1402312517446,v1402312489798,v1402312440646,v1402312685782,v1402312489174,v1402312440022,v1402332112694,v1402332112342,v1402332085046,v1402332084694,v1402332077782,v1402332486854,v1402332485446,v1402332376262,v1402332373814,v1402332374854,v1402332347206,v1402332346582,v1402330015558,v1402329987910,v1402407984326,v1402407982918,v1402407873734,v1402407871286,v1402407872326,v1402407844678,v1402407844054,v1402399221574,v1402399193926] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308519734) (.cons (no_v1402308519382) (.cons (no_v1402308492086) (.cons (no_v1402308491734) (.cons (no_v1402308484822) (.cons (no_v1402308323126) (.cons (no_v1402308322774) (.cons (no_v1402308295478) (.cons (no_v1402308246326) (.cons (no_v1402308295126) (.cons (no_v1402308288214) (.cons (no_v1402308245974) (.cons (no_v1402308239062) (.cons (no_v1402308226774) (.cons (no_v1402313238326) (.cons (no_v1402313237974) (.cons (no_v1402313210678) (.cons (no_v1402313210326) (.cons (no_v1402313203414) (.cons (no_v1402312620502) (.cons (no_v1402312613590) (.cons (no_v1402313612486) (.cons (no_v1402313611078) (.cons (no_v1402313501894) (.cons (no_v1402313499446) (.cons (no_v1402313500486) (.cons (no_v1402313472838) (.cons (no_v1402313472214) (.cons (no_v1402312826054) (.cons (no_v1402312824646) (.cons (no_v1402312715462) (.cons (no_v1402312518854) (.cons (no_v1402312713014) (.cons (no_v1402312516406) (.cons (no_v1402312714054) (.cons (no_v1402312686406) (.cons (no_v1402312517446) (.cons (no_v1402312489798) (.cons (no_v1402312440646) (.cons (no_v1402312685782) (.cons (no_v1402312489174) (.cons (no_v1402312440022) (.cons (no_v1402332112694) (.cons (no_v1402332112342) (.cons (no_v1402332085046) (.cons (no_v1402332084694) (.cons (no_v1402332077782) (.cons (no_v1402332486854) (.cons (no_v1402332485446) (.cons (no_v1402332376262) (.cons (no_v1402332373814) (.cons (no_v1402332374854) (.cons (no_v1402332347206) (.cons (no_v1402332346582) (.cons (no_v1402330015558) (.cons (no_v1402329987910) (.cons (no_v1402407984326) (.cons (no_v1402407982918) (.cons (no_v1402407873734) (.cons (no_v1402407871286) (.cons (no_v1402407872326) (.cons (no_v1402407844678) (.cons (no_v1402407844054) (.cons (no_v1402399221574) (.cons (no_v1402399193926) .nil)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

end Blc.SelfintSingleObject.Rows40
