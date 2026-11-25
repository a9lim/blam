import Blc.Selfint40Evidence.R302887493466
import Blc.Selfint40Evidence.R302887501018
import Blc.Selfint40Evidence.WeightedRows
import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402308519738 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402308519738 : ¬ MinimalInterpreter v1402308519738 :=
  cost_cut false 2 (by decide)

private def v1402308519386 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0)))))))))
private theorem no_v1402308519386 : ¬ MinimalInterpreter v1402308519386 :=
  cost_cut false 2 (by decide)

private def v1402308492090 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402308492090 : ¬ MinimalInterpreter v1402308492090 :=
  cost_cut false 2 (by decide)

private def v1402308491738 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))))))
private theorem no_v1402308491738 : ¬ MinimalInterpreter v1402308491738 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308484826 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))))))
private theorem no_v1402308484826 : ¬ MinimalInterpreter v1402308484826 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308323130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402308323130 : ¬ MinimalInterpreter v1402308323130 :=
  cost_cut false 2 (by decide)

private def v1402308322778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 0))))))))
private theorem no_v1402308322778 : ¬ MinimalInterpreter v1402308322778 :=
  cost_cut false 2 (by decide)

private def v1402308295482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0))))))))
private theorem no_v1402308295482 : ¬ MinimalInterpreter v1402308295482 :=
  cost_cut false 2 (by decide)

private def v1402308246330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.app (.var 1) (.var 0))))))))
private theorem no_v1402308246330 : ¬ MinimalInterpreter v1402308246330 :=
  cost_cut false 2 (by decide)

private def v1402308295130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.var 0)))))))
private theorem no_v1402308295130 : ¬ MinimalInterpreter v1402308295130 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308288218 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.var 0)))))))
private theorem no_v1402308288218 : ¬ MinimalInterpreter v1402308288218 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308245978 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 1))) (.var 0)))))))
private theorem no_v1402308245978 : ¬ MinimalInterpreter v1402308245978 :=
  cost_cut false 2 (by decide)

private def v1402308239066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 1)) (.var 0)))))))
private theorem no_v1402308239066 : ¬ MinimalInterpreter v1402308239066 :=
  cost_cut false 2 (by decide)

private def v1402308226778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 1)) (.var 0)))))))
private theorem no_v1402308226778 : ¬ MinimalInterpreter v1402308226778 :=
  cost_cut false 2 (by decide)

private def v1402313238330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402313238330 : ¬ MinimalInterpreter v1402313238330 :=
  cost_cut false 2 (by decide)

private def v1402313237978 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0)))))))))
private theorem no_v1402313237978 : ¬ MinimalInterpreter v1402313237978 :=
  cost_cut false 2 (by decide)

private def v1402313210682 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402313210682 : ¬ MinimalInterpreter v1402313210682 :=
  cost_cut false 2 (by decide)

private def v1402313210330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))))))
private theorem no_v1402313210330 : ¬ MinimalInterpreter v1402313210330 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402313203418 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))))))
private theorem no_v1402313203418 : ¬ MinimalInterpreter v1402313203418 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402313611034 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))))))
private theorem no_v1402313611034 : ¬ MinimalInterpreter v1402313611034 :=
  chain_cut false 2 (by decide)

private def v1402313499450 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.var 0))))))))
private theorem no_v1402313499450 : ¬ MinimalInterpreter v1402313499450 :=
  chain_cut false 2 (by decide)

private def v1402313500442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.var 0)))))))
private theorem no_v1402313500442 : ¬ MinimalInterpreter v1402313500442 :=
  chain_cut false 2 (by decide)

private def v1402313472794 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0)))))))
private theorem no_v1402313472794 : ¬ MinimalInterpreter v1402313472794 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))) (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1))) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313472218 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 1)) (.var 0)))))))
private theorem no_v1402313472218 : ¬ MinimalInterpreter v1402313472218 :=
  chain_cut false 2 (by decide)

private def v1402312824602 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))))))
private theorem no_v1402312824602 : ¬ MinimalInterpreter v1402312824602 :=
  chain_cut false 2 (by decide)

private def v1402312713018 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 1)))) (.app (.var 1) (.var 0)))))))
private theorem no_v1402312713018 : ¬ MinimalInterpreter v1402312713018 :=
  chain_cut false 2 (by decide)

private def v1402312516410 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 1))) (.app (.var 1) (.var 0)))))))
private theorem no_v1402312516410 : ¬ MinimalInterpreter v1402312516410 :=
  chain_cut false 2 (by decide)

private def v1402312714010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 1))))) (.var 0))))))
private theorem no_v1402312714010 : ¬ MinimalInterpreter v1402312714010 :=
  chain_cut false 2 (by decide)

private def v1402312686362 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))) (.var 0))))))
private theorem no_v1402312686362 : ¬ MinimalInterpreter v1402312686362 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.app (.var 1) (.lam (.var 1)))) (.var 0))) (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1)))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312685786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 1))) (.var 1))) (.var 0))))))
private theorem no_v1402312685786 : ¬ MinimalInterpreter v1402312685786 :=
  chain_cut false 2 (by decide)

private def v1402312517402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 1)))) (.var 0))))))
private theorem no_v1402312517402 : ¬ MinimalInterpreter v1402312517402 :=
  chain_cut false 2 (by decide)

private def v1402312489754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 1))) (.var 0))))))
private theorem no_v1402312489754 : ¬ MinimalInterpreter v1402312489754 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 1))) (.var 0))) (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (so_dead (by decide) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312440602 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 1))) (.var 0))))))
private theorem no_v1402312440602 : ¬ MinimalInterpreter v1402312440602 :=
  chain_cut false 2 (by decide)

private def v1402312489178 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 1)))) (.var 1)) (.var 0))))))
private theorem no_v1402312489178 : ¬ MinimalInterpreter v1402312489178 :=
  chain_cut false 2 (by decide)

private def v1402312440026 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 1))) (.var 1)) (.var 0))))))
private theorem no_v1402312440026 : ¬ MinimalInterpreter v1402312440026 :=
  chain_cut false 2 (by decide)

private def v1402332112698 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402332112698 : ¬ MinimalInterpreter v1402332112698 :=
  cost_cut false 2 (by decide)

private def v1402332112346 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0)))))))))
private theorem no_v1402332112346 : ¬ MinimalInterpreter v1402332112346 :=
  cost_cut false 2 (by decide)

