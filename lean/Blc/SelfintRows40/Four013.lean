import Blc.Selfint40Evidence.R302887492570
import Blc.Selfint40Evidence.R302902157114
import Blc.Selfint40Evidence.R302902173326
import Blc.Selfint40Evidence.R302902180238
import Blc.Selfint40Evidence.WeightedRows
import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402308500726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1))))))))))
private theorem no_v1402308500726 : ¬ MinimalInterpreter v1402308500726 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1))))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1))))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308499318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1)))))))))
private theorem no_v1402308499318 : ¬ MinimalInterpreter v1402308499318 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1)))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1)))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308488438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 1)))))))))
private theorem no_v1402308488438 : ¬ MinimalInterpreter v1402308488438 :=
  cost_cut false 2 (by decide)

private def v1402308487030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 1))))))))
private theorem no_v1402308487030 : ¬ MinimalInterpreter v1402308487030 :=
  cost_cut false 2 (by decide)

private def v1402308483958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 1))))))))
private theorem no_v1402308483958 : ¬ MinimalInterpreter v1402308483958 :=
  cost_cut false 2 (by decide)

private def v1402308304118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 1)))))))))
private theorem no_v1402308304118 : ¬ MinimalInterpreter v1402308304118 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 1)))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308302710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 1))))))))
private theorem no_v1402308302710 : ¬ MinimalInterpreter v1402308302710 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308291830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 2) (.var 1))))))))
private theorem no_v1402308291830 : ¬ MinimalInterpreter v1402308291830 :=
  cost_cut false 2 (by decide)

private def v1402308242678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.var 1))))))))
private theorem no_v1402308242678 : ¬ MinimalInterpreter v1402308242678 :=
  cost_cut false 2 (by decide)

private def v1402308290422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 1)))))))
private theorem no_v1402308290422 : ¬ MinimalInterpreter v1402308290422 :=
  cost_cut false 2 (by decide)

private def v1402308287350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 1)))))))
private theorem no_v1402308287350 : ¬ MinimalInterpreter v1402308287350 :=
  cost_cut false 2 (by decide)

private def v1402308241270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.var 1)))))))
private theorem no_v1402308241270 : ¬ MinimalInterpreter v1402308241270 :=
  cost_cut false 2 (by decide)

private def v1402308238198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)) (.var 1)))))))
private theorem no_v1402308238198 : ¬ MinimalInterpreter v1402308238198 :=
  cost_cut false 2 (by decide)

private def v1402308225910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.var 1)))))))
private theorem no_v1402308225910 : ¬ MinimalInterpreter v1402308225910 :=
  cost_cut false 2 (by decide)

private def v1402313219318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1))))))))))
private theorem no_v1402313219318 : ¬ MinimalInterpreter v1402313219318 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1))))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402313217910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1)))))))))
private theorem no_v1402313217910 : ¬ MinimalInterpreter v1402313217910 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402313207030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 1)))))))))
private theorem no_v1402313207030 : ¬ MinimalInterpreter v1402313207030 :=
  cost_cut false 2 (by decide)

private def v1402313205622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 1))))))))
private theorem no_v1402313205622 : ¬ MinimalInterpreter v1402313205622 :=
  cost_cut false 2 (by decide)

private def v1402313202550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 1))))))))
private theorem no_v1402313202550 : ¬ MinimalInterpreter v1402313202550 :=
  cost_cut false 2 (by decide)

private def v1402312615798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.var 1))))))
private theorem no_v1402312615798 : ¬ MinimalInterpreter v1402312615798 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.var 1)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.var 1))) (.app (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 1)) (.var 0) (by decide) (by decide))))))

private def v1402312612726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))) (.var 1))))))
private theorem no_v1402312612726 : ¬ MinimalInterpreter v1402312612726 :=
  cost_cut false 2 (by decide)

private def v1402313536454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 1))))))))))
private theorem no_v1402313536454 : ¬ MinimalInterpreter v1402313536454 :=
  chain_cut false 2 (by decide)

private def v1402313530822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))))))
private theorem no_v1402313530822 : ¬ MinimalInterpreter v1402313530822 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 1)))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1))))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313487302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v1402313487302 : ¬ MinimalInterpreter v1402313487302 :=
  chain_cut false 2 (by decide)

private def v1402313477366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.var 1))))))))
private theorem no_v1402313477366 : ¬ MinimalInterpreter v1402313477366 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))) (.app (.var 0) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313481670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 1))))))))
private theorem no_v1402313481670 : ¬ MinimalInterpreter v1402313481670 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (so_dead (by decide) (.var 1)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313469382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 1))))))))
private theorem no_v1402313469382 : ¬ MinimalInterpreter v1402313469382 :=
  chain_cut false 2 (by decide)

private def v1402313466742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 2)) (.var 1)))))))
private theorem no_v1402313466742 : ¬ MinimalInterpreter v1402313466742 :=
  chain_cut false 2 (by decide)

private def v1402312750022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v1402312750022 : ¬ MinimalInterpreter v1402312750022 :=
  chain_cut false 2 (by decide)

private def v1402312744390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))))
private theorem no_v1402312744390 : ¬ MinimalInterpreter v1402312744390 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 1))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312700870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 2) (.lam (.var 1))))))))
private theorem no_v1402312700870 : ¬ MinimalInterpreter v1402312700870 :=
  chain_cut false 2 (by decide)

private def v1402312504262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.lam (.var 1))))))))
private theorem no_v1402312504262 : ¬ MinimalInterpreter v1402312504262 :=
  chain_cut false 2 (by decide)

private def v1402312690934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 2) (.var 1)))))))
private theorem no_v1402312690934 : ¬ MinimalInterpreter v1402312690934 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 1))) (.app (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312494326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.app (.var 2) (.var 1)))))))
private theorem no_v1402312494326 : ¬ MinimalInterpreter v1402312494326 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 1))) (.app (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312695238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.lam (.var 1)))))))
private theorem no_v1402312695238 : ¬ MinimalInterpreter v1402312695238 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 1)))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312682950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.lam (.var 1)))))))
private theorem no_v1402312682950 : ¬ MinimalInterpreter v1402312682950 :=
  chain_cut false 2 (by decide)

private def v1402312498630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.lam (.var 1)))))))
private theorem no_v1402312498630 : ¬ MinimalInterpreter v1402312498630 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 1)))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312486342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)) (.lam (.var 1)))))))
private theorem no_v1402312486342 : ¬ MinimalInterpreter v1402312486342 :=
  chain_cut false 2 (by decide)

private def v1402312437190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.lam (.var 1)))))))
private theorem no_v1402312437190 : ¬ MinimalInterpreter v1402312437190 :=
  chain_cut false 2 (by decide)

private def v1402312680310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 2))) (.var 1))))))
private theorem no_v1402312680310 : ¬ MinimalInterpreter v1402312680310 :=
  chain_cut false 2 (by decide)

private def v1402312483702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 2)) (.var 1))))))
private theorem no_v1402312483702 : ¬ MinimalInterpreter v1402312483702 :=
  chain_cut false 2 (by decide)

private def v1402312434550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 2)) (.var 1))))))
private theorem no_v1402312434550 : ¬ MinimalInterpreter v1402312434550 :=
  chain_cut false 2 (by decide)

private def v1402332093686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1))))))))))
private theorem no_v1402332093686 : ¬ MinimalInterpreter v1402332093686 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402332092278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1)))))))))
private theorem no_v1402332092278 : ¬ MinimalInterpreter v1402332092278 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402332081398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 1)))))))))
private theorem no_v1402332081398 : ¬ MinimalInterpreter v1402332081398 :=
  cost_cut false 2 (by decide)

private def v1402332079990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 1))))))))
private theorem no_v1402332079990 : ¬ MinimalInterpreter v1402332079990 :=
  cost_cut false 2 (by decide)

private def v1402332076918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 1))))))))
private theorem no_v1402332076918 : ¬ MinimalInterpreter v1402332076918 :=
  cost_cut false 2 (by decide)

private def v1402332410822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 1))))))))))
private theorem no_v1402332410822 : ¬ MinimalInterpreter v1402332410822 :=
  chain_cut false 2 (by decide)

private def v1402332405190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))))))
private theorem no_v1402332405190 : ¬ MinimalInterpreter v1402332405190 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1)))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402332361670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v1402332361670 : ¬ MinimalInterpreter v1402332361670 :=
  chain_cut false 2 (by decide)

private def v1402332351734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.var 1))))))))
private theorem no_v1402332351734 : ¬ MinimalInterpreter v1402332351734 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402332356038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 1))))))))
private theorem no_v1402332356038 : ¬ MinimalInterpreter v1402332356038 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402332343750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 1))))))))
private theorem no_v1402332343750 : ¬ MinimalInterpreter v1402332343750 :=
  chain_cut false 2 (by decide)

private def v1402332341110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 2)) (.var 1)))))))
private theorem no_v1402332341110 : ¬ MinimalInterpreter v1402332341110 :=
  chain_cut false 2 (by decide)

private def v1402333590470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1))))))))))
private theorem no_v1402333590470 : ¬ MinimalInterpreter v1402333590470 :=
  chain_cut false 2 (by decide)

private def v1402333584838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))))))
private theorem no_v1402333584838 : ¬ MinimalInterpreter v1402333584838 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))) (.app (.var 0) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1402330444742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v1402330444742 : ¬ MinimalInterpreter v1402330444742 :=
  chain_cut false 2 (by decide)

private def v1402330439110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))))
private theorem no_v1402330439110 : ¬ MinimalInterpreter v1402330439110 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))) (.app (.app (.var 0) (.var 0)) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402329996742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (.var 1))))))
private theorem no_v1402329996742 : ¬ MinimalInterpreter v1402329996742 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (.var 1)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (.var 1)))) (.app (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (so_dead (by decide) (.var 1))) (.var 0) (by decide) (by decide)))))

private def v1402329984454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))) (.lam (.var 1))))))
private theorem no_v1402329984454 : ¬ MinimalInterpreter v1402329984454 :=
  chain_cut false 2 (by decide)

private def v1402407908294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 1))))))))))
private theorem no_v1402407908294 : ¬ MinimalInterpreter v1402407908294 :=
  chain_cut true 7 (by decide)

private def v1402407902662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))))))
private theorem no_v1402407902662 : ¬ MinimalInterpreter v1402407902662 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402407859142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v1402407859142 : ¬ MinimalInterpreter v1402407859142 :=
  cost_cut true 9 (by decide)

private def v1402407849206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.var 1))))))))
private theorem no_v1402407849206 : ¬ MinimalInterpreter v1402407849206 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402407853510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 1))))))))
private theorem no_v1402407853510 : ¬ MinimalInterpreter v1402407853510 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402407841222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 1))))))))
private theorem no_v1402407841222 : ¬ MinimalInterpreter v1402407841222 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407838582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 2)) (.var 1)))))))
private theorem no_v1402407838582 : ¬ MinimalInterpreter v1402407838582 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402409087942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1))))))))))
private theorem no_v1402409087942 : ¬ MinimalInterpreter v1402409087942 :=
  fun he => _root_.Blc.Floor40.WeightedRows.ex_e302897460166 he.1

private def v1402409082310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))))))
private theorem no_v1402409082310 : ¬ MinimalInterpreter v1402409082310 :=
  w_cut false 0 (by decide)

private def v1402413806534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1))))))))))
private theorem no_v1402413806534 : ¬ MinimalInterpreter v1402413806534 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)

private def v1402413800902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))))))
private theorem no_v1402413800902 : ¬ MinimalInterpreter v1402413800902 :=
  w_cut false 0 (by decide)

private def v1402401223622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v1402401223622 : ¬ MinimalInterpreter v1402401223622 :=
  w_cut false 0 (by decide)

private def v1402401217990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))))
private theorem no_v1402401217990 : ¬ MinimalInterpreter v1402401217990 :=
  w_cut false 0 (by decide)

private def v1402399202758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (.var 1)))))
private theorem no_v1402399202758 : ¬ MinimalInterpreter v1402399202758 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (so_dead (by decide) (.var 1))))))

private def v1402399190470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.var 1)))))
private theorem no_v1402399190470 : ¬ MinimalInterpreter v1402399190470 :=
  cycle_cut 1 8 (by decide) (by decide)

theorem four91 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,0,1,2,1]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,0,1,2,1] = [v1402308500726,v1402308499318,v1402308488438,v1402308487030,v1402308483958,v1402308304118,v1402308302710,v1402308291830,v1402308242678,v1402308290422,v1402308287350,v1402308241270,v1402308238198,v1402308225910,v1402313219318,v1402313217910,v1402313207030,v1402313205622,v1402313202550,v1402312615798,v1402312612726,v1402313536454,v1402313530822,v1402313487302,v1402313477366,v1402313481670,v1402313469382,v1402313466742,v1402312750022,v1402312744390,v1402312700870,v1402312504262,v1402312690934,v1402312494326,v1402312695238,v1402312682950,v1402312498630,v1402312486342,v1402312437190,v1402312680310,v1402312483702,v1402312434550,v1402332093686,v1402332092278,v1402332081398,v1402332079990,v1402332076918,v1402332410822,v1402332405190,v1402332361670,v1402332351734,v1402332356038,v1402332343750,v1402332341110,v1402333590470,v1402333584838,v1402330444742,v1402330439110,v1402329996742,v1402329984454,v1402407908294,v1402407902662,v1402407859142,v1402407849206,v1402407853510,v1402407841222,v1402407838582,v1402409087942,v1402409082310,v1402413806534,v1402413800902,v1402401223622,v1402401217990,v1402399202758,v1402399190470] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308500726) (.cons (no_v1402308499318) (.cons (no_v1402308488438) (.cons (no_v1402308487030) (.cons (no_v1402308483958) (.cons (no_v1402308304118) (.cons (no_v1402308302710) (.cons (no_v1402308291830) (.cons (no_v1402308242678) (.cons (no_v1402308290422) (.cons (no_v1402308287350) (.cons (no_v1402308241270) (.cons (no_v1402308238198) (.cons (no_v1402308225910) (.cons (no_v1402313219318) (.cons (no_v1402313217910) (.cons (no_v1402313207030) (.cons (no_v1402313205622) (.cons (no_v1402313202550) (.cons (no_v1402312615798) (.cons (no_v1402312612726) (.cons (no_v1402313536454) (.cons (no_v1402313530822) (.cons (no_v1402313487302) (.cons (no_v1402313477366) (.cons (no_v1402313481670) (.cons (no_v1402313469382) (.cons (no_v1402313466742) (.cons (no_v1402312750022) (.cons (no_v1402312744390) (.cons (no_v1402312700870) (.cons (no_v1402312504262) (.cons (no_v1402312690934) (.cons (no_v1402312494326) (.cons (no_v1402312695238) (.cons (no_v1402312682950) (.cons (no_v1402312498630) (.cons (no_v1402312486342) (.cons (no_v1402312437190) (.cons (no_v1402312680310) (.cons (no_v1402312483702) (.cons (no_v1402312434550) (.cons (no_v1402332093686) (.cons (no_v1402332092278) (.cons (no_v1402332081398) (.cons (no_v1402332079990) (.cons (no_v1402332076918) (.cons (no_v1402332410822) (.cons (no_v1402332405190) (.cons (no_v1402332361670) (.cons (no_v1402332351734) (.cons (no_v1402332356038) (.cons (no_v1402332343750) (.cons (no_v1402332341110) (.cons (no_v1402333590470) (.cons (no_v1402333584838) (.cons (no_v1402330444742) (.cons (no_v1402330439110) (.cons (no_v1402329996742) (.cons (no_v1402329984454) (.cons (no_v1402407908294) (.cons (no_v1402407902662) (.cons (no_v1402407859142) (.cons (no_v1402407849206) (.cons (no_v1402407853510) (.cons (no_v1402407841222) (.cons (no_v1402407838582) (.cons (no_v1402409087942) (.cons (no_v1402409082310) (.cons (no_v1402413806534) (.cons (no_v1402413800902) (.cons (no_v1402401223622) (.cons (no_v1402401217990) (.cons (no_v1402399202758) (.cons (no_v1402399190470) .nil)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

private def v1402308500730 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 3) (.var 0))))))))))
private theorem no_v1402308500730 : ¬ MinimalInterpreter v1402308500730 :=
  chain_cut false 2 (by decide)

private def v1402308499322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 0)))))))))
private theorem no_v1402308499322 : ¬ MinimalInterpreter v1402308499322 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 0)))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308488442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 3) (.var 0)))))))))
private theorem no_v1402308488442 : ¬ MinimalInterpreter v1402308488442 :=
  chain_cut false 2 (by decide)

private def v1402308487034 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0))))))))
private theorem no_v1402308487034 : ¬ MinimalInterpreter v1402308487034 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308483962 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 3)) (.var 0))))))))
private theorem no_v1402308483962 : ¬ MinimalInterpreter v1402308483962 :=
  chain_cut false 2 (by decide)

private def v1402308304122 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 3) (.var 0)))))))))
private theorem no_v1402308304122 : ¬ MinimalInterpreter v1402308304122 :=
  chain_cut false 2 (by decide)

private def v1402308302714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 3)) (.var 0))))))))
private theorem no_v1402308302714 : ¬ MinimalInterpreter v1402308302714 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 3)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 3)) (.var 0))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308291834 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 3) (.var 0))))))))
private theorem no_v1402308291834 : ¬ MinimalInterpreter v1402308291834 :=
  chain_cut false 2 (by decide)

private def v1402308242682 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 3) (.var 0))))))))
private theorem no_v1402308242682 : ¬ MinimalInterpreter v1402308242682 :=
  chain_cut false 2 (by decide)

private def v1402308290426 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3)))) (.var 0)))))))
private theorem no_v1402308290426 : ¬ MinimalInterpreter v1402308290426 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3)))) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308287354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 3))) (.var 0)))))))
private theorem no_v1402308287354 : ¬ MinimalInterpreter v1402308287354 :=
  chain_cut false 2 (by decide)

private def v1402308241274 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3))) (.var 0)))))))
private theorem no_v1402308241274 : ¬ MinimalInterpreter v1402308241274 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3))) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308238202 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 3)) (.var 0)))))))
private theorem no_v1402308238202 : ¬ MinimalInterpreter v1402308238202 :=
  chain_cut false 2 (by decide)

private def v1402308225914 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 3)) (.var 0)))))))
private theorem no_v1402308225914 : ¬ MinimalInterpreter v1402308225914 :=
  chain_cut false 2 (by decide)

private def v1402313219322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 3) (.var 0))))))))))
private theorem no_v1402313219322 : ¬ MinimalInterpreter v1402313219322 :=
  chain_cut false 2 (by decide)

private def v1402313217914 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 0)))))))))
private theorem no_v1402313217914 : ¬ MinimalInterpreter v1402313217914 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 0))) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1402313207034 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 3) (.var 0)))))))))
private theorem no_v1402313207034 : ¬ MinimalInterpreter v1402313207034 :=
  chain_cut false 2 (by decide)

private def v1402313205626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0))))))))
private theorem no_v1402313205626 : ¬ MinimalInterpreter v1402313205626 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1402313202554 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 3)) (.var 0))))))))
private theorem no_v1402313202554 : ¬ MinimalInterpreter v1402313202554 :=
  chain_cut false 2 (by decide)

private def v1402313514234 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 3) (.var 0))))))))))
private theorem no_v1402313514234 : ¬ MinimalInterpreter v1402313514234 :=
  chain_cut false 2 (by decide)

private def v1402313512826 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 3)) (.var 0)))))))))
private theorem no_v1402313512826 : ¬ MinimalInterpreter v1402313512826 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 3)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.app (.var 0) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)))) (.var 1) (by decide) (by decide))))))

private def v1402312727802 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 3) (.var 0)))))))))
private theorem no_v1402312727802 : ¬ MinimalInterpreter v1402312727802 :=
  chain_cut false 2 (by decide)

private def v1402312726394 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 3)) (.var 0))))))))
private theorem no_v1402312726394 : ¬ MinimalInterpreter v1402312726394 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 3)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1402312615802 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 3))))) (.var 0))))))
private theorem no_v1402312615802 : ¬ MinimalInterpreter v1402312615802 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 3))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.var 0))) (.app (.app (.var 0) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 0)) (.var 1) (by decide) (by decide))))))

private def v1402312612730 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))) (.var 0))))))
private theorem no_v1402312612730 : ¬ MinimalInterpreter v1402312612730 :=
  chain_cut false 2 (by decide)

private def v1402313530490 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))))))
private theorem no_v1402313530490 : ¬ MinimalInterpreter v1402313530490 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402313481338 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 0)))))))
private theorem no_v1402313481338 : ¬ MinimalInterpreter v1402313481338 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.var 0))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402313469050 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 3))) (.var 0)))))))
private theorem no_v1402313469050 : ¬ MinimalInterpreter v1402313469050 :=
  chain_cut false 2 (by decide)

private def v1402312744058 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))
private theorem no_v1402312744058 : ¬ MinimalInterpreter v1402312744058 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402312694906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 3))))) (.var 0))))))
private theorem no_v1402312694906 : ¬ MinimalInterpreter v1402312694906 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 3))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3))))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402312682618 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 3)))) (.var 0))))))
private theorem no_v1402312682618 : ¬ MinimalInterpreter v1402312682618 :=
  chain_cut false 2 (by decide)

private def v1402312498298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 3)))) (.var 0))))))
private theorem no_v1402312498298 : ¬ MinimalInterpreter v1402312498298 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 3)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402312486010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 3))) (.var 0))))))
private theorem no_v1402312486010 : ¬ MinimalInterpreter v1402312486010 :=
  chain_cut false 2 (by decide)