private def v1402332085050 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402332085050 : ¬ MinimalInterpreter v1402332085050 :=
  cost_cut false 2 (by decide)

private def v1402332084698 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))))))
private theorem no_v1402332084698 : ¬ MinimalInterpreter v1402332084698 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402332077786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))))))
private theorem no_v1402332077786 : ¬ MinimalInterpreter v1402332077786 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402332485402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))))))
private theorem no_v1402332485402 : ¬ MinimalInterpreter v1402332485402 :=
  chain_cut false 2 (by decide)

private def v1402332373818 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.var 0))))))))
private theorem no_v1402332373818 : ¬ MinimalInterpreter v1402332373818 :=
  chain_cut false 2 (by decide)

private def v1402332374810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.var 0)))))))
private theorem no_v1402332374810 : ¬ MinimalInterpreter v1402332374810 :=
  chain_cut false 2 (by decide)

private def v1402332347162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0)))))))
private theorem no_v1402332347162 : ¬ MinimalInterpreter v1402332347162 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402332346586 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 1)) (.var 0)))))))
private theorem no_v1402332346586 : ¬ MinimalInterpreter v1402332346586 :=
  chain_cut false 2 (by decide)

private def v1402330015514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))) (.var 0)))))
private theorem no_v1402330015514 : ¬ MinimalInterpreter v1402330015514 :=
  chain_cut false 2 (by decide)

private def v1402329987866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))) (.var 0)))))
private theorem no_v1402329987866 : ¬ MinimalInterpreter v1402329987866 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))) (.var 0))) (.app (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0)) (.var 0) (by decide) (by decide)))))

private def v1402329987290 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 1))) (.var 1)))) (.var 0)))))
private theorem no_v1402329987290 : ¬ MinimalInterpreter v1402329987290 :=
  chain_cut false 2 (by decide)

private def v1402407982874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))))))
private theorem no_v1402407982874 : ¬ MinimalInterpreter v1402407982874 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402407871290 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.var 0))))))))
private theorem no_v1402407871290 : ¬ MinimalInterpreter v1402407871290 :=
  chain_cut false 6 (by decide)

private def v1402407872282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.var 0)))))))
private theorem no_v1402407872282 : ¬ MinimalInterpreter v1402407872282 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)

private def v1402407844634 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0)))))))
private theorem no_v1402407844634 : ¬ MinimalInterpreter v1402407844634 :=
  w_cut false 0 (by decide)

private def v1402407844058 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 1)) (.var 0)))))))
private theorem no_v1402407844058 : ¬ MinimalInterpreter v1402407844058 :=
  chain_cut false 6 (by decide)

private def v1402399221530 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1))))))) (.var 0))))
private theorem no_v1402399221530 : ¬ MinimalInterpreter v1402399221530 :=
  fun he => _root_.Blc.Floor40.WeightedRows.ex_e302887593754 he.1

private def v1402399193882 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))) (.var 0))))
private theorem no_v1402399193882 : ¬ MinimalInterpreter v1402399193882 :=
  w_cut false 0 (by decide)

private def v1402399193306 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.var 1))))) (.var 0))))
private theorem no_v1402399193306 : ¬ MinimalInterpreter v1402399193306 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)

theorem four112 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,2,1,1,0]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,2,1,1,0] = [v1402308519738,v1402308519386,v1402308492090,v1402308491738,v1402308484826,v1402308323130,v1402308322778,v1402308295482,v1402308246330,v1402308295130,v1402308288218,v1402308245978,v1402308239066,v1402308226778,v1402313238330,v1402313237978,v1402313210682,v1402313210330,v1402313203418,v1402313611034,v1402313499450,v1402313500442,v1402313472794,v1402313472218,v1402312824602,v1402312713018,v1402312516410,v1402312714010,v1402312686362,v1402312685786,v1402312517402,v1402312489754,v1402312440602,v1402312489178,v1402312440026,v1402332112698,v1402332112346,v1402332085050,v1402332084698,v1402332077786,v1402332485402,v1402332373818,v1402332374810,v1402332347162,v1402332346586,v1402330015514,v1402329987866,v1402329987290,v1402407982874,v1402407871290,v1402407872282,v1402407844634,v1402407844058,v1402399221530,v1402399193882,v1402399193306] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308519738) (.cons (no_v1402308519386) (.cons (no_v1402308492090) (.cons (no_v1402308491738) (.cons (no_v1402308484826) (.cons (no_v1402308323130) (.cons (no_v1402308322778) (.cons (no_v1402308295482) (.cons (no_v1402308246330) (.cons (no_v1402308295130) (.cons (no_v1402308288218) (.cons (no_v1402308245978) (.cons (no_v1402308239066) (.cons (no_v1402308226778) (.cons (no_v1402313238330) (.cons (no_v1402313237978) (.cons (no_v1402313210682) (.cons (no_v1402313210330) (.cons (no_v1402313203418) (.cons (no_v1402313611034) (.cons (no_v1402313499450) (.cons (no_v1402313500442) (.cons (no_v1402313472794) (.cons (no_v1402313472218) (.cons (no_v1402312824602) (.cons (no_v1402312713018) (.cons (no_v1402312516410) (.cons (no_v1402312714010) (.cons (no_v1402312686362) (.cons (no_v1402312685786) (.cons (no_v1402312517402) (.cons (no_v1402312489754) (.cons (no_v1402312440602) (.cons (no_v1402312489178) (.cons (no_v1402312440026) (.cons (no_v1402332112698) (.cons (no_v1402332112346) (.cons (no_v1402332085050) (.cons (no_v1402332084698) (.cons (no_v1402332077786) (.cons (no_v1402332485402) (.cons (no_v1402332373818) (.cons (no_v1402332374810) (.cons (no_v1402332347162) (.cons (no_v1402332346586) (.cons (no_v1402330015514) (.cons (no_v1402329987866) (.cons (no_v1402329987290) (.cons (no_v1402407982874) (.cons (no_v1402407871290) (.cons (no_v1402407872282) (.cons (no_v1402407844634) (.cons (no_v1402407844058) (.cons (no_v1402399221530) (.cons (no_v1402399193882) (.cons (no_v1402399193306) .nil))))))))))))))))))))))))))))))))))))))))))))))))))))))))

private def v1402313499546 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0))))))))
private theorem no_v1402313499546 : ¬ MinimalInterpreter v1402313499546 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0)))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.app (.var 0) (.var 0)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313472234 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0)))))))
private theorem no_v1402313472234 : ¬ MinimalInterpreter v1402313472234 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.var 0))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312648602 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v1402312648602 : ¬ MinimalInterpreter v1402312648602 :=
  chain_cut false 2 (by decide)

private def v1402312648170 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v1402312648170 : ¬ MinimalInterpreter v1402312648170 :=
  chain_cut false 2 (by decide)

private def v1402312713114 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.app (.var 0) (.var 0)))))))
private theorem no_v1402312713114 : ¬ MinimalInterpreter v1402312713114 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 0) (.var 0))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312516506 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 2))) (.app (.var 0) (.var 0)))))))
private theorem no_v1402312516506 : ¬ MinimalInterpreter v1402312516506 :=
  chain_cut false 2 (by decide)

private def v1402312473498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v1402312473498 : ¬ MinimalInterpreter v1402312473498 :=
  chain_cut false 2 (by decide)

private def v1402312685802 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0))) (.var 0))))))
private theorem no_v1402312685802 : ¬ MinimalInterpreter v1402312685802 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))) (.app (.app (.var 0) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312473066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v1402312473066 : ¬ MinimalInterpreter v1402312473066 :=
  chain_cut false 2 (by decide)

private def v1402312489194 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0)) (.var 0))))))
private theorem no_v1402312489194 : ¬ MinimalInterpreter v1402312489194 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.app (.app (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.var 0)) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312440042 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 2))) (.var 0)) (.var 0))))))
private theorem no_v1402312440042 : ¬ MinimalInterpreter v1402312440042 :=
  chain_cut false 2 (by decide)

private def v1402312429290 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v1402312429290 : ¬ MinimalInterpreter v1402312429290 :=
  chain_cut false 2 (by decide)

private def v1402332373914 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0))))))))
private theorem no_v1402332373914 : ¬ MinimalInterpreter v1402332373914 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.app (.var 0) (.var 0))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402332346602 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0)))))))
private theorem no_v1402332346602 : ¬ MinimalInterpreter v1402332346602 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402329987306 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))) (.var 0)))))
private theorem no_v1402329987306 : ¬ MinimalInterpreter v1402329987306 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))) (.var 0))) (.app (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0)) (.var 0) (by decide) (by decide)))))

private def v1402407871386 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0))))))))
private theorem no_v1402407871386 : ¬ MinimalInterpreter v1402407871386 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.app (.var 0) (.var 0))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402407844074 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0)))))))
private theorem no_v1402407844074 : ¬ MinimalInterpreter v1402407844074 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402399193322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))) (.var 0))))
private theorem no_v1402399193322 : ¬ MinimalInterpreter v1402399193322 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0)))))

theorem four113 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,2,2,0,0]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,2,2,0,0] = [v1402313499546,v1402313472234,v1402312648602,v1402312648170,v1402312713114,v1402312516506,v1402312473498,v1402312685802,v1402312473066,v1402312489194,v1402312440042,v1402312429290,v1402332373914,v1402332346602,v1402329987306,v1402407871386,v1402407844074,v1402399193322] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313499546) (.cons (no_v1402313472234) (.cons (no_v1402312648602) (.cons (no_v1402312648170) (.cons (no_v1402312713114) (.cons (no_v1402312516506) (.cons (no_v1402312473498) (.cons (no_v1402312685802) (.cons (no_v1402312473066) (.cons (no_v1402312489194) (.cons (no_v1402312440042) (.cons (no_v1402312429290) (.cons (no_v1402332373914) (.cons (no_v1402332346602) (.cons (no_v1402329987306) (.cons (no_v1402407871386) (.cons (no_v1402407844074) (.cons (no_v1402399193322) .nil))))))))))))))))))

private def v1402308522806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402308522806 : ¬ MinimalInterpreter v1402308522806 :=
  chain_cut false 2 (by decide)

private def v1402308522710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.app (.var 0) (.var 0)) (.var 1)))))))))
private theorem no_v1402308522710 : ¬ MinimalInterpreter v1402308522710 :=
  chain_cut false 2 (by decide)

private def v1402308492598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 0)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402308492598 : ¬ MinimalInterpreter v1402308492598 :=
  chain_cut false 2 (by decide)

private def v1402308492502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.var 1))))))))
private theorem no_v1402308492502 : ¬ MinimalInterpreter v1402308492502 :=
  chain_cut false 2 (by decide)

private def v1402308484950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 3) (.var 0)) (.var 0)) (.var 1))))))))
private theorem no_v1402308484950 : ¬ MinimalInterpreter v1402308484950 :=
  chain_cut false 2 (by decide)

private def v1402308326198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402308326198 : ¬ MinimalInterpreter v1402308326198 :=
  chain_cut false 2 (by decide)

private def v1402308326102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v1402308326102 : ¬ MinimalInterpreter v1402308326102 :=
  chain_cut false 2 (by decide)

private def v1402308295990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 0))) (.app (.var 0) (.var 1))))))))
private theorem no_v1402308295990 : ¬ MinimalInterpreter v1402308295990 :=
  chain_cut false 2 (by decide)

private def v1402308246838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v1402308246838 : ¬ MinimalInterpreter v1402308246838 :=
  chain_cut false 2 (by decide)

private def v1402308295894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.app (.var 0) (.var 0)))) (.var 1)))))))
private theorem no_v1402308295894 : ¬ MinimalInterpreter v1402308295894 :=
  chain_cut false 2 (by decide)

private def v1402308288342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 3) (.var 0)) (.var 0))) (.var 1)))))))
private theorem no_v1402308288342 : ¬ MinimalInterpreter v1402308288342 :=
  chain_cut false 2 (by decide)

private def v1402308246742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v1402308246742 : ¬ MinimalInterpreter v1402308246742 :=
  chain_cut false 2 (by decide)

private def v1402308239190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 3) (.var 0))) (.var 0)) (.var 1)))))))
private theorem no_v1402308239190 : ¬ MinimalInterpreter v1402308239190 :=
  chain_cut false 2 (by decide)

private def v1402308226902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v1402308226902 : ¬ MinimalInterpreter v1402308226902 :=
  chain_cut false 2 (by decide)

private def v1402313241398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402313241398 : ¬ MinimalInterpreter v1402313241398 :=
  chain_cut false 2 (by decide)