private def v1402312436858 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 3))) (.var 0))))))
private theorem no_v1402312436858 : ¬ MinimalInterpreter v1402312436858 :=
  chain_cut false 2 (by decide)

private def v1402332404858 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))))))
private theorem no_v1402332404858 : ¬ MinimalInterpreter v1402332404858 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402332355706 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 0)))))))
private theorem no_v1402332355706 : ¬ MinimalInterpreter v1402332355706 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402332343418 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 3))) (.var 0)))))))
private theorem no_v1402332343418 : ¬ MinimalInterpreter v1402332343418 :=
  chain_cut false 2 (by decide)

private def v1402333584506 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))))))
private theorem no_v1402333584506 : ¬ MinimalInterpreter v1402333584506 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.app (.var 0) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)))) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402330438778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))
private theorem no_v1402330438778 : ¬ MinimalInterpreter v1402330438778 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402329996410 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))) (.var 0)))))
private theorem no_v1402329996410 : ¬ MinimalInterpreter v1402329996410 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.var 0))) (.app (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (.var 0)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402329984122 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))) (.var 0)))))
private theorem no_v1402329984122 : ¬ MinimalInterpreter v1402329984122 :=
  chain_cut false 2 (by decide)

private def v1402407591162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 3) (.var 0))))))))))
private theorem no_v1402407591162 : ¬ MinimalInterpreter v1402407591162 :=
  chain_cut false 4 (by decide)

private def v1402407589754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 0)))))))))
private theorem no_v1402407589754 : ¬ MinimalInterpreter v1402407589754 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 0))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1402407578874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 3) (.var 0)))))))))
private theorem no_v1402407578874 : ¬ MinimalInterpreter v1402407578874 :=
  chain_cut false 4 (by decide)

private def v1402407577466 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0))))))))
private theorem no_v1402407577466 : ¬ MinimalInterpreter v1402407577466 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1402407574394 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 3)) (.var 0))))))))
private theorem no_v1402407574394 : ¬ MinimalInterpreter v1402407574394 :=
  chain_cut false 4 (by decide)

private def v1402407886074 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 3) (.var 0))))))))))
private theorem no_v1402407886074 : ¬ MinimalInterpreter v1402407886074 :=
  chain_cut false 4 (by decide)

private def v1402407884666 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 3)) (.var 0)))))))))
private theorem no_v1402407884666 : ¬ MinimalInterpreter v1402407884666 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 3)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 1) (by decide) (by decide)))))))

private def v1402407902330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))))))
private theorem no_v1402407902330 : ¬ MinimalInterpreter v1402407902330 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))

private def v1402407853178 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 0)))))))
private theorem no_v1402407853178 : ¬ MinimalInterpreter v1402407853178 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))

private def v1402407840890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 3))) (.var 0)))))))
private theorem no_v1402407840890 : ¬ MinimalInterpreter v1402407840890 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402409081978 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))))))
private theorem no_v1402409081978 : ¬ MinimalInterpreter v1402409081978 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.lam (.var 1))) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))

private def v1402413784314 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 0))))))))))
private theorem no_v1402413784314 : ¬ MinimalInterpreter v1402413784314 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402413782906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 0)))))))))
private theorem no_v1402413782906 : ¬ MinimalInterpreter v1402413782906 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))))

private def v1402413800570 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))))))
private theorem no_v1402413800570 : ¬ MinimalInterpreter v1402413800570 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))))

private def v1402401201402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 0)))))))))
private theorem no_v1402401201402 : ¬ MinimalInterpreter v1402401201402 :=
  w_cut false 0 (by decide)

private def v1402401199994 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 0))))))))
private theorem no_v1402401199994 : ¬ MinimalInterpreter v1402401199994 :=
  w_cut false 0 (by decide)

private def v1402401217658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))
private theorem no_v1402401217658 : ¬ MinimalInterpreter v1402401217658 :=
  w_cut false 0 (by decide)

private def v1402399123322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))) (.var 0))))
private theorem no_v1402399123322 : ¬ MinimalInterpreter v1402399123322 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))) (.var 0)))))

private def v1402399120250 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))) (.var 0))))
private theorem no_v1402399120250 : ¬ MinimalInterpreter v1402399120250 :=
  cycle_cut 2 4 (by decide) (by decide)

private def v1402399202426 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))) (.var 0))))
private theorem no_v1402399202426 : ¬ MinimalInterpreter v1402399202426 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.app (.var 0) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))) (.var 0)))))

private def v1402399190138 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3)))))) (.var 0))))
private theorem no_v1402399190138 : ¬ MinimalInterpreter v1402399190138 :=
  cycle_cut 8 2 (by decide) (by decide)

theorem four92 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,0,1,3,0]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,0,1,3,0] = [v1402308500730,v1402308499322,v1402308488442,v1402308487034,v1402308483962,v1402308304122,v1402308302714,v1402308291834,v1402308242682,v1402308290426,v1402308287354,v1402308241274,v1402308238202,v1402308225914,v1402313219322,v1402313217914,v1402313207034,v1402313205626,v1402313202554,v1402313514234,v1402313512826,v1402312727802,v1402312726394,v1402312615802,v1402312612730,v1402313530490,v1402313481338,v1402313469050,v1402312744058,v1402312694906,v1402312682618,v1402312498298,v1402312486010,v1402312436858,v1402332404858,v1402332355706,v1402332343418,v1402333584506,v1402330438778,v1402329996410,v1402329984122,v1402407591162,v1402407589754,v1402407578874,v1402407577466,v1402407574394,v1402407886074,v1402407884666,v1402407902330,v1402407853178,v1402407840890,v1402409081978,v1402413784314,v1402413782906,v1402413800570,v1402401201402,v1402401199994,v1402401217658,v1402399123322,v1402399120250,v1402399202426,v1402399190138] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308500730) (.cons (no_v1402308499322) (.cons (no_v1402308488442) (.cons (no_v1402308487034) (.cons (no_v1402308483962) (.cons (no_v1402308304122) (.cons (no_v1402308302714) (.cons (no_v1402308291834) (.cons (no_v1402308242682) (.cons (no_v1402308290426) (.cons (no_v1402308287354) (.cons (no_v1402308241274) (.cons (no_v1402308238202) (.cons (no_v1402308225914) (.cons (no_v1402313219322) (.cons (no_v1402313217914) (.cons (no_v1402313207034) (.cons (no_v1402313205626) (.cons (no_v1402313202554) (.cons (no_v1402313514234) (.cons (no_v1402313512826) (.cons (no_v1402312727802) (.cons (no_v1402312726394) (.cons (no_v1402312615802) (.cons (no_v1402312612730) (.cons (no_v1402313530490) (.cons (no_v1402313481338) (.cons (no_v1402313469050) (.cons (no_v1402312744058) (.cons (no_v1402312694906) (.cons (no_v1402312682618) (.cons (no_v1402312498298) (.cons (no_v1402312486010) (.cons (no_v1402312436858) (.cons (no_v1402332404858) (.cons (no_v1402332355706) (.cons (no_v1402332343418) (.cons (no_v1402333584506) (.cons (no_v1402330438778) (.cons (no_v1402329996410) (.cons (no_v1402329984122) (.cons (no_v1402407591162) (.cons (no_v1402407589754) (.cons (no_v1402407578874) (.cons (no_v1402407577466) (.cons (no_v1402407574394) (.cons (no_v1402407886074) (.cons (no_v1402407884666) (.cons (no_v1402407902330) (.cons (no_v1402407853178) (.cons (no_v1402407840890) (.cons (no_v1402409081978) (.cons (no_v1402413784314) (.cons (no_v1402413782906) (.cons (no_v1402413800570) (.cons (no_v1402401201402) (.cons (no_v1402401199994) (.cons (no_v1402401217658) (.cons (no_v1402399123322) (.cons (no_v1402399120250) (.cons (no_v1402399202426) (.cons (no_v1402399190138) .nil))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

private def v1402313537934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.var 2))))))))))
private theorem no_v1402313537934 : ¬ MinimalInterpreter v1402313537934 :=
  chain_cut false 2 (by decide)

private def v1402313531022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.var 2)))))))))
private theorem no_v1402313531022 : ¬ MinimalInterpreter v1402313531022 :=
  chain_cut false 2 (by decide)

private def v1402313488782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v1402313488782 : ¬ MinimalInterpreter v1402313488782 :=
  chain_cut false 2 (by decide)

private def v1402313477742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 0) (.var 2))))))))
private theorem no_v1402313477742 : ¬ MinimalInterpreter v1402313477742 :=
  chain_cut false 2 (by decide)

private def v1402313481870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.var 2))))))))
private theorem no_v1402313481870 : ¬ MinimalInterpreter v1402313481870 :=
  chain_cut false 2 (by decide)

private def v1402313469582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 2))))))))
private theorem no_v1402313469582 : ¬ MinimalInterpreter v1402313469582 :=
  chain_cut false 2 (by decide)

private def v1402313466798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 0)) (.var 2)))))))
private theorem no_v1402313466798 : ¬ MinimalInterpreter v1402313466798 :=
  chain_cut false 2 (by decide)

private def v1402312751502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v1402312751502 : ¬ MinimalInterpreter v1402312751502 :=
  chain_cut false 2 (by decide)

private def v1402312744590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.lam (.var 2))))))))
private theorem no_v1402312744590 : ¬ MinimalInterpreter v1402312744590 :=
  chain_cut false 2 (by decide)

private def v1402312702350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 0) (.lam (.var 2))))))))
private theorem no_v1402312702350 : ¬ MinimalInterpreter v1402312702350 :=
  chain_cut false 2 (by decide)

private def v1402312505742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.lam (.var 2))))))))
private theorem no_v1402312505742 : ¬ MinimalInterpreter v1402312505742 :=
  chain_cut false 2 (by decide)

private def v1402312691310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 2)))) (.app (.var 0) (.var 2)))))))
private theorem no_v1402312691310 : ¬ MinimalInterpreter v1402312691310 :=
  chain_cut false 2 (by decide)

private def v1402312494702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.app (.var 0) (.var 2)))))))
private theorem no_v1402312494702 : ¬ MinimalInterpreter v1402312494702 :=
  chain_cut false 2 (by decide)

private def v1402312695438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 0)))) (.lam (.var 2)))))))
private theorem no_v1402312695438 : ¬ MinimalInterpreter v1402312695438 :=
  chain_cut false 2 (by decide)

private def v1402312683150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.var 2)))))))
private theorem no_v1402312683150 : ¬ MinimalInterpreter v1402312683150 :=
  chain_cut false 2 (by decide)

private def v1402312498830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.lam (.var 2)))))))
private theorem no_v1402312498830 : ¬ MinimalInterpreter v1402312498830 :=
  chain_cut false 2 (by decide)

private def v1402312486542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0)) (.lam (.var 2)))))))
private theorem no_v1402312486542 : ¬ MinimalInterpreter v1402312486542 :=
  chain_cut false 2 (by decide)