private def v1402313241302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.app (.var 0) (.var 0)) (.var 1)))))))))
private theorem no_v1402313241302 : ¬ MinimalInterpreter v1402313241302 :=
  chain_cut false 2 (by decide)

private def v1402313211190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402313211190 : ¬ MinimalInterpreter v1402313211190 :=
  chain_cut false 2 (by decide)

private def v1402313211094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.var 1))))))))
private theorem no_v1402313211094 : ¬ MinimalInterpreter v1402313211094 :=
  chain_cut false 2 (by decide)

private def v1402313203542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 0)) (.var 1))))))))
private theorem no_v1402313203542 : ¬ MinimalInterpreter v1402313203542 :=
  chain_cut false 2 (by decide)

private def v1402312651574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v1402312651574 : ¬ MinimalInterpreter v1402312651574 :=
  chain_cut false 2 (by decide)

private def v1402312651478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v1402312651478 : ¬ MinimalInterpreter v1402312651478 :=
  chain_cut false 2 (by decide)

private def v1402312473910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v1402312473910 : ¬ MinimalInterpreter v1402312473910 :=
  chain_cut false 2 (by decide)

private def v1402312473814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v1402312473814 : ¬ MinimalInterpreter v1402312473814 :=
  chain_cut false 2 (by decide)

private def v1402312429398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v1402312429398 : ¬ MinimalInterpreter v1402312429398 :=
  chain_cut false 2 (by decide)

private def v1402407613238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402407613238 : ¬ MinimalInterpreter v1402407613238 :=
  chain_cut false 4 (by decide)

private def v1402407613142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 0)) (.var 1)))))))))
private theorem no_v1402407613142 : ¬ MinimalInterpreter v1402407613142 :=
  chain_cut false 4 (by decide)

private def v1402407583030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402407583030 : ¬ MinimalInterpreter v1402407583030 :=
  chain_cut false 4 (by decide)

private def v1402407582934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.var 1))))))))
private theorem no_v1402407582934 : ¬ MinimalInterpreter v1402407582934 :=
  chain_cut false 4 (by decide)

private def v1402407575382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 0)) (.var 1))))))))
private theorem no_v1402407575382 : ¬ MinimalInterpreter v1402407575382 :=
  chain_cut false 4 (by decide)

theorem four114 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,3,0,0,1]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,3,0,0,1] = [v1402308522806,v1402308522710,v1402308492598,v1402308492502,v1402308484950,v1402308326198,v1402308326102,v1402308295990,v1402308246838,v1402308295894,v1402308288342,v1402308246742,v1402308239190,v1402308226902,v1402313241398,v1402313241302,v1402313211190,v1402313211094,v1402313203542,v1402312651574,v1402312651478,v1402312473910,v1402312473814,v1402312429398,v1402407613238,v1402407613142,v1402407583030,v1402407582934,v1402407575382] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308522806) (.cons (no_v1402308522710) (.cons (no_v1402308492598) (.cons (no_v1402308492502) (.cons (no_v1402308484950) (.cons (no_v1402308326198) (.cons (no_v1402308326102) (.cons (no_v1402308295990) (.cons (no_v1402308246838) (.cons (no_v1402308295894) (.cons (no_v1402308288342) (.cons (no_v1402308246742) (.cons (no_v1402308239190) (.cons (no_v1402308226902) (.cons (no_v1402313241398) (.cons (no_v1402313241302) (.cons (no_v1402313211190) (.cons (no_v1402313211094) (.cons (no_v1402313203542) (.cons (no_v1402312651574) (.cons (no_v1402312651478) (.cons (no_v1402312473910) (.cons (no_v1402312473814) (.cons (no_v1402312429398) (.cons (no_v1402407613238) (.cons (no_v1402407613142) (.cons (no_v1402407583030) (.cons (no_v1402407582934) (.cons (no_v1402407575382) .nil)))))))))))))))))))))))))))))

private def v1402308522810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402308522810 : ¬ MinimalInterpreter v1402308522810 :=
  chain_cut false 2 (by decide)

private def v1402308522714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.app (.var 0) (.var 1)) (.var 0)))))))))
private theorem no_v1402308522714 : ¬ MinimalInterpreter v1402308522714 :=
  chain_cut false 2 (by decide)

private def v1402308492602 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 0)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402308492602 : ¬ MinimalInterpreter v1402308492602 :=
  chain_cut false 2 (by decide)

private def v1402308492506 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.app (.var 0) (.var 1))) (.var 0))))))))
private theorem no_v1402308492506 : ¬ MinimalInterpreter v1402308492506 :=
  chain_cut false 2 (by decide)

private def v1402308484954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 3) (.var 0)) (.var 1)) (.var 0))))))))
private theorem no_v1402308484954 : ¬ MinimalInterpreter v1402308484954 :=
  chain_cut false 2 (by decide)

private def v1402308326202 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402308326202 : ¬ MinimalInterpreter v1402308326202 :=
  chain_cut false 2 (by decide)

private def v1402308326106 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v1402308326106 : ¬ MinimalInterpreter v1402308326106 :=
  chain_cut false 2 (by decide)

private def v1402308295994 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 0))) (.app (.var 1) (.var 0))))))))
private theorem no_v1402308295994 : ¬ MinimalInterpreter v1402308295994 :=
  chain_cut false 2 (by decide)

private def v1402308246842 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v1402308246842 : ¬ MinimalInterpreter v1402308246842 :=
  chain_cut false 2 (by decide)

private def v1402308295898 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.app (.var 0) (.var 1)))) (.var 0)))))))
private theorem no_v1402308295898 : ¬ MinimalInterpreter v1402308295898 :=
  chain_cut false 2 (by decide)

private def v1402308288346 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 3) (.var 0)) (.var 1))) (.var 0)))))))
private theorem no_v1402308288346 : ¬ MinimalInterpreter v1402308288346 :=
  chain_cut false 2 (by decide)

private def v1402308246746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v1402308246746 : ¬ MinimalInterpreter v1402308246746 :=
  chain_cut false 2 (by decide)

private def v1402308239194 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 3) (.var 0))) (.var 1)) (.var 0)))))))
private theorem no_v1402308239194 : ¬ MinimalInterpreter v1402308239194 :=
  chain_cut false 2 (by decide)

private def v1402308226906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v1402308226906 : ¬ MinimalInterpreter v1402308226906 :=
  chain_cut false 2 (by decide)

private def v1402313241402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402313241402 : ¬ MinimalInterpreter v1402313241402 :=
  chain_cut false 2 (by decide)

private def v1402313241306 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.app (.var 0) (.var 1)) (.var 0)))))))))
private theorem no_v1402313241306 : ¬ MinimalInterpreter v1402313241306 :=
  chain_cut false 2 (by decide)

private def v1402313211194 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402313211194 : ¬ MinimalInterpreter v1402313211194 :=
  chain_cut false 2 (by decide)

private def v1402313211098 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.app (.var 0) (.var 1))) (.var 0))))))))
private theorem no_v1402313211098 : ¬ MinimalInterpreter v1402313211098 :=
  chain_cut false 2 (by decide)

private def v1402313203546 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 1)) (.var 0))))))))
private theorem no_v1402313203546 : ¬ MinimalInterpreter v1402313203546 :=
  chain_cut false 2 (by decide)

private def v1402312621274 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.var 1))))) (.var 0))))))
private theorem no_v1402312621274 : ¬ MinimalInterpreter v1402312621274 :=
  chain_cut false 2 (by decide)

private def v1402312613722 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 3) (.var 0)) (.var 1)))) (.var 0))))))
private theorem no_v1402312613722 : ¬ MinimalInterpreter v1402312613722 :=
  chain_cut false 2 (by decide)

private def v1402312651578 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v1402312651578 : ¬ MinimalInterpreter v1402312651578 :=
  chain_cut false 2 (by decide)

private def v1402312651482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v1402312651482 : ¬ MinimalInterpreter v1402312651482 :=
  chain_cut false 2 (by decide)

private def v1402312473914 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v1402312473914 : ¬ MinimalInterpreter v1402312473914 :=
  chain_cut false 2 (by decide)

private def v1402312473818 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v1402312473818 : ¬ MinimalInterpreter v1402312473818 :=
  chain_cut false 2 (by decide)

private def v1402312429402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v1402312429402 : ¬ MinimalInterpreter v1402312429402 :=
  chain_cut false 2 (by decide)

private def v1402407613242 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402407613242 : ¬ MinimalInterpreter v1402407613242 :=
  chain_cut false 4 (by decide)

private def v1402407613146 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 1)) (.var 0)))))))))
private theorem no_v1402407613146 : ¬ MinimalInterpreter v1402407613146 :=
  chain_cut false 4 (by decide)

private def v1402407583034 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402407583034 : ¬ MinimalInterpreter v1402407583034 :=
  chain_cut false 4 (by decide)

private def v1402407582938 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 1))) (.var 0))))))))
private theorem no_v1402407582938 : ¬ MinimalInterpreter v1402407582938 :=
  chain_cut false 4 (by decide)

private def v1402407575386 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 1)) (.var 0))))))))
private theorem no_v1402407575386 : ¬ MinimalInterpreter v1402407575386 :=
  chain_cut false 4 (by decide)

private def v1402399128794 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 1))))))) (.var 0))))
private theorem no_v1402399128794 : ¬ MinimalInterpreter v1402399128794 :=
  fun he => _root_.Certgen.R302887501018.excluded he.1

private def v1402399121242 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 1)))))) (.var 0))))
private theorem no_v1402399121242 : ¬ MinimalInterpreter v1402399121242 :=
  fun he => _root_.Certgen.R302887493466.excluded he.1

theorem four115 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,3,0,1,0]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,3,0,1,0] = [v1402308522810,v1402308522714,v1402308492602,v1402308492506,v1402308484954,v1402308326202,v1402308326106,v1402308295994,v1402308246842,v1402308295898,v1402308288346,v1402308246746,v1402308239194,v1402308226906,v1402313241402,v1402313241306,v1402313211194,v1402313211098,v1402313203546,v1402312621274,v1402312613722,v1402312651578,v1402312651482,v1402312473914,v1402312473818,v1402312429402,v1402407613242,v1402407613146,v1402407583034,v1402407582938,v1402407575386,v1402399128794,v1402399121242] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308522810) (.cons (no_v1402308522714) (.cons (no_v1402308492602) (.cons (no_v1402308492506) (.cons (no_v1402308484954) (.cons (no_v1402308326202) (.cons (no_v1402308326106) (.cons (no_v1402308295994) (.cons (no_v1402308246842) (.cons (no_v1402308295898) (.cons (no_v1402308288346) (.cons (no_v1402308246746) (.cons (no_v1402308239194) (.cons (no_v1402308226906) (.cons (no_v1402313241402) (.cons (no_v1402313241306) (.cons (no_v1402313211194) (.cons (no_v1402313211098) (.cons (no_v1402313203546) (.cons (no_v1402312621274) (.cons (no_v1402312613722) (.cons (no_v1402312651578) (.cons (no_v1402312651482) (.cons (no_v1402312473914) (.cons (no_v1402312473818) (.cons (no_v1402312429402) (.cons (no_v1402407613242) (.cons (no_v1402407613146) (.cons (no_v1402407583034) (.cons (no_v1402407582938) (.cons (no_v1402407575386) (.cons (no_v1402399128794) (.cons (no_v1402399121242) .nil)))))))))))))))))))))))))))))))))

private def v1402308522906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 1) (.app (.var 0) (.var 0))))))))))
private theorem no_v1402308522906 : ¬ MinimalInterpreter v1402308522906 :=
  chain_cut false 2 (by decide)

private def v1402308522730 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.var 0)))))))))
private theorem no_v1402308522730 : ¬ MinimalInterpreter v1402308522730 :=
  chain_cut false 2 (by decide)

private def v1402308492698 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402308492698 : ¬ MinimalInterpreter v1402308492698 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0)))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308492522 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.var 0))))))))
private theorem no_v1402308492522 : ¬ MinimalInterpreter v1402308492522 :=
  chain_cut false 2 (by decide)

private def v1402308484970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0))))))))
private theorem no_v1402308484970 : ¬ MinimalInterpreter v1402308484970 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308326298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402308326298 : ¬ MinimalInterpreter v1402308326298 :=
  chain_cut false 2 (by decide)

private def v1402308326122 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v1402308326122 : ¬ MinimalInterpreter v1402308326122 :=
  chain_cut false 2 (by decide)