private def v1402312437390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.lam (.var 2)))))))
private theorem no_v1402312437390 : ¬ MinimalInterpreter v1402312437390 :=
  chain_cut false 2 (by decide)

private def v1402312680366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.var 2))))))
private theorem no_v1402312680366 : ¬ MinimalInterpreter v1402312680366 :=
  chain_cut false 2 (by decide)

private def v1402312483758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 2)))) (.var 0)) (.var 2))))))
private theorem no_v1402312483758 : ¬ MinimalInterpreter v1402312483758 :=
  chain_cut false 2 (by decide)

private def v1402312434606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 0)) (.var 2))))))
private theorem no_v1402312434606 : ¬ MinimalInterpreter v1402312434606 :=
  chain_cut false 2 (by decide)

private def v1402332412302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.var 2))))))))))
private theorem no_v1402332412302 : ¬ MinimalInterpreter v1402332412302 :=
  chain_cut false 2 (by decide)

private def v1402332405390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.var 2)))))))))
private theorem no_v1402332405390 : ¬ MinimalInterpreter v1402332405390 :=
  chain_cut false 2 (by decide)

private def v1402332363150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v1402332363150 : ¬ MinimalInterpreter v1402332363150 :=
  chain_cut false 2 (by decide)

private def v1402332352110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 0) (.var 2))))))))
private theorem no_v1402332352110 : ¬ MinimalInterpreter v1402332352110 :=
  chain_cut false 2 (by decide)

private def v1402332356238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.var 2))))))))
private theorem no_v1402332356238 : ¬ MinimalInterpreter v1402332356238 :=
  chain_cut false 2 (by decide)

private def v1402332343950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 2))))))))
private theorem no_v1402332343950 : ¬ MinimalInterpreter v1402332343950 :=
  chain_cut false 2 (by decide)

private def v1402332341166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 0)) (.var 2)))))))
private theorem no_v1402332341166 : ¬ MinimalInterpreter v1402332341166 :=
  chain_cut false 2 (by decide)

private def v1402333591950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2))))))))))
private theorem no_v1402333591950 : ¬ MinimalInterpreter v1402333591950 :=
  chain_cut false 2 (by decide)

private def v1402333585038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 2)))))))))
private theorem no_v1402333585038 : ¬ MinimalInterpreter v1402333585038 :=
  chain_cut false 2 (by decide)

private def v1402330446222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v1402330446222 : ¬ MinimalInterpreter v1402330446222 :=
  chain_cut false 2 (by decide)

private def v1402330439310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 2))))))))
private theorem no_v1402330439310 : ¬ MinimalInterpreter v1402330439310 :=
  chain_cut false 2 (by decide)

private def v1402407909774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.var 2))))))))))
private theorem no_v1402407909774 : ¬ MinimalInterpreter v1402407909774 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407902862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.var 2)))))))))
private theorem no_v1402407902862 : ¬ MinimalInterpreter v1402407902862 :=
  chain_cut true 8 (by decide)

private def v1402407860622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v1402407860622 : ¬ MinimalInterpreter v1402407860622 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407849582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 0) (.var 2))))))))
private theorem no_v1402407849582 : ¬ MinimalInterpreter v1402407849582 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407853710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.var 2))))))))
private theorem no_v1402407853710 : ¬ MinimalInterpreter v1402407853710 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407841422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 2))))))))
private theorem no_v1402407841422 : ¬ MinimalInterpreter v1402407841422 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407838638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 0)) (.var 2)))))))
private theorem no_v1402407838638 : ¬ MinimalInterpreter v1402407838638 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402409089422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2))))))))))
private theorem no_v1402409089422 : ¬ MinimalInterpreter v1402409089422 :=
  fun he => _root_.Blc.Floor40.WeightedRows.ex_e302897461646 he.1

private def v1402409082510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 2)))))))))
private theorem no_v1402409082510 : ¬ MinimalInterpreter v1402409082510 :=
  w_cut false 0 (by decide)

private def v1402413808014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2))))))))))
private theorem no_v1402413808014 : ¬ MinimalInterpreter v1402413808014 :=
  fun he => _root_.Certgen.R302902180238.excluded he.1

private def v1402413801102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 2)))))))))
private theorem no_v1402413801102 : ¬ MinimalInterpreter v1402413801102 :=
  fun he => _root_.Certgen.R302902173326.excluded he.1

private def v1402401225102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v1402401225102 : ¬ MinimalInterpreter v1402401225102 :=
  w_cut false 0 (by decide)

private def v1402401218190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 2))))))))
private theorem no_v1402401218190 : ¬ MinimalInterpreter v1402401218190 :=
  w_cut false 0 (by decide)

theorem four93 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,0,2,0,2]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,0,2,0,2] = [v1402313537934,v1402313531022,v1402313488782,v1402313477742,v1402313481870,v1402313469582,v1402313466798,v1402312751502,v1402312744590,v1402312702350,v1402312505742,v1402312691310,v1402312494702,v1402312695438,v1402312683150,v1402312498830,v1402312486542,v1402312437390,v1402312680366,v1402312483758,v1402312434606,v1402332412302,v1402332405390,v1402332363150,v1402332352110,v1402332356238,v1402332343950,v1402332341166,v1402333591950,v1402333585038,v1402330446222,v1402330439310,v1402407909774,v1402407902862,v1402407860622,v1402407849582,v1402407853710,v1402407841422,v1402407838638,v1402409089422,v1402409082510,v1402413808014,v1402413801102,v1402401225102,v1402401218190] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313537934) (.cons (no_v1402313531022) (.cons (no_v1402313488782) (.cons (no_v1402313477742) (.cons (no_v1402313481870) (.cons (no_v1402313469582) (.cons (no_v1402313466798) (.cons (no_v1402312751502) (.cons (no_v1402312744590) (.cons (no_v1402312702350) (.cons (no_v1402312505742) (.cons (no_v1402312691310) (.cons (no_v1402312494702) (.cons (no_v1402312695438) (.cons (no_v1402312683150) (.cons (no_v1402312498830) (.cons (no_v1402312486542) (.cons (no_v1402312437390) (.cons (no_v1402312680366) (.cons (no_v1402312483758) (.cons (no_v1402312434606) (.cons (no_v1402332412302) (.cons (no_v1402332405390) (.cons (no_v1402332363150) (.cons (no_v1402332352110) (.cons (no_v1402332356238) (.cons (no_v1402332343950) (.cons (no_v1402332341166) (.cons (no_v1402333591950) (.cons (no_v1402333585038) (.cons (no_v1402330446222) (.cons (no_v1402330439310) (.cons (no_v1402407909774) (.cons (no_v1402407902862) (.cons (no_v1402407860622) (.cons (no_v1402407849582) (.cons (no_v1402407853710) (.cons (no_v1402407841422) (.cons (no_v1402407838638) (.cons (no_v1402409089422) (.cons (no_v1402409082510) (.cons (no_v1402413808014) (.cons (no_v1402413801102) (.cons (no_v1402401225102) (.cons (no_v1402401218190) .nil)))))))))))))))))))))))))))))))))))))))))))))

private def v1402308501110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1))))))))))
private theorem no_v1402308501110 : ¬ MinimalInterpreter v1402308501110 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1))))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1))))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308499382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1)))))))))
private theorem no_v1402308499382 : ¬ MinimalInterpreter v1402308499382 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1)))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1)))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308488822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 1)))))))))
private theorem no_v1402308488822 : ¬ MinimalInterpreter v1402308488822 :=
  cost_cut false 2 (by decide)

private def v1402308487094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 1))))))))
private theorem no_v1402308487094 : ¬ MinimalInterpreter v1402308487094 :=
  cost_cut false 2 (by decide)

private def v1402308484022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 1))))))))
private theorem no_v1402308484022 : ¬ MinimalInterpreter v1402308484022 :=
  cost_cut false 2 (by decide)

private def v1402308304502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 1)))))))))
private theorem no_v1402308304502 : ¬ MinimalInterpreter v1402308304502 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308302774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 1))))))))
private theorem no_v1402308302774 : ¬ MinimalInterpreter v1402308302774 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308292214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 1) (.var 1))))))))
private theorem no_v1402308292214 : ¬ MinimalInterpreter v1402308292214 :=
  cost_cut false 2 (by decide)

private def v1402308243062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.var 1))))))))
private theorem no_v1402308243062 : ¬ MinimalInterpreter v1402308243062 :=
  cost_cut false 2 (by decide)

private def v1402308290486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 1)))))))
private theorem no_v1402308290486 : ¬ MinimalInterpreter v1402308290486 :=
  cost_cut false 2 (by decide)

private def v1402308287414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))) (.var 1)))))))
private theorem no_v1402308287414 : ¬ MinimalInterpreter v1402308287414 :=
  cost_cut false 2 (by decide)

private def v1402308241334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.var 1)))))))
private theorem no_v1402308241334 : ¬ MinimalInterpreter v1402308241334 :=
  cost_cut false 2 (by decide)

private def v1402308238262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)) (.var 1)))))))
private theorem no_v1402308238262 : ¬ MinimalInterpreter v1402308238262 :=
  cost_cut false 2 (by decide)

private def v1402308225974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.var 1)))))))
private theorem no_v1402308225974 : ¬ MinimalInterpreter v1402308225974 :=
  cost_cut false 2 (by decide)

private def v1402313219702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1))))))))))
private theorem no_v1402313219702 : ¬ MinimalInterpreter v1402313219702 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1))))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402313217974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1)))))))))
private theorem no_v1402313217974 : ¬ MinimalInterpreter v1402313217974 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402313207414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 1)))))))))
private theorem no_v1402313207414 : ¬ MinimalInterpreter v1402313207414 :=
  cost_cut false 2 (by decide)

private def v1402313205686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 1))))))))
private theorem no_v1402313205686 : ¬ MinimalInterpreter v1402313205686 :=
  cost_cut false 2 (by decide)

private def v1402313202614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 1))))))))
private theorem no_v1402313202614 : ¬ MinimalInterpreter v1402313202614 :=
  cost_cut false 2 (by decide)

private def v1402312615862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.var 1))))))
private theorem no_v1402312615862 : ¬ MinimalInterpreter v1402312615862 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.var 1)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.var 1))) (.app (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 1)) (.var 0) (by decide) (by decide))))))

private def v1402312612790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))) (.var 1))))))
private theorem no_v1402312612790 : ¬ MinimalInterpreter v1402312612790 :=
  cost_cut false 2 (by decide)

private def v1402313537990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 1))))))))))
private theorem no_v1402313537990 : ¬ MinimalInterpreter v1402313537990 :=
  chain_cut false 2 (by decide)

private def v1402313531078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))))))
private theorem no_v1402313531078 : ¬ MinimalInterpreter v1402313531078 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 1)))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1))))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313530934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.lam (.var 1))) (.var 1))))))))
private theorem no_v1402313530934 : ¬ MinimalInterpreter v1402313530934 :=
  chain_cut false 2 (by decide)