private def v1402308296090 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 0) (.var 0))))))))
private theorem no_v1402308296090 : ¬ MinimalInterpreter v1402308296090 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308246938 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v1402308246938 : ¬ MinimalInterpreter v1402308246938 :=
  chain_cut false 2 (by decide)

private def v1402308295914 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.app (.var 1) (.var 0)))) (.var 0)))))))
private theorem no_v1402308295914 : ¬ MinimalInterpreter v1402308295914 :=
  chain_cut false 2 (by decide)

private def v1402308288362 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0))) (.var 0)))))))
private theorem no_v1402308288362 : ¬ MinimalInterpreter v1402308288362 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))) (.app (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0))) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308246762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v1402308246762 : ¬ MinimalInterpreter v1402308246762 :=
  chain_cut false 2 (by decide)

private def v1402308239210 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0)) (.var 0)))))))
private theorem no_v1402308239210 : ¬ MinimalInterpreter v1402308239210 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.app (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308226922 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v1402308226922 : ¬ MinimalInterpreter v1402308226922 :=
  chain_cut false 2 (by decide)

private def v1402313241498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 1) (.app (.var 0) (.var 0))))))))))
private theorem no_v1402313241498 : ¬ MinimalInterpreter v1402313241498 :=
  chain_cut false 2 (by decide)

private def v1402313241322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.var 0)))))))))
private theorem no_v1402313241322 : ¬ MinimalInterpreter v1402313241322 :=
  chain_cut false 2 (by decide)

private def v1402313211290 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402313211290 : ¬ MinimalInterpreter v1402313211290 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1402313211114 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.var 0))))))))
private theorem no_v1402313211114 : ¬ MinimalInterpreter v1402313211114 :=
  chain_cut false 2 (by decide)

private def v1402313203562 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0))))))))
private theorem no_v1402313203562 : ¬ MinimalInterpreter v1402313203562 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1402312621290 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.app (.var 1) (.var 0))))) (.var 0))))))
private theorem no_v1402312621290 : ¬ MinimalInterpreter v1402312621290 :=
  chain_cut false 2 (by decide)

private def v1402312613738 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))) (.var 0))))))
private theorem no_v1402312613738 : ¬ MinimalInterpreter v1402312613738 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.var 0))) (.app (.app (.var 0) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 0)) (.var 1) (by decide) (by decide))))))

private def v1402312651674 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v1402312651674 : ¬ MinimalInterpreter v1402312651674 :=
  chain_cut false 2 (by decide)

private def v1402312651498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v1402312651498 : ¬ MinimalInterpreter v1402312651498 :=
  chain_cut false 2 (by decide)

private def v1402312474010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v1402312474010 : ¬ MinimalInterpreter v1402312474010 :=
  chain_cut false 2 (by decide)

private def v1402312473834 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v1402312473834 : ¬ MinimalInterpreter v1402312473834 :=
  chain_cut false 2 (by decide)

private def v1402312429418 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v1402312429418 : ¬ MinimalInterpreter v1402312429418 :=
  chain_cut false 2 (by decide)

private def v1402407613338 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 0) (.var 0))))))))))
private theorem no_v1402407613338 : ¬ MinimalInterpreter v1402407613338 :=
  chain_cut false 4 (by decide)

private def v1402407613162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.var 0)))))))))
private theorem no_v1402407613162 : ¬ MinimalInterpreter v1402407613162 :=
  chain_cut false 4 (by decide)

private def v1402407583130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402407583130 : ¬ MinimalInterpreter v1402407583130 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1402407582954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.var 0))))))))
private theorem no_v1402407582954 : ¬ MinimalInterpreter v1402407582954 :=
  chain_cut false 4 (by decide)

private def v1402407575402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0))))))))
private theorem no_v1402407575402 : ¬ MinimalInterpreter v1402407575402 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1402399128810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 0))))))) (.var 0))))
private theorem no_v1402399128810 : ¬ MinimalInterpreter v1402399128810 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)

private def v1402399121258 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))) (.var 0))))
private theorem no_v1402399121258 : ¬ MinimalInterpreter v1402399121258 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))) (.var 0)))))

theorem four116 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,3,1,0,0]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,3,1,0,0] = [v1402308522906,v1402308522730,v1402308492698,v1402308492522,v1402308484970,v1402308326298,v1402308326122,v1402308296090,v1402308246938,v1402308295914,v1402308288362,v1402308246762,v1402308239210,v1402308226922,v1402313241498,v1402313241322,v1402313211290,v1402313211114,v1402313203562,v1402312621290,v1402312613738,v1402312651674,v1402312651498,v1402312474010,v1402312473834,v1402312429418,v1402407613338,v1402407613162,v1402407583130,v1402407582954,v1402407575402,v1402399128810,v1402399121258] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308522906) (.cons (no_v1402308522730) (.cons (no_v1402308492698) (.cons (no_v1402308492522) (.cons (no_v1402308484970) (.cons (no_v1402308326298) (.cons (no_v1402308326122) (.cons (no_v1402308296090) (.cons (no_v1402308246938) (.cons (no_v1402308295914) (.cons (no_v1402308288362) (.cons (no_v1402308246762) (.cons (no_v1402308239210) (.cons (no_v1402308226922) (.cons (no_v1402313241498) (.cons (no_v1402313241322) (.cons (no_v1402313211290) (.cons (no_v1402313211114) (.cons (no_v1402313203562) (.cons (no_v1402312621290) (.cons (no_v1402312613738) (.cons (no_v1402312651674) (.cons (no_v1402312651498) (.cons (no_v1402312474010) (.cons (no_v1402312473834) (.cons (no_v1402312429418) (.cons (no_v1402407613338) (.cons (no_v1402407613162) (.cons (no_v1402407583130) (.cons (no_v1402407582954) (.cons (no_v1402407575402) (.cons (no_v1402399128810) (.cons (no_v1402399121258) .nil)))))))))))))))))))))))))))))))))

private def v1402308709598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 3))))))))))
private theorem no_v1402308709598 : ¬ MinimalInterpreter v1402308709598 :=
  chain_cut false 2 (by decide)

private def v1402308709214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 3)))))))))
private theorem no_v1402308709214 : ¬ MinimalInterpreter v1402308709214 :=
  chain_cut false 2 (by decide)

private def v1402308703454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 3)))))))))
private theorem no_v1402308703454 : ¬ MinimalInterpreter v1402308703454 :=
  chain_cut false 2 (by decide)