private def v1402313488838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v1402313488838 : ¬ MinimalInterpreter v1402313488838 :=
  chain_cut false 2 (by decide)

private def v1402313481926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 1))))))))
private theorem no_v1402313481926 : ¬ MinimalInterpreter v1402313481926 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (so_dead (by decide) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313469638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 1))))))))
private theorem no_v1402313469638 : ¬ MinimalInterpreter v1402313469638 :=
  chain_cut false 2 (by decide)

private def v1402313481782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.lam (.var 1)))) (.var 1)))))))
private theorem no_v1402313481782 : ¬ MinimalInterpreter v1402313481782 :=
  chain_cut false 2 (by decide)

private def v1402313469494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 1))) (.var 1)))))))
private theorem no_v1402313469494 : ¬ MinimalInterpreter v1402313469494 :=
  chain_cut false 2 (by decide)

private def v1402312751558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v1402312751558 : ¬ MinimalInterpreter v1402312751558 :=
  chain_cut false 2 (by decide)

private def v1402312744646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))))
private theorem no_v1402312744646 : ¬ MinimalInterpreter v1402312744646 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 1))))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312744502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.lam (.var 1))) (.var 1)))))))
private theorem no_v1402312744502 : ¬ MinimalInterpreter v1402312744502 :=
  chain_cut false 2 (by decide)

private def v1402312702406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 1) (.lam (.var 1))))))))
private theorem no_v1402312702406 : ¬ MinimalInterpreter v1402312702406 :=
  chain_cut false 2 (by decide)

private def v1402312505798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.lam (.var 1))))))))
private theorem no_v1402312505798 : ¬ MinimalInterpreter v1402312505798 :=
  chain_cut false 2 (by decide)

private def v1402312695494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.lam (.var 1)))))))
private theorem no_v1402312695494 : ¬ MinimalInterpreter v1402312695494 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 1)))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312683206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))) (.lam (.var 1)))))))
private theorem no_v1402312683206 : ¬ MinimalInterpreter v1402312683206 :=
  chain_cut false 2 (by decide)

private def v1402312498886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.lam (.var 1)))))))
private theorem no_v1402312498886 : ¬ MinimalInterpreter v1402312498886 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 1)))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312486598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)) (.lam (.var 1)))))))
private theorem no_v1402312486598 : ¬ MinimalInterpreter v1402312486598 :=
  chain_cut false 2 (by decide)

private def v1402312437446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.lam (.var 1)))))))
private theorem no_v1402312437446 : ¬ MinimalInterpreter v1402312437446 :=
  chain_cut false 2 (by decide)

private def v1402312695350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 1))))) (.var 1))))))
private theorem no_v1402312695350 : ¬ MinimalInterpreter v1402312695350 :=
  chain_cut false 2 (by decide)

private def v1402312683062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.var 1)))) (.var 1))))))
private theorem no_v1402312683062 : ¬ MinimalInterpreter v1402312683062 :=
  chain_cut false 2 (by decide)

private def v1402312498742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 1)))) (.var 1))))))
private theorem no_v1402312498742 : ¬ MinimalInterpreter v1402312498742 :=
  chain_cut false 2 (by decide)

private def v1402312486454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.var 1))) (.var 1))))))
private theorem no_v1402312486454 : ¬ MinimalInterpreter v1402312486454 :=
  chain_cut false 2 (by decide)

private def v1402312437302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 1))) (.var 1))))))
private theorem no_v1402312437302 : ¬ MinimalInterpreter v1402312437302 :=
  chain_cut false 2 (by decide)

private def v1402332094070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1))))))))))
private theorem no_v1402332094070 : ¬ MinimalInterpreter v1402332094070 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402332092342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1)))))))))
private theorem no_v1402332092342 : ¬ MinimalInterpreter v1402332092342 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402332081782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 1)))))))))
private theorem no_v1402332081782 : ¬ MinimalInterpreter v1402332081782 :=
  cost_cut false 2 (by decide)

private def v1402332080054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 1))))))))
private theorem no_v1402332080054 : ¬ MinimalInterpreter v1402332080054 :=
  cost_cut false 2 (by decide)

private def v1402332076982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 1))))))))
private theorem no_v1402332076982 : ¬ MinimalInterpreter v1402332076982 :=
  cost_cut false 2 (by decide)

private def v1402332412358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 1))))))))))
private theorem no_v1402332412358 : ¬ MinimalInterpreter v1402332412358 :=
  chain_cut false 2 (by decide)

private def v1402332405446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))))))
private theorem no_v1402332405446 : ¬ MinimalInterpreter v1402332405446 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402332405302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 1))) (.var 1))))))))
private theorem no_v1402332405302 : ¬ MinimalInterpreter v1402332405302 :=
  chain_cut false 2 (by decide)

private def v1402332363206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v1402332363206 : ¬ MinimalInterpreter v1402332363206 :=
  chain_cut false 2 (by decide)

private def v1402332356294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 1))))))))
private theorem no_v1402332356294 : ¬ MinimalInterpreter v1402332356294 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402332344006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 1))))))))
private theorem no_v1402332344006 : ¬ MinimalInterpreter v1402332344006 :=
  chain_cut false 2 (by decide)

private def v1402332356150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 1)))) (.var 1)))))))
private theorem no_v1402332356150 : ¬ MinimalInterpreter v1402332356150 :=
  chain_cut false 2 (by decide)

private def v1402332343862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 1))) (.var 1)))))))
private theorem no_v1402332343862 : ¬ MinimalInterpreter v1402332343862 :=
  chain_cut false 2 (by decide)

private def v1402333592006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1))))))))))
private theorem no_v1402333592006 : ¬ MinimalInterpreter v1402333592006 :=
  chain_cut false 2 (by decide)

private def v1402333585094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))))))
private theorem no_v1402333585094 : ¬ MinimalInterpreter v1402333585094 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))) (.app (.var 0) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1402333584950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 1))) (.var 1))))))))
private theorem no_v1402333584950 : ¬ MinimalInterpreter v1402333584950 :=
  chain_cut false 2 (by decide)

private def v1402330446278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v1402330446278 : ¬ MinimalInterpreter v1402330446278 :=
  chain_cut false 2 (by decide)

private def v1402330439366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))))
private theorem no_v1402330439366 : ¬ MinimalInterpreter v1402330439366 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))) (.app (.app (.var 0) (.var 0)) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402330439222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.lam (.var 1))) (.var 1)))))))
private theorem no_v1402330439222 : ¬ MinimalInterpreter v1402330439222 :=
  chain_cut false 2 (by decide)

private def v1402329996998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (.var 1))))))
private theorem no_v1402329996998 : ¬ MinimalInterpreter v1402329996998 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (.var 1)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (.var 1)))) (.app (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (so_dead (by decide) (.var 1))) (.var 0) (by decide) (by decide)))))

private def v1402329984710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))) (.lam (.var 1))))))
private theorem no_v1402329984710 : ¬ MinimalInterpreter v1402329984710 :=
  chain_cut false 2 (by decide)

private def v1402407909830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 1))))))))))
private theorem no_v1402407909830 : ¬ MinimalInterpreter v1402407909830 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407902918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))))))
private theorem no_v1402407902918 : ¬ MinimalInterpreter v1402407902918 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402407902774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 1))) (.var 1))))))))
private theorem no_v1402407902774 : ¬ MinimalInterpreter v1402407902774 :=
  chain_cut true 6 (by decide)

private def v1402407860678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v1402407860678 : ¬ MinimalInterpreter v1402407860678 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407853766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 1))))))))
private theorem no_v1402407853766 : ¬ MinimalInterpreter v1402407853766 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402407841478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 1))))))))
private theorem no_v1402407841478 : ¬ MinimalInterpreter v1402407841478 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407853622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 1)))) (.var 1)))))))
private theorem no_v1402407853622 : ¬ MinimalInterpreter v1402407853622 :=
  chain_cut true 6 (by decide)

private def v1402407841334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 1))) (.var 1)))))))
private theorem no_v1402407841334 : ¬ MinimalInterpreter v1402407841334 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402409089478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1))))))))))
private theorem no_v1402409089478 : ¬ MinimalInterpreter v1402409089478 :=
  fun he => _root_.Blc.Floor40.WeightedRows.ex_e302897461702 he.1

private def v1402409082566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))))))
private theorem no_v1402409082566 : ¬ MinimalInterpreter v1402409082566 :=
  w_cut false 0 (by decide)

private def v1402409082422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 1))) (.var 1))))))))
private theorem no_v1402409082422 : ¬ MinimalInterpreter v1402409082422 :=
  cycle_cut 4 7 (by decide) (by decide)

private def v1402413808070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1))))))))))
private theorem no_v1402413808070 : ¬ MinimalInterpreter v1402413808070 :=
  fun he => _root_.Blc.Floor40.WeightedRows.ex_e302902180294 he.1

private def v1402413801158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))))))
private theorem no_v1402413801158 : ¬ MinimalInterpreter v1402413801158 :=
  w_cut false 0 (by decide)

private def v1402413801014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.var 1))))))))
private theorem no_v1402413801014 : ¬ MinimalInterpreter v1402413801014 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)

private def v1402401225158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v1402401225158 : ¬ MinimalInterpreter v1402401225158 :=
  w_cut false 0 (by decide)

private def v1402401218246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))))
private theorem no_v1402401218246 : ¬ MinimalInterpreter v1402401218246 :=
  w_cut false 0 (by decide)

private def v1402401218102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.var 1)))))))
private theorem no_v1402401218102 : ¬ MinimalInterpreter v1402401218102 :=
  w_cut false 0 (by decide)

private def v1402399203014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (.var 1)))))
private theorem no_v1402399203014 : ¬ MinimalInterpreter v1402399203014 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (so_dead (by decide) (.var 1))))))

private def v1402399190726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))) (.lam (.var 1)))))
private theorem no_v1402399190726 : ¬ MinimalInterpreter v1402399190726 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)

theorem four94 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,0,2,1,1]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,0,2,1,1] = [v1402308501110,v1402308499382,v1402308488822,v1402308487094,v1402308484022,v1402308304502,v1402308302774,v1402308292214,v1402308243062,v1402308290486,v1402308287414,v1402308241334,v1402308238262,v1402308225974,v1402313219702,v1402313217974,v1402313207414,v1402313205686,v1402313202614,v1402312615862,v1402312612790,v1402313537990,v1402313531078,v1402313530934,v1402313488838,v1402313481926,v1402313469638,v1402313481782,v1402313469494,v1402312751558,v1402312744646,v1402312744502,v1402312702406,v1402312505798,v1402312695494,v1402312683206,v1402312498886,v1402312486598,v1402312437446,v1402312695350,v1402312683062,v1402312498742,v1402312486454,v1402312437302,v1402332094070,v1402332092342,v1402332081782,v1402332080054,v1402332076982,v1402332412358,v1402332405446,v1402332405302,v1402332363206,v1402332356294,v1402332344006,v1402332356150,v1402332343862,v1402333592006,v1402333585094,v1402333584950,v1402330446278,v1402330439366,v1402330439222,v1402329996998,v1402329984710,v1402407909830,v1402407902918,v1402407902774,v1402407860678,v1402407853766,v1402407841478,v1402407853622,v1402407841334,v1402409089478,v1402409082566,v1402409082422,v1402413808070,v1402413801158,v1402413801014,v1402401225158,v1402401218246,v1402401218102,v1402399203014,v1402399190726] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308501110) (.cons (no_v1402308499382) (.cons (no_v1402308488822) (.cons (no_v1402308487094) (.cons (no_v1402308484022) (.cons (no_v1402308304502) (.cons (no_v1402308302774) (.cons (no_v1402308292214) (.cons (no_v1402308243062) (.cons (no_v1402308290486) (.cons (no_v1402308287414) (.cons (no_v1402308241334) (.cons (no_v1402308238262) (.cons (no_v1402308225974) (.cons (no_v1402313219702) (.cons (no_v1402313217974) (.cons (no_v1402313207414) (.cons (no_v1402313205686) (.cons (no_v1402313202614) (.cons (no_v1402312615862) (.cons (no_v1402312612790) (.cons (no_v1402313537990) (.cons (no_v1402313531078) (.cons (no_v1402313530934) (.cons (no_v1402313488838) (.cons (no_v1402313481926) (.cons (no_v1402313469638) (.cons (no_v1402313481782) (.cons (no_v1402313469494) (.cons (no_v1402312751558) (.cons (no_v1402312744646) (.cons (no_v1402312744502) (.cons (no_v1402312702406) (.cons (no_v1402312505798) (.cons (no_v1402312695494) (.cons (no_v1402312683206) (.cons (no_v1402312498886) (.cons (no_v1402312486598) (.cons (no_v1402312437446) (.cons (no_v1402312695350) (.cons (no_v1402312683062) (.cons (no_v1402312498742) (.cons (no_v1402312486454) (.cons (no_v1402312437302) (.cons (no_v1402332094070) (.cons (no_v1402332092342) (.cons (no_v1402332081782) (.cons (no_v1402332080054) (.cons (no_v1402332076982) (.cons (no_v1402332412358) (.cons (no_v1402332405446) (.cons (no_v1402332405302) (.cons (no_v1402332363206) (.cons (no_v1402332356294) (.cons (no_v1402332344006) (.cons (no_v1402332356150) (.cons (no_v1402332343862) (.cons (no_v1402333592006) (.cons (no_v1402333585094) (.cons (no_v1402333584950) (.cons (no_v1402330446278) (.cons (no_v1402330439366) (.cons (no_v1402330439222) (.cons (no_v1402329996998) (.cons (no_v1402329984710) (.cons (no_v1402407909830) (.cons (no_v1402407902918) (.cons (no_v1402407902774) (.cons (no_v1402407860678) (.cons (no_v1402407853766) (.cons (no_v1402407841478) (.cons (no_v1402407853622) (.cons (no_v1402407841334) (.cons (no_v1402409089478) (.cons (no_v1402409082566) (.cons (no_v1402409082422) (.cons (no_v1402413808070) (.cons (no_v1402413801158) (.cons (no_v1402413801014) (.cons (no_v1402401225158) (.cons (no_v1402401218246) (.cons (no_v1402401218102) (.cons (no_v1402399203014) (.cons (no_v1402399190726) .nil))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

private def v1402313530938 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))))
private theorem no_v1402313530938 : ¬ MinimalInterpreter v1402313530938 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313477754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 2) (.var 0))))))))
private theorem no_v1402313477754 : ¬ MinimalInterpreter v1402313477754 :=
  chain_cut false 2 (by decide)

private def v1402313481786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0)))))))
private theorem no_v1402313481786 : ¬ MinimalInterpreter v1402313481786 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.var 0))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313469498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 2))) (.var 0)))))))
private theorem no_v1402313469498 : ¬ MinimalInterpreter v1402313469498 :=
  chain_cut false 2 (by decide)

private def v1402313466810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 2)) (.var 0)))))))
private theorem no_v1402313466810 : ¬ MinimalInterpreter v1402313466810 :=
  chain_cut false 2 (by decide)

private def v1402312744506 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))
private theorem no_v1402312744506 : ¬ MinimalInterpreter v1402312744506 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312691322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 2)))) (.app (.var 2) (.var 0)))))))
private theorem no_v1402312691322 : ¬ MinimalInterpreter v1402312691322 :=
  chain_cut false 2 (by decide)

private def v1402312494714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.app (.var 2) (.var 0)))))))
private theorem no_v1402312494714 : ¬ MinimalInterpreter v1402312494714 :=
  chain_cut false 2 (by decide)

private def v1402312695354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2))))) (.var 0))))))
private theorem no_v1402312695354 : ¬ MinimalInterpreter v1402312695354 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2))))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2))))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312683066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.var 2)))) (.var 0))))))
private theorem no_v1402312683066 : ¬ MinimalInterpreter v1402312683066 :=
  chain_cut false 2 (by decide)

private def v1402312680378 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 2))) (.var 2))) (.var 0))))))
private theorem no_v1402312680378 : ¬ MinimalInterpreter v1402312680378 :=
  chain_cut false 2 (by decide)

private def v1402312498746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2)))) (.var 0))))))
private theorem no_v1402312498746 : ¬ MinimalInterpreter v1402312498746 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312486458 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.var 2))) (.var 0))))))
private theorem no_v1402312486458 : ¬ MinimalInterpreter v1402312486458 :=
  chain_cut false 2 (by decide)

private def v1402312437306 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 2))) (.var 0))))))
private theorem no_v1402312437306 : ¬ MinimalInterpreter v1402312437306 :=
  chain_cut false 2 (by decide)

private def v1402312483770 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 2)))) (.var 2)) (.var 0))))))
private theorem no_v1402312483770 : ¬ MinimalInterpreter v1402312483770 :=
  chain_cut false 2 (by decide)

private def v1402312434618 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 2)) (.var 0))))))
private theorem no_v1402312434618 : ¬ MinimalInterpreter v1402312434618 :=
  chain_cut false 2 (by decide)

private def v1402332405306 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))))
private theorem no_v1402332405306 : ¬ MinimalInterpreter v1402332405306 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402332352122 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 2) (.var 0))))))))
private theorem no_v1402332352122 : ¬ MinimalInterpreter v1402332352122 :=
  chain_cut false 2 (by decide)

private def v1402332356154 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0)))))))
private theorem no_v1402332356154 : ¬ MinimalInterpreter v1402332356154 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402332343866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 2))) (.var 0)))))))
private theorem no_v1402332343866 : ¬ MinimalInterpreter v1402332343866 :=
  chain_cut false 2 (by decide)

private def v1402332341178 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 2)) (.var 0)))))))
private theorem no_v1402332341178 : ¬ MinimalInterpreter v1402332341178 :=
  chain_cut false 2 (by decide)

private def v1402333584954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))))
private theorem no_v1402333584954 : ¬ MinimalInterpreter v1402333584954 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))) (.app (.var 0) (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1402330439226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))
private theorem no_v1402330439226 : ¬ MinimalInterpreter v1402330439226 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402329996858 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))) (.var 0)))))
private theorem no_v1402329996858 : ¬ MinimalInterpreter v1402329996858 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))) (.var 0))) (.app (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0)) (.var 0) (by decide) (by decide)))))

private def v1402329984570 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))) (.var 0)))))
private theorem no_v1402329984570 : ¬ MinimalInterpreter v1402329984570 :=
  chain_cut false 2 (by decide)

private def v1402329981882 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))) (.var 0)))))
private theorem no_v1402329981882 : ¬ MinimalInterpreter v1402329981882 :=
  chain_cut false 2 (by decide)

private def v1402407902778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))))
private theorem no_v1402407902778 : ¬ MinimalInterpreter v1402407902778 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402407849594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 2) (.var 0))))))))
private theorem no_v1402407849594 : ¬ MinimalInterpreter v1402407849594 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407853626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0)))))))
private theorem no_v1402407853626 : ¬ MinimalInterpreter v1402407853626 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402407841338 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 2))) (.var 0)))))))
private theorem no_v1402407841338 : ¬ MinimalInterpreter v1402407841338 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407838650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 2)) (.var 0)))))))
private theorem no_v1402407838650 : ¬ MinimalInterpreter v1402407838650 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402409082426 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))))
private theorem no_v1402409082426 : ¬ MinimalInterpreter v1402409082426 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402413801018 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))))
private theorem no_v1402413801018 : ¬ MinimalInterpreter v1402413801018 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402401218106 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))
private theorem no_v1402401218106 : ¬ MinimalInterpreter v1402401218106 :=
  w_cut false 0 (by decide)

private def v1402399202874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))) (.var 0))))
private theorem no_v1402399202874 : ¬ MinimalInterpreter v1402399202874 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0)))))

private def v1402399190586 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 2)))))) (.var 0))))
private theorem no_v1402399190586 : ¬ MinimalInterpreter v1402399190586 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)

private def v1402399187898 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 2))))) (.var 0))))
private theorem no_v1402399187898 : ¬ MinimalInterpreter v1402399187898 :=
  cycle_cut 12 2 (by decide) (by decide)

theorem four95 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,0,2,2,0]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,0,2,2,0] = [v1402313530938,v1402313477754,v1402313481786,v1402313469498,v1402313466810,v1402312744506,v1402312691322,v1402312494714,v1402312695354,v1402312683066,v1402312680378,v1402312498746,v1402312486458,v1402312437306,v1402312483770,v1402312434618,v1402332405306,v1402332352122,v1402332356154,v1402332343866,v1402332341178,v1402333584954,v1402330439226,v1402329996858,v1402329984570,v1402329981882,v1402407902778,v1402407849594,v1402407853626,v1402407841338,v1402407838650,v1402409082426,v1402413801018,v1402401218106,v1402399202874,v1402399190586,v1402399187898] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313530938) (.cons (no_v1402313477754) (.cons (no_v1402313481786) (.cons (no_v1402313469498) (.cons (no_v1402313466810) (.cons (no_v1402312744506) (.cons (no_v1402312691322) (.cons (no_v1402312494714) (.cons (no_v1402312695354) (.cons (no_v1402312683066) (.cons (no_v1402312680378) (.cons (no_v1402312498746) (.cons (no_v1402312486458) (.cons (no_v1402312437306) (.cons (no_v1402312483770) (.cons (no_v1402312434618) (.cons (no_v1402332405306) (.cons (no_v1402332352122) (.cons (no_v1402332356154) (.cons (no_v1402332343866) (.cons (no_v1402332341178) (.cons (no_v1402333584954) (.cons (no_v1402330439226) (.cons (no_v1402329996858) (.cons (no_v1402329984570) (.cons (no_v1402329981882) (.cons (no_v1402407902778) (.cons (no_v1402407849594) (.cons (no_v1402407853626) (.cons (no_v1402407841338) (.cons (no_v1402407838650) (.cons (no_v1402409082426) (.cons (no_v1402413801018) (.cons (no_v1402401218106) (.cons (no_v1402399202874) (.cons (no_v1402399190586) (.cons (no_v1402399187898) .nil)))))))))))))))))))))))))))))))))))))