private def v1402308703070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 3))))))))
private theorem no_v1402308703070 : ¬ MinimalInterpreter v1402308703070 :=
  chain_cut false 2 (by decide)

private def v1402308701534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 3))))))))
private theorem no_v1402308701534 : ¬ MinimalInterpreter v1402308701534 :=
  chain_cut false 2 (by decide)

private def v1402308349150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 3)))))))))
private theorem no_v1402308349150 : ¬ MinimalInterpreter v1402308349150 :=
  chain_cut false 2 (by decide)

private def v1402308348766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 3))))))))
private theorem no_v1402308348766 : ¬ MinimalInterpreter v1402308348766 :=
  chain_cut false 2 (by decide)

private def v1402308343006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 3))))))))
private theorem no_v1402308343006 : ¬ MinimalInterpreter v1402308343006 :=
  chain_cut false 2 (by decide)

private def v1402308252894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.var 3))))))))
private theorem no_v1402308252894 : ¬ MinimalInterpreter v1402308252894 :=
  chain_cut false 2 (by decide)

private def v1402308342622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 3)))))))
private theorem no_v1402308342622 : ¬ MinimalInterpreter v1402308342622 :=
  chain_cut false 2 (by decide)

private def v1402308341086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 3)))))))
private theorem no_v1402308341086 : ¬ MinimalInterpreter v1402308341086 :=
  chain_cut false 2 (by decide)

private def v1402308252510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.var 3)))))))
private theorem no_v1402308252510 : ¬ MinimalInterpreter v1402308252510 :=
  chain_cut false 2 (by decide)

private def v1402308250974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.var 3)))))))
private theorem no_v1402308250974 : ¬ MinimalInterpreter v1402308250974 :=
  chain_cut false 2 (by decide)

private def v1402308228446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.var 3)))))))
private theorem no_v1402308228446 : ¬ MinimalInterpreter v1402308228446 :=
  chain_cut false 2 (by decide)

private def v1402314371870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))))))
private theorem no_v1402314371870 : ¬ MinimalInterpreter v1402314371870 :=
  chain_cut false 2 (by decide)

private def v1402314370334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))))))
private theorem no_v1402314370334 : ¬ MinimalInterpreter v1402314370334 :=
  chain_cut false 2 (by decide)

private def v1402314347294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v1402314347294 : ¬ MinimalInterpreter v1402314347294 :=
  chain_cut false 2 (by decide)

private def v1402314345758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 3))))))))
private theorem no_v1402314345758 : ¬ MinimalInterpreter v1402314345758 :=
  chain_cut false 2 (by decide)

private def v1402314339614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 3))))))))
private theorem no_v1402314339614 : ¬ MinimalInterpreter v1402314339614 :=
  chain_cut false 2 (by decide)

private def v1402312930078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v1402312930078 : ¬ MinimalInterpreter v1402312930078 :=
  chain_cut false 2 (by decide)

private def v1402312928542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))))))
private theorem no_v1402312928542 : ¬ MinimalInterpreter v1402312928542 :=
  chain_cut false 2 (by decide)

private def v1402312905502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 3))))))))
private theorem no_v1402312905502 : ¬ MinimalInterpreter v1402312905502 :=
  chain_cut false 2 (by decide)

private def v1402312545054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 3))))))))
private theorem no_v1402312545054 : ¬ MinimalInterpreter v1402312545054 :=
  chain_cut false 2 (by decide)

private def v1402312903966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 3)))))))
private theorem no_v1402312903966 : ¬ MinimalInterpreter v1402312903966 :=
  chain_cut false 2 (by decide)

private def v1402312897822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 3)))))))
private theorem no_v1402312897822 : ¬ MinimalInterpreter v1402312897822 :=
  chain_cut false 2 (by decide)

private def v1402312543518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 3)))))))
private theorem no_v1402312543518 : ¬ MinimalInterpreter v1402312543518 :=
  chain_cut false 2 (by decide)

private def v1402312537374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 3)))))))
private theorem no_v1402312537374 : ¬ MinimalInterpreter v1402312537374 :=
  chain_cut false 2 (by decide)

private def v1402312447262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 3)))))))
private theorem no_v1402312447262 : ¬ MinimalInterpreter v1402312447262 :=
  chain_cut false 2 (by decide)

theorem four117 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,0,0,0,3]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,0,0,0,3] = [v1402308709598,v1402308709214,v1402308703454,v1402308703070,v1402308701534,v1402308349150,v1402308348766,v1402308343006,v1402308252894,v1402308342622,v1402308341086,v1402308252510,v1402308250974,v1402308228446,v1402314371870,v1402314370334,v1402314347294,v1402314345758,v1402314339614,v1402312930078,v1402312928542,v1402312905502,v1402312545054,v1402312903966,v1402312897822,v1402312543518,v1402312537374,v1402312447262] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308709598) (.cons (no_v1402308709214) (.cons (no_v1402308703454) (.cons (no_v1402308703070) (.cons (no_v1402308701534) (.cons (no_v1402308349150) (.cons (no_v1402308348766) (.cons (no_v1402308343006) (.cons (no_v1402308252894) (.cons (no_v1402308342622) (.cons (no_v1402308341086) (.cons (no_v1402308252510) (.cons (no_v1402308250974) (.cons (no_v1402308228446) (.cons (no_v1402314371870) (.cons (no_v1402314370334) (.cons (no_v1402314347294) (.cons (no_v1402314345758) (.cons (no_v1402314339614) (.cons (no_v1402312930078) (.cons (no_v1402312928542) (.cons (no_v1402312905502) (.cons (no_v1402312545054) (.cons (no_v1402312903966) (.cons (no_v1402312897822) (.cons (no_v1402312543518) (.cons (no_v1402312537374) (.cons (no_v1402312447262) .nil))))))))))))))))))))))))))))

private def v1402308709614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v1402308709614 : ¬ MinimalInterpreter v1402308709614 :=
  cost_cut false 2 (by decide)

private def v1402308709230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v1402308709230 : ¬ MinimalInterpreter v1402308709230 :=
  cost_cut false 2 (by decide)

private def v1402308703470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))))
private theorem no_v1402308703470 : ¬ MinimalInterpreter v1402308703470 :=
  cost_cut false 2 (by decide)