private def v1402308501302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402308501302 : ¬ MinimalInterpreter v1402308501302 :=
  chain_cut false 2 (by decide)

private def v1402308499414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 3) (.var 0)) (.var 1)))))))))
private theorem no_v1402308499414 : ¬ MinimalInterpreter v1402308499414 :=
  chain_cut false 2 (by decide)

private def v1402308489014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 3)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402308489014 : ¬ MinimalInterpreter v1402308489014 :=
  chain_cut false 2 (by decide)

private def v1402308487126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 3) (.var 0))) (.var 1))))))))
private theorem no_v1402308487126 : ¬ MinimalInterpreter v1402308487126 :=
  chain_cut false 2 (by decide)

private def v1402308484054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 1))))))))
private theorem no_v1402308484054 : ¬ MinimalInterpreter v1402308484054 :=
  chain_cut false 2 (by decide)

private def v1402308304694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402308304694 : ¬ MinimalInterpreter v1402308304694 :=
  chain_cut false 2 (by decide)

private def v1402308302806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 3) (.var 0)) (.var 1))))))))
private theorem no_v1402308302806 : ¬ MinimalInterpreter v1402308302806 :=
  chain_cut false 2 (by decide)

private def v1402308292406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 3))) (.app (.var 0) (.var 1))))))))
private theorem no_v1402308292406 : ¬ MinimalInterpreter v1402308292406 :=
  chain_cut false 2 (by decide)

private def v1402308243254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.app (.var 0) (.var 1))))))))
private theorem no_v1402308243254 : ¬ MinimalInterpreter v1402308243254 :=
  chain_cut false 2 (by decide)

private def v1402308290518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 0)))) (.var 1)))))))
private theorem no_v1402308290518 : ¬ MinimalInterpreter v1402308290518 :=
  chain_cut false 2 (by decide)

private def v1402308287446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 3)) (.var 0))) (.var 1)))))))
private theorem no_v1402308287446 : ¬ MinimalInterpreter v1402308287446 :=
  chain_cut false 2 (by decide)

private def v1402308241366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 0))) (.var 1)))))))
private theorem no_v1402308241366 : ¬ MinimalInterpreter v1402308241366 :=
  chain_cut false 2 (by decide)

private def v1402308238294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 3))) (.var 0)) (.var 1)))))))
private theorem no_v1402308238294 : ¬ MinimalInterpreter v1402308238294 :=
  chain_cut false 2 (by decide)

private def v1402308226006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 0)) (.var 1)))))))
private theorem no_v1402308226006 : ¬ MinimalInterpreter v1402308226006 :=
  chain_cut false 2 (by decide)

private def v1402313219894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402313219894 : ¬ MinimalInterpreter v1402313219894 :=
  chain_cut false 2 (by decide)

private def v1402313218006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 3) (.var 0)) (.var 1)))))))))
private theorem no_v1402313218006 : ¬ MinimalInterpreter v1402313218006 :=
  chain_cut false 2 (by decide)

private def v1402313207606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402313207606 : ¬ MinimalInterpreter v1402313207606 :=
  chain_cut false 2 (by decide)

private def v1402313205718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 3) (.var 0))) (.var 1))))))))
private theorem no_v1402313205718 : ¬ MinimalInterpreter v1402313205718 :=
  chain_cut false 2 (by decide)

private def v1402313202646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 1))))))))
private theorem no_v1402313202646 : ¬ MinimalInterpreter v1402313202646 :=
  chain_cut false 2 (by decide)

private def v1402313514806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402313514806 : ¬ MinimalInterpreter v1402313514806 :=
  chain_cut false 2 (by decide)

private def v1402313512918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 3) (.var 0)) (.var 1)))))))))
private theorem no_v1402313512918 : ¬ MinimalInterpreter v1402313512918 :=
  chain_cut false 2 (by decide)

private def v1402312728374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 3) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402312728374 : ¬ MinimalInterpreter v1402312728374 :=
  chain_cut false 2 (by decide)

private def v1402312726486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 3) (.var 0)) (.var 1))))))))
private theorem no_v1402312726486 : ¬ MinimalInterpreter v1402312726486 :=
  chain_cut false 2 (by decide)

private def v1402313477942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 0) (.var 1))))))))
private theorem no_v1402313477942 : ¬ MinimalInterpreter v1402313477942 :=
  chain_cut false 2 (by decide)

private def v1402313466838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.var 1)))))))
private theorem no_v1402313466838 : ¬ MinimalInterpreter v1402313466838 :=
  chain_cut false 2 (by decide)

private def v1402312691510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 3)))) (.app (.var 0) (.var 1)))))))
private theorem no_v1402312691510 : ¬ MinimalInterpreter v1402312691510 :=
  chain_cut false 2 (by decide)

private def v1402312494902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.app (.var 0) (.var 1)))))))
private theorem no_v1402312494902 : ¬ MinimalInterpreter v1402312494902 :=
  chain_cut false 2 (by decide)

private def v1402312680406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 3))) (.var 0))) (.var 1))))))
private theorem no_v1402312680406 : ¬ MinimalInterpreter v1402312680406 :=
  chain_cut false 2 (by decide)

private def v1402312483798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 3)))) (.var 0)) (.var 1))))))
private theorem no_v1402312483798 : ¬ MinimalInterpreter v1402312483798 :=
  chain_cut false 2 (by decide)

private def v1402312434646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.var 0)) (.var 1))))))
private theorem no_v1402312434646 : ¬ MinimalInterpreter v1402312434646 :=
  chain_cut false 2 (by decide)

private def v1402332352310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 0) (.var 1))))))))
private theorem no_v1402332352310 : ¬ MinimalInterpreter v1402332352310 :=
  chain_cut false 2 (by decide)

private def v1402332341206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.var 1)))))))
private theorem no_v1402332341206 : ¬ MinimalInterpreter v1402332341206 :=
  chain_cut false 2 (by decide)

private def v1402407591734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402407591734 : ¬ MinimalInterpreter v1402407591734 :=
  chain_cut false 4 (by decide)

private def v1402407589846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 0)) (.var 1)))))))))
private theorem no_v1402407589846 : ¬ MinimalInterpreter v1402407589846 :=
  chain_cut false 4 (by decide)

private def v1402407579446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402407579446 : ¬ MinimalInterpreter v1402407579446 :=
  chain_cut false 4 (by decide)

private def v1402407577558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 0))) (.var 1))))))))
private theorem no_v1402407577558 : ¬ MinimalInterpreter v1402407577558 :=
  chain_cut false 4 (by decide)

private def v1402407574486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 1))))))))
private theorem no_v1402407574486 : ¬ MinimalInterpreter v1402407574486 :=
  chain_cut false 4 (by decide)

private def v1402407886646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402407886646 : ¬ MinimalInterpreter v1402407886646 :=
  chain_cut false 4 (by decide)

private def v1402407884758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 0)) (.var 1)))))))))
private theorem no_v1402407884758 : ¬ MinimalInterpreter v1402407884758 :=
  chain_cut false 4 (by decide)

private def v1402407849782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 0) (.var 1))))))))
private theorem no_v1402407849782 : ¬ MinimalInterpreter v1402407849782 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407838678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.var 1)))))))
private theorem no_v1402407838678 : ¬ MinimalInterpreter v1402407838678 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402413784886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402413784886 : ¬ MinimalInterpreter v1402413784886 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)

private def v1402413782998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 1)))))))))
private theorem no_v1402413782998 : ¬ MinimalInterpreter v1402413782998 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402401201974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402401201974 : ¬ MinimalInterpreter v1402401201974 :=
  w_cut false 0 (by decide)

private def v1402401200086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 1))))))))
private theorem no_v1402401200086 : ¬ MinimalInterpreter v1402401200086 :=
  w_cut false 0 (by decide)

theorem four96 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,0,3,0,1]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,0,3,0,1] = [v1402308501302,v1402308499414,v1402308489014,v1402308487126,v1402308484054,v1402308304694,v1402308302806,v1402308292406,v1402308243254,v1402308290518,v1402308287446,v1402308241366,v1402308238294,v1402308226006,v1402313219894,v1402313218006,v1402313207606,v1402313205718,v1402313202646,v1402313514806,v1402313512918,v1402312728374,v1402312726486,v1402313477942,v1402313466838,v1402312691510,v1402312494902,v1402312680406,v1402312483798,v1402312434646,v1402332352310,v1402332341206,v1402407591734,v1402407589846,v1402407579446,v1402407577558,v1402407574486,v1402407886646,v1402407884758,v1402407849782,v1402407838678,v1402413784886,v1402413782998,v1402401201974,v1402401200086] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308501302) (.cons (no_v1402308499414) (.cons (no_v1402308489014) (.cons (no_v1402308487126) (.cons (no_v1402308484054) (.cons (no_v1402308304694) (.cons (no_v1402308302806) (.cons (no_v1402308292406) (.cons (no_v1402308243254) (.cons (no_v1402308290518) (.cons (no_v1402308287446) (.cons (no_v1402308241366) (.cons (no_v1402308238294) (.cons (no_v1402308226006) (.cons (no_v1402313219894) (.cons (no_v1402313218006) (.cons (no_v1402313207606) (.cons (no_v1402313205718) (.cons (no_v1402313202646) (.cons (no_v1402313514806) (.cons (no_v1402313512918) (.cons (no_v1402312728374) (.cons (no_v1402312726486) (.cons (no_v1402313477942) (.cons (no_v1402313466838) (.cons (no_v1402312691510) (.cons (no_v1402312494902) (.cons (no_v1402312680406) (.cons (no_v1402312483798) (.cons (no_v1402312434646) (.cons (no_v1402332352310) (.cons (no_v1402332341206) (.cons (no_v1402407591734) (.cons (no_v1402407589846) (.cons (no_v1402407579446) (.cons (no_v1402407577558) (.cons (no_v1402407574486) (.cons (no_v1402407886646) (.cons (no_v1402407884758) (.cons (no_v1402407849782) (.cons (no_v1402407838678) (.cons (no_v1402413784886) (.cons (no_v1402413782998) (.cons (no_v1402401201974) (.cons (no_v1402401200086) .nil)))))))))))))))))))))))))))))))))))))))))))))

private def v1402308501306 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402308501306 : ¬ MinimalInterpreter v1402308501306 :=
  chain_cut false 2 (by decide)

private def v1402308499418 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0)))))))))
private theorem no_v1402308499418 : ¬ MinimalInterpreter v1402308499418 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0)))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308489018 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 3)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402308489018 : ¬ MinimalInterpreter v1402308489018 :=
  chain_cut false 2 (by decide)