private def v1402308703086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))))))
private theorem no_v1402308703086 : ¬ MinimalInterpreter v1402308703086 :=
  cost_cut false 2 (by decide)

private def v1402308701550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))))
private theorem no_v1402308701550 : ¬ MinimalInterpreter v1402308701550 :=
  cost_cut false 2 (by decide)

private def v1402308349166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1402308349166 : ¬ MinimalInterpreter v1402308349166 :=
  cost_cut false 2 (by decide)

private def v1402308348782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1402308348782 : ¬ MinimalInterpreter v1402308348782 :=
  cost_cut false 2 (by decide)

private def v1402308343022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2))))))))
private theorem no_v1402308343022 : ¬ MinimalInterpreter v1402308343022 :=
  cost_cut false 2 (by decide)

private def v1402308252910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v1402308252910 : ¬ MinimalInterpreter v1402308252910 :=
  cost_cut false 2 (by decide)

private def v1402308342638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 2)))))))
private theorem no_v1402308342638 : ¬ MinimalInterpreter v1402308342638 :=
  cost_cut false 2 (by decide)

private def v1402308341102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 2)))))))
private theorem no_v1402308341102 : ¬ MinimalInterpreter v1402308341102 :=
  cost_cut false 2 (by decide)

private def v1402308252526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v1402308252526 : ¬ MinimalInterpreter v1402308252526 :=
  cost_cut false 2 (by decide)

private def v1402308250990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)) (.var 2)))))))
private theorem no_v1402308250990 : ¬ MinimalInterpreter v1402308250990 :=
  cost_cut false 2 (by decide)

private def v1402308228462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v1402308228462 : ¬ MinimalInterpreter v1402308228462 :=
  cost_cut false 2 (by decide)

private def v1402314214638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v1402314214638 : ¬ MinimalInterpreter v1402314214638 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402314214254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v1402314214254 : ¬ MinimalInterpreter v1402314214254 :=
  cost_cut false 2 (by decide)

private def v1402314208494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))))
private theorem no_v1402314208494 : ¬ MinimalInterpreter v1402314208494 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402314208110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))))))
private theorem no_v1402314208110 : ¬ MinimalInterpreter v1402314208110 :=
  cost_cut false 2 (by decide)

private def v1402314206574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))))
private theorem no_v1402314206574 : ¬ MinimalInterpreter v1402314206574 :=
  cost_cut false 2 (by decide)

private def v1402314362094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v1402314362094 : ¬ MinimalInterpreter v1402314362094 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.app (.var 1) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide))))))

private def v1402314361710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v1402314361710 : ¬ MinimalInterpreter v1402314361710 :=
  cost_cut false 2 (by decide)

private def v1402312920302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1402312920302 : ¬ MinimalInterpreter v1402312920302 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.app (.var 1) (.var 0)) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402312919918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1402312919918 : ¬ MinimalInterpreter v1402312919918 :=
  cost_cut false 2 (by decide)

private def v1402314370158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 2))))))))
private theorem no_v1402314370158 : ¬ MinimalInterpreter v1402314370158 :=
  chain_cut false 2 (by decide)

private def v1402314345582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 2)))))))
private theorem no_v1402314345582 : ¬ MinimalInterpreter v1402314345582 :=
  chain_cut false 2 (by decide)

private def v1402314339438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 2)))))))
private theorem no_v1402314339438 : ¬ MinimalInterpreter v1402314339438 :=
  chain_cut false 2 (by decide)

private def v1402312928366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.lam (.var 1))) (.var 2)))))))
private theorem no_v1402312928366 : ¬ MinimalInterpreter v1402312928366 :=
  chain_cut false 2 (by decide)

private def v1402312903790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 2))))))
private theorem no_v1402312903790 : ¬ MinimalInterpreter v1402312903790 :=
  chain_cut false 2 (by decide)

private def v1402312897646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 2))))))
private theorem no_v1402312897646 : ¬ MinimalInterpreter v1402312897646 :=
  chain_cut false 2 (by decide)

private def v1402312543342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 1)))) (.var 2))))))
private theorem no_v1402312543342 : ¬ MinimalInterpreter v1402312543342 :=
  chain_cut false 2 (by decide)

private def v1402312537198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 1))) (.var 2))))))
private theorem no_v1402312537198 : ¬ MinimalInterpreter v1402312537198 :=
  chain_cut false 2 (by decide)

private def v1402312447086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 1))) (.var 2))))))
private theorem no_v1402312447086 : ¬ MinimalInterpreter v1402312447086 :=
  chain_cut false 2 (by decide)

theorem four118 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,0,0,1,2]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,0,0,1,2] = [v1402308709614,v1402308709230,v1402308703470,v1402308703086,v1402308701550,v1402308349166,v1402308348782,v1402308343022,v1402308252910,v1402308342638,v1402308341102,v1402308252526,v1402308250990,v1402308228462,v1402314214638,v1402314214254,v1402314208494,v1402314208110,v1402314206574,v1402314362094,v1402314361710,v1402312920302,v1402312919918,v1402314370158,v1402314345582,v1402314339438,v1402312928366,v1402312903790,v1402312897646,v1402312543342,v1402312537198,v1402312447086] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308709614) (.cons (no_v1402308709230) (.cons (no_v1402308703470) (.cons (no_v1402308703086) (.cons (no_v1402308701550) (.cons (no_v1402308349166) (.cons (no_v1402308348782) (.cons (no_v1402308343022) (.cons (no_v1402308252910) (.cons (no_v1402308342638) (.cons (no_v1402308341102) (.cons (no_v1402308252526) (.cons (no_v1402308250990) (.cons (no_v1402308228462) (.cons (no_v1402314214638) (.cons (no_v1402314214254) (.cons (no_v1402314208494) (.cons (no_v1402314208110) (.cons (no_v1402314206574) (.cons (no_v1402314362094) (.cons (no_v1402314361710) (.cons (no_v1402312920302) (.cons (no_v1402312919918) (.cons (no_v1402314370158) (.cons (no_v1402314345582) (.cons (no_v1402314339438) (.cons (no_v1402312928366) (.cons (no_v1402312903790) (.cons (no_v1402312897646) (.cons (no_v1402312543342) (.cons (no_v1402312537198) (.cons (no_v1402312447086) .nil))))))))))))))))))))))))))))))))

end Blc.SelfintSingleObject.Rows40