private def v1402308487130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0))))))))
private theorem no_v1402308487130 : ¬ MinimalInterpreter v1402308487130 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308484058 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.var 0))))))))
private theorem no_v1402308484058 : ¬ MinimalInterpreter v1402308484058 :=
  chain_cut false 2 (by decide)

private def v1402308304698 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402308304698 : ¬ MinimalInterpreter v1402308304698 :=
  chain_cut false 2 (by decide)

private def v1402308302810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 3) (.var 1)) (.var 0))))))))
private theorem no_v1402308302810 : ¬ MinimalInterpreter v1402308302810 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 3) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 3) (.var 1)) (.var 0))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308292410 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 3))) (.app (.var 1) (.var 0))))))))
private theorem no_v1402308292410 : ¬ MinimalInterpreter v1402308292410 :=
  chain_cut false 2 (by decide)

private def v1402308243258 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.app (.var 1) (.var 0))))))))
private theorem no_v1402308243258 : ¬ MinimalInterpreter v1402308243258 :=
  chain_cut false 2 (by decide)

private def v1402308290522 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1)))) (.var 0)))))))
private theorem no_v1402308290522 : ¬ MinimalInterpreter v1402308290522 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1)))) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308287450 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 3)) (.var 1))) (.var 0)))))))
private theorem no_v1402308287450 : ¬ MinimalInterpreter v1402308287450 :=
  chain_cut false 2 (by decide)

private def v1402308241370 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1))) (.var 0)))))))
private theorem no_v1402308241370 : ¬ MinimalInterpreter v1402308241370 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1))) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308238298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 3))) (.var 1)) (.var 0)))))))
private theorem no_v1402308238298 : ¬ MinimalInterpreter v1402308238298 :=
  chain_cut false 2 (by decide)

private def v1402308226010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 1)) (.var 0)))))))
private theorem no_v1402308226010 : ¬ MinimalInterpreter v1402308226010 :=
  chain_cut false 2 (by decide)

private def v1402313219898 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402313219898 : ¬ MinimalInterpreter v1402313219898 :=
  chain_cut false 2 (by decide)

private def v1402313218010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0)))))))))
private theorem no_v1402313218010 : ¬ MinimalInterpreter v1402313218010 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.app (.var 0) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0))) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1402313207610 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402313207610 : ¬ MinimalInterpreter v1402313207610 :=
  chain_cut false 2 (by decide)

private def v1402313205722 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0))))))))
private theorem no_v1402313205722 : ¬ MinimalInterpreter v1402313205722 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1402313202650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.var 0))))))))
private theorem no_v1402313202650 : ¬ MinimalInterpreter v1402313202650 :=
  chain_cut false 2 (by decide)

private def v1402313514810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 3) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402313514810 : ¬ MinimalInterpreter v1402313514810 :=
  chain_cut false 2 (by decide)

private def v1402313512922 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))))
private theorem no_v1402313512922 : ¬ MinimalInterpreter v1402313512922 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.app (.var 0) (.app (.var 0) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)))) (.var 1) (by decide) (by decide))))))

private def v1402312728378 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 3) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402312728378 : ¬ MinimalInterpreter v1402312728378 :=
  chain_cut false 2 (by decide)

private def v1402312726490 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))
private theorem no_v1402312726490 : ¬ MinimalInterpreter v1402312726490 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1402312615898 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 1))))) (.var 0))))))
private theorem no_v1402312615898 : ¬ MinimalInterpreter v1402312615898 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 1))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.var 0))) (.app (.app (.var 0) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 0)) (.var 1) (by decide) (by decide))))))

private def v1402312612826 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 3)) (.var 1)))) (.var 0))))))
private theorem no_v1402312612826 : ¬ MinimalInterpreter v1402312612826 :=
  chain_cut false 2 (by decide)

private def v1402313477946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 1) (.var 0))))))))
private theorem no_v1402313477946 : ¬ MinimalInterpreter v1402313477946 :=
  chain_cut false 2 (by decide)

private def v1402313466842 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 1)) (.var 0)))))))
private theorem no_v1402313466842 : ¬ MinimalInterpreter v1402313466842 :=
  chain_cut false 2 (by decide)

private def v1402312691514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 3)))) (.app (.var 1) (.var 0)))))))
private theorem no_v1402312691514 : ¬ MinimalInterpreter v1402312691514 :=
  chain_cut false 2 (by decide)

private def v1402312494906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.app (.var 1) (.var 0)))))))
private theorem no_v1402312494906 : ¬ MinimalInterpreter v1402312494906 :=
  chain_cut false 2 (by decide)

private def v1402312680410 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 3))) (.var 1))) (.var 0))))))
private theorem no_v1402312680410 : ¬ MinimalInterpreter v1402312680410 :=
  chain_cut false 2 (by decide)

private def v1402312483802 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 3)))) (.var 1)) (.var 0))))))
private theorem no_v1402312483802 : ¬ MinimalInterpreter v1402312483802 :=
  chain_cut false 2 (by decide)

private def v1402312434650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.var 1)) (.var 0))))))
private theorem no_v1402312434650 : ¬ MinimalInterpreter v1402312434650 :=
  chain_cut false 2 (by decide)

private def v1402332352314 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 1) (.var 0))))))))
private theorem no_v1402332352314 : ¬ MinimalInterpreter v1402332352314 :=
  chain_cut false 2 (by decide)

private def v1402332341210 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 1)) (.var 0)))))))
private theorem no_v1402332341210 : ¬ MinimalInterpreter v1402332341210 :=
  chain_cut false 2 (by decide)

private def v1402329981914 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))) (.var 0)))))
private theorem no_v1402329981914 : ¬ MinimalInterpreter v1402329981914 :=
  chain_cut false 2 (by decide)

private def v1402407591738 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402407591738 : ¬ MinimalInterpreter v1402407591738 :=
  chain_cut false 4 (by decide)

private def v1402407589850 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0)))))))))
private theorem no_v1402407589850 : ¬ MinimalInterpreter v1402407589850 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1402407579450 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402407579450 : ¬ MinimalInterpreter v1402407579450 :=
  chain_cut false 4 (by decide)

private def v1402407577562 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0))))))))
private theorem no_v1402407577562 : ¬ MinimalInterpreter v1402407577562 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1402407574490 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.var 0))))))))
private theorem no_v1402407574490 : ¬ MinimalInterpreter v1402407574490 :=
  chain_cut false 4 (by decide)

private def v1402407886650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402407886650 : ¬ MinimalInterpreter v1402407886650 :=
  chain_cut false 4 (by decide)

private def v1402407884762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))))
private theorem no_v1402407884762 : ¬ MinimalInterpreter v1402407884762 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide)))))))

private def v1402407849786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 1) (.var 0))))))))
private theorem no_v1402407849786 : ¬ MinimalInterpreter v1402407849786 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407838682 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 1)) (.var 0)))))))
private theorem no_v1402407838682 : ¬ MinimalInterpreter v1402407838682 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402413784890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402413784890 : ¬ MinimalInterpreter v1402413784890 :=
  fun he => _root_.Certgen.R302902157114.excluded he.1

private def v1402413783002 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))))
private theorem no_v1402413783002 : ¬ MinimalInterpreter v1402413783002 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))))

private def v1402401201978 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402401201978 : ¬ MinimalInterpreter v1402401201978 :=
  w_cut false 0 (by decide)

private def v1402401200090 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))
private theorem no_v1402401200090 : ¬ MinimalInterpreter v1402401200090 :=
  w_cut false 0 (by decide)

private def v1402399123418 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1))))))) (.var 0))))
private theorem no_v1402399123418 : ¬ MinimalInterpreter v1402399123418 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1))))))) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))) (.var 0)))))

private def v1402399120346 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 1)))))) (.var 0))))
private theorem no_v1402399120346 : ¬ MinimalInterpreter v1402399120346 :=
  fun he => _root_.Certgen.R302887492570.excluded he.1

private def v1402399187930 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1))))) (.var 0))))
private theorem no_v1402399187930 : ¬ MinimalInterpreter v1402399187930 :=
  cycle_cut 10 2 (by decide) (by decide)

theorem four97 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,0,3,1,0]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,0,3,1,0] = [v1402308501306,v1402308499418,v1402308489018,v1402308487130,v1402308484058,v1402308304698,v1402308302810,v1402308292410,v1402308243258,v1402308290522,v1402308287450,v1402308241370,v1402308238298,v1402308226010,v1402313219898,v1402313218010,v1402313207610,v1402313205722,v1402313202650,v1402313514810,v1402313512922,v1402312728378,v1402312726490,v1402312615898,v1402312612826,v1402313477946,v1402313466842,v1402312691514,v1402312494906,v1402312680410,v1402312483802,v1402312434650,v1402332352314,v1402332341210,v1402329981914,v1402407591738,v1402407589850,v1402407579450,v1402407577562,v1402407574490,v1402407886650,v1402407884762,v1402407849786,v1402407838682,v1402413784890,v1402413783002,v1402401201978,v1402401200090,v1402399123418,v1402399120346,v1402399187930] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308501306) (.cons (no_v1402308499418) (.cons (no_v1402308489018) (.cons (no_v1402308487130) (.cons (no_v1402308484058) (.cons (no_v1402308304698) (.cons (no_v1402308302810) (.cons (no_v1402308292410) (.cons (no_v1402308243258) (.cons (no_v1402308290522) (.cons (no_v1402308287450) (.cons (no_v1402308241370) (.cons (no_v1402308238298) (.cons (no_v1402308226010) (.cons (no_v1402313219898) (.cons (no_v1402313218010) (.cons (no_v1402313207610) (.cons (no_v1402313205722) (.cons (no_v1402313202650) (.cons (no_v1402313514810) (.cons (no_v1402313512922) (.cons (no_v1402312728378) (.cons (no_v1402312726490) (.cons (no_v1402312615898) (.cons (no_v1402312612826) (.cons (no_v1402313477946) (.cons (no_v1402313466842) (.cons (no_v1402312691514) (.cons (no_v1402312494906) (.cons (no_v1402312680410) (.cons (no_v1402312483802) (.cons (no_v1402312434650) (.cons (no_v1402332352314) (.cons (no_v1402332341210) (.cons (no_v1402329981914) (.cons (no_v1402407591738) (.cons (no_v1402407589850) (.cons (no_v1402407579450) (.cons (no_v1402407577562) (.cons (no_v1402407574490) (.cons (no_v1402407886650) (.cons (no_v1402407884762) (.cons (no_v1402407849786) (.cons (no_v1402407838682) (.cons (no_v1402413784890) (.cons (no_v1402413783002) (.cons (no_v1402401201978) (.cons (no_v1402401200090) (.cons (no_v1402399123418) (.cons (no_v1402399120346) (.cons (no_v1402399187930) .nil)))))))))))))))))))))))))))))))))))))))))))))))))))

end Blc.SelfintSingleObject.Rows40
