import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1400612375790 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1400612375790 : ¬ MinimalInterpreter v1400612375790 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400645930222 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1400645930222 : ¬ MinimalInterpreter v1400645930222 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400612375406 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1400612375406 : ¬ MinimalInterpreter v1400612375406 :=
  chain_cut false 2 (by decide)

private def v1400645929838 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1400645929838 : ¬ MinimalInterpreter v1400645929838 :=
  chain_cut false 2 (by decide)

private def v1400612369646 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v1400612369646 : ¬ MinimalInterpreter v1400612369646 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400645924078 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v1400645924078 : ¬ MinimalInterpreter v1400645924078 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400612369262 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v1400612369262 : ¬ MinimalInterpreter v1400612369262 :=
  chain_cut false 2 (by decide)

private def v1400645923694 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v1400645923694 : ¬ MinimalInterpreter v1400645923694 :=
  chain_cut false 2 (by decide)

private def v1400612367726 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v1400612367726 : ¬ MinimalInterpreter v1400612367726 :=
  chain_cut false 2 (by decide)

private def v1400645922158 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v1400645922158 : ¬ MinimalInterpreter v1400645922158 :=
  chain_cut false 2 (by decide)

private def v1400612523246 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1400612523246 : ¬ MinimalInterpreter v1400612523246 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400646077678 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1400646077678 : ¬ MinimalInterpreter v1400646077678 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400612522862 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1400612522862 : ¬ MinimalInterpreter v1400612522862 :=
  chain_cut false 2 (by decide)

private def v1400646077294 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1400646077294 : ¬ MinimalInterpreter v1400646077294 :=
  chain_cut false 2 (by decide)

private def v1400267801398 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))
private theorem no_v1400267801398 : ¬ MinimalInterpreter v1400267801398 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)))))

private def v1400267801302 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
private theorem no_v1400267801302 : ¬ MinimalInterpreter v1400267801302 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)))))

private def v1400267803702 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
private theorem no_v1400267803702 : ¬ MinimalInterpreter v1400267803702 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide))))))

private def v1400613113070 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1400613113070 : ¬ MinimalInterpreter v1400613113070 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1400267801402 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))
private theorem no_v1400267801402 : ¬ MinimalInterpreter v1400267801402 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)))))

private def v1400267801306 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
private theorem no_v1400267801306 : ¬ MinimalInterpreter v1400267801306 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)))))

private def v1400267803706 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
private theorem no_v1400267803706 : ¬ MinimalInterpreter v1400267803706 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide))))))

private def v1400646667502 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1400646667502 : ¬ MinimalInterpreter v1400646667502 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1400267801498 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))
private theorem no_v1400267801498 : ¬ MinimalInterpreter v1400267801498 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)))))

private def v1400267801322 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
private theorem no_v1400267801322 : ¬ MinimalInterpreter v1400267801322 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide)))))

private def v1400255218486 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))
private theorem no_v1400255218486 : ¬ MinimalInterpreter v1400255218486 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1400255218390 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
private theorem no_v1400255218390 : ¬ MinimalInterpreter v1400255218390 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1400255220790 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
private theorem no_v1400255220790 : ¬ MinimalInterpreter v1400255220790 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide))))) (.var 0) (by decide) (by decide)))))

private def v1400613112686 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1400613112686 : ¬ MinimalInterpreter v1400613112686 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1400255218490 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))
private theorem no_v1400255218490 : ¬ MinimalInterpreter v1400255218490 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1400255218394 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
private theorem no_v1400255218394 : ¬ MinimalInterpreter v1400255218394 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1400255220794 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
private theorem no_v1400255220794 : ¬ MinimalInterpreter v1400255220794 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide))))) (.var 0) (by decide) (by decide)))))

private def v1400646667118 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1400646667118 : ¬ MinimalInterpreter v1400646667118 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1400255218586 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))
private theorem no_v1400255218586 : ¬ MinimalInterpreter v1400255218586 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1400255218410 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
private theorem no_v1400255218410 : ¬ MinimalInterpreter v1400255218410 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

theorem five32 : BadRow (bucket false 3 2 4 [0,0,1,2]) := by
  have h : bucket false 3 2 4 [0,0,1,2] = [v1400612375790,v1400645930222,v1400612375406,v1400645929838,v1400612369646,v1400645924078,v1400612369262,v1400645923694,v1400612367726,v1400645922158,v1400612523246,v1400646077678,v1400612522862,v1400646077294,v1400267801398,v1400267801302,v1400267803702,v1400613113070,v1400267801402,v1400267801306,v1400267803706,v1400646667502,v1400267801498,v1400267801322,v1400255218486,v1400255218390,v1400255220790,v1400613112686,v1400255218490,v1400255218394,v1400255220794,v1400646667118,v1400255218586,v1400255218410] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400612375790) (.cons (no_v1400645930222) (.cons (no_v1400612375406) (.cons (no_v1400645929838) (.cons (no_v1400612369646) (.cons (no_v1400645924078) (.cons (no_v1400612369262) (.cons (no_v1400645923694) (.cons (no_v1400612367726) (.cons (no_v1400645922158) (.cons (no_v1400612523246) (.cons (no_v1400646077678) (.cons (no_v1400612522862) (.cons (no_v1400646077294) (.cons (no_v1400267801398) (.cons (no_v1400267801302) (.cons (no_v1400267803702) (.cons (no_v1400613113070) (.cons (no_v1400267801402) (.cons (no_v1400267801306) (.cons (no_v1400267803706) (.cons (no_v1400646667502) (.cons (no_v1400267801498) (.cons (no_v1400267801322) (.cons (no_v1400255218486) (.cons (no_v1400255218390) (.cons (no_v1400255220790) (.cons (no_v1400613112686) (.cons (no_v1400255218490) (.cons (no_v1400255218394) (.cons (no_v1400255220794) (.cons (no_v1400646667118) (.cons (no_v1400255218586) (.cons (no_v1400255218410) .nil))))))))))))))))))))))))))))))))))

private def v1175126592750 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1175126592750 : ¬ MinimalInterpreter v1175126592750 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174321286382 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1174321286382 : ¬ MinimalInterpreter v1174321286382 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175160147182 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1175160147182 : ¬ MinimalInterpreter v1175160147182 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174354840814 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1174354840814 : ¬ MinimalInterpreter v1174354840814 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175965453550 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1175965453550 : ¬ MinimalInterpreter v1175965453550 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174489058542 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1174489058542 : ¬ MinimalInterpreter v1174489058542 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175126592366 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1175126592366 : ¬ MinimalInterpreter v1175126592366 :=
  chain_cut false 2 (by decide)

private def v1174321285998 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1174321285998 : ¬ MinimalInterpreter v1174321285998 :=
  chain_cut false 2 (by decide)

private def v1175160146798 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1175160146798 : ¬ MinimalInterpreter v1175160146798 :=
  chain_cut false 2 (by decide)

private def v1174354840430 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1174354840430 : ¬ MinimalInterpreter v1174354840430 :=
  chain_cut false 3 (by decide)

private def v1175965453166 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1175965453166 : ¬ MinimalInterpreter v1175965453166 :=
  chain_cut true 2 (by decide)

private def v1174489058158 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1174489058158 : ¬ MinimalInterpreter v1174489058158 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126586606 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v1175126586606 : ¬ MinimalInterpreter v1175126586606 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174321280238 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v1174321280238 : ¬ MinimalInterpreter v1174321280238 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175160141038 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v1175160141038 : ¬ MinimalInterpreter v1175160141038 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174354834670 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v1174354834670 : ¬ MinimalInterpreter v1174354834670 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175965447406 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v1175965447406 : ¬ MinimalInterpreter v1175965447406 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174489052398 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v1174489052398 : ¬ MinimalInterpreter v1174489052398 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175126586222 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v1175126586222 : ¬ MinimalInterpreter v1175126586222 :=
  chain_cut false 2 (by decide)

private def v1174321279854 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v1174321279854 : ¬ MinimalInterpreter v1174321279854 :=
  chain_cut false 2 (by decide)

private def v1175160140654 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v1175160140654 : ¬ MinimalInterpreter v1175160140654 :=
  chain_cut false 2 (by decide)

private def v1174354834286 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v1174354834286 : ¬ MinimalInterpreter v1174354834286 :=
  chain_cut false 3 (by decide)

private def v1175965447022 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v1175965447022 : ¬ MinimalInterpreter v1175965447022 :=
  chain_cut true 2 (by decide)

private def v1174489052014 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v1174489052014 : ¬ MinimalInterpreter v1174489052014 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126584686 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v1175126584686 : ¬ MinimalInterpreter v1175126584686 :=
  chain_cut false 2 (by decide)

private def v1174321278318 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v1174321278318 : ¬ MinimalInterpreter v1174321278318 :=
  chain_cut false 2 (by decide)

private def v1175160139118 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v1175160139118 : ¬ MinimalInterpreter v1175160139118 :=
  chain_cut false 2 (by decide)

private def v1174354832750 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v1174354832750 : ¬ MinimalInterpreter v1174354832750 :=
  chain_cut false 3 (by decide)

private def v1175965445486 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v1175965445486 : ¬ MinimalInterpreter v1175965445486 :=
  chain_cut true 2 (by decide)

private def v1174489050478 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v1174489050478 : ¬ MinimalInterpreter v1174489050478 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126740206 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1175126740206 : ¬ MinimalInterpreter v1175126740206 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1174321433838 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1174321433838 : ¬ MinimalInterpreter v1174321433838 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1175160294638 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1175160294638 : ¬ MinimalInterpreter v1175160294638 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1174354988270 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1174354988270 : ¬ MinimalInterpreter v1174354988270 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1175965601006 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1175965601006 : ¬ MinimalInterpreter v1175965601006 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1174489205998 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1174489205998 : ¬ MinimalInterpreter v1174489205998 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1175126739822 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1175126739822 : ¬ MinimalInterpreter v1175126739822 :=
  chain_cut false 2 (by decide)

private def v1174321433454 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1174321433454 : ¬ MinimalInterpreter v1174321433454 :=
  chain_cut false 2 (by decide)

private def v1175160294254 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1175160294254 : ¬ MinimalInterpreter v1175160294254 :=
  chain_cut false 2 (by decide)

private def v1174354987886 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1174354987886 : ¬ MinimalInterpreter v1174354987886 :=
  chain_cut false 4 (by decide)

private def v1175965600622 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1175965600622 : ¬ MinimalInterpreter v1175965600622 :=
  chain_cut true 2 (by decide)

private def v1174489205614 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1174489205614 : ¬ MinimalInterpreter v1174489205614 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174700671798 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))
private theorem no_v1174700671798 : ¬ MinimalInterpreter v1174700671798 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide))))

private def v1175127330030 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1175127330030 : ¬ MinimalInterpreter v1175127330030 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1174700671702 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
private theorem no_v1174700671702 : ¬ MinimalInterpreter v1174700671702 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide))))

private def v1174322023662 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1174322023662 : ¬ MinimalInterpreter v1174322023662 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1174700671802 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))
private theorem no_v1174700671802 : ¬ MinimalInterpreter v1174700671802 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide))))

private def v1175160884462 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1175160884462 : ¬ MinimalInterpreter v1175160884462 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1174700671706 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
private theorem no_v1174700671706 : ¬ MinimalInterpreter v1174700671706 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide))))

private def v1174355578094 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1174355578094 : ¬ MinimalInterpreter v1174355578094 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1174700671898 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))
private theorem no_v1174700671898 : ¬ MinimalInterpreter v1174700671898 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide))))

private def v1175966190830 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1175966190830 : ¬ MinimalInterpreter v1175966190830 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1174700671722 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
private theorem no_v1174700671722 : ¬ MinimalInterpreter v1174700671722 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide))))

private def v1174489795822 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1174489795822 : ¬ MinimalInterpreter v1174489795822 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1174697526070 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))
private theorem no_v1174697526070 : ¬ MinimalInterpreter v1174697526070 :=
  so_cut true 4 (show SO (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.lam (.app (.var 0) (.app (.var 0) (.var 2))))) from (.app (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.app (.var 0) (.var 2)))))) (.app (.app (.var 0) (.var 2)) (.lam (r := (.var 2)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 3))) (.var 2) (by decide) (by decide))) (.var 1) (by decide) (by decide))) (.lam (r := (.var 1)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1) (by decide) (by decide))))

private def v1175127329646 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1175127329646 : ¬ MinimalInterpreter v1175127329646 :=
  chain_cut false 3 (by decide)

private def v1174697525974 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
private theorem no_v1174697525974 : ¬ MinimalInterpreter v1174697525974 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174322023278 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1174322023278 : ¬ MinimalInterpreter v1174322023278 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174697526074 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))
private theorem no_v1174697526074 : ¬ MinimalInterpreter v1174697526074 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175160884078 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1175160884078 : ¬ MinimalInterpreter v1175160884078 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174697525978 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
private theorem no_v1174697525978 : ¬ MinimalInterpreter v1174697525978 :=
  so_cut false 5 (show SO (.app (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.app (.app (.var 0) (.var 1)) (.lam (r := (.var 1)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1) (by decide) (by decide))) (.var 0) (by decide) (by decide)) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide))))

private def v1174355577710 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1174355577710 : ¬ MinimalInterpreter v1174355577710 :=
  chain_cut false 2 (by decide)

private def v1174697526170 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))
private theorem no_v1174697526170 : ¬ MinimalInterpreter v1174697526170 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175966190446 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1175966190446 : ¬ MinimalInterpreter v1175966190446 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174697525994 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
private theorem no_v1174697525994 : ¬ MinimalInterpreter v1174697525994 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174489795438 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1174489795438 : ¬ MinimalInterpreter v1174489795438 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem five33 : BadRow (bucket true 3 2 4 [0,0,1,2]) := by
  have h : bucket true 3 2 4 [0,0,1,2] = [v1175126592750,v1174321286382,v1175160147182,v1174354840814,v1175965453550,v1174489058542,v1175126592366,v1174321285998,v1175160146798,v1174354840430,v1175965453166,v1174489058158,v1175126586606,v1174321280238,v1175160141038,v1174354834670,v1175965447406,v1174489052398,v1175126586222,v1174321279854,v1175160140654,v1174354834286,v1175965447022,v1174489052014,v1175126584686,v1174321278318,v1175160139118,v1174354832750,v1175965445486,v1174489050478,v1175126740206,v1174321433838,v1175160294638,v1174354988270,v1175965601006,v1174489205998,v1175126739822,v1174321433454,v1175160294254,v1174354987886,v1175965600622,v1174489205614,v1174700671798,v1175127330030,v1174700671702,v1174322023662,v1174700671802,v1175160884462,v1174700671706,v1174355578094,v1174700671898,v1175966190830,v1174700671722,v1174489795822,v1174697526070,v1175127329646,v1174697525974,v1174322023278,v1174697526074,v1175160884078,v1174697525978,v1174355577710,v1174697526170,v1175966190446,v1174697525994,v1174489795438] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175126592750) (.cons (no_v1174321286382) (.cons (no_v1175160147182) (.cons (no_v1174354840814) (.cons (no_v1175965453550) (.cons (no_v1174489058542) (.cons (no_v1175126592366) (.cons (no_v1174321285998) (.cons (no_v1175160146798) (.cons (no_v1174354840430) (.cons (no_v1175965453166) (.cons (no_v1174489058158) (.cons (no_v1175126586606) (.cons (no_v1174321280238) (.cons (no_v1175160141038) (.cons (no_v1174354834670) (.cons (no_v1175965447406) (.cons (no_v1174489052398) (.cons (no_v1175126586222) (.cons (no_v1174321279854) (.cons (no_v1175160140654) (.cons (no_v1174354834286) (.cons (no_v1175965447022) (.cons (no_v1174489052014) (.cons (no_v1175126584686) (.cons (no_v1174321278318) (.cons (no_v1175160139118) (.cons (no_v1174354832750) (.cons (no_v1175965445486) (.cons (no_v1174489050478) (.cons (no_v1175126740206) (.cons (no_v1174321433838) (.cons (no_v1175160294638) (.cons (no_v1174354988270) (.cons (no_v1175965601006) (.cons (no_v1174489205998) (.cons (no_v1175126739822) (.cons (no_v1174321433454) (.cons (no_v1175160294254) (.cons (no_v1174354987886) (.cons (no_v1175965600622) (.cons (no_v1174489205614) (.cons (no_v1174700671798) (.cons (no_v1175127330030) (.cons (no_v1174700671702) (.cons (no_v1174322023662) (.cons (no_v1174700671802) (.cons (no_v1175160884462) (.cons (no_v1174700671706) (.cons (no_v1174355578094) (.cons (no_v1174700671898) (.cons (no_v1175966190830) (.cons (no_v1174700671722) (.cons (no_v1174489795822) (.cons (no_v1174697526070) (.cons (no_v1175127329646) (.cons (no_v1174697525974) (.cons (no_v1174322023278) (.cons (no_v1174697526074) (.cons (no_v1175160884078) (.cons (no_v1174697525978) (.cons (no_v1174355577710) (.cons (no_v1174697526170) (.cons (no_v1175966190446) (.cons (no_v1174697525994) (.cons (no_v1174489795438) .nil))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

private def v1400612375798 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1400612375798 : ¬ MinimalInterpreter v1400612375798 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400645930230 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1400645930230 : ¬ MinimalInterpreter v1400645930230 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400612375414 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1400612375414 : ¬ MinimalInterpreter v1400612375414 :=
  chain_cut false 2 (by decide)

private def v1400645929846 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1400645929846 : ¬ MinimalInterpreter v1400645929846 :=
  chain_cut false 2 (by decide)

private def v1400612369654 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v1400612369654 : ¬ MinimalInterpreter v1400612369654 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400645924086 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v1400645924086 : ¬ MinimalInterpreter v1400645924086 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400612369270 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v1400612369270 : ¬ MinimalInterpreter v1400612369270 :=
  chain_cut false 2 (by decide)

private def v1400645923702 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v1400645923702 : ¬ MinimalInterpreter v1400645923702 :=
  chain_cut false 2 (by decide)

private def v1400612367734 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v1400612367734 : ¬ MinimalInterpreter v1400612367734 :=
  chain_cut false 2 (by decide)

private def v1400645922166 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v1400645922166 : ¬ MinimalInterpreter v1400645922166 :=
  chain_cut false 2 (by decide)

private def v1400612523254 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1400612523254 : ¬ MinimalInterpreter v1400612523254 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400646077686 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1400646077686 : ¬ MinimalInterpreter v1400646077686 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400612522870 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1400612522870 : ¬ MinimalInterpreter v1400612522870 :=
  chain_cut false 2 (by decide)

private def v1400646077302 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1400646077302 : ¬ MinimalInterpreter v1400646077302 :=
  chain_cut false 2 (by decide)

private def v1400268063542 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))
private theorem no_v1400268063542 : ¬ MinimalInterpreter v1400268063542 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)))))

private def v1400268063446 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
private theorem no_v1400268063446 : ¬ MinimalInterpreter v1400268063446 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)))))

private def v1400268065846 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
private theorem no_v1400268065846 : ¬ MinimalInterpreter v1400268065846 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide))))))

private def v1400613113078 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1400613113078 : ¬ MinimalInterpreter v1400613113078 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1400268063546 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))
private theorem no_v1400268063546 : ¬ MinimalInterpreter v1400268063546 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)))))

private def v1400268063450 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
private theorem no_v1400268063450 : ¬ MinimalInterpreter v1400268063450 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)))))

private def v1400268065850 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
private theorem no_v1400268065850 : ¬ MinimalInterpreter v1400268065850 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide))))))

private def v1400646667510 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1400646667510 : ¬ MinimalInterpreter v1400646667510 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1400268063642 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))
private theorem no_v1400268063642 : ¬ MinimalInterpreter v1400268063642 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)))))

private def v1400268063466 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
private theorem no_v1400268063466 : ¬ MinimalInterpreter v1400268063466 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide)))))

private def v1400255480630 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))
private theorem no_v1400255480630 : ¬ MinimalInterpreter v1400255480630 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.var 1))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.var 1))) (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)))) (.var 1)) (.var 0) (by decide) (by decide)))))

private def v1400255480534 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
private theorem no_v1400255480534 : ¬ MinimalInterpreter v1400255480534 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))) (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)))) (.var 1)) (.var 0) (by decide) (by decide)))))

private def v1400255482934 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
private theorem no_v1400255482934 : ¬ MinimalInterpreter v1400255482934 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))) (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide))))) (.var 1)) (.var 0) (by decide) (by decide)))))

private def v1400613112694 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1400613112694 : ¬ MinimalInterpreter v1400613112694 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1400255480634 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))
private theorem no_v1400255480634 : ¬ MinimalInterpreter v1400255480634 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1))) (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)))) (.var 1)) (.var 0) (by decide) (by decide)))))

private def v1400255480538 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
private theorem no_v1400255480538 : ¬ MinimalInterpreter v1400255480538 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1))) (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)))) (.var 1)) (.var 0) (by decide) (by decide)))))

private def v1400255482938 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
private theorem no_v1400255482938 : ¬ MinimalInterpreter v1400255482938 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))) (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide))))) (.var 1)) (.var 0) (by decide) (by decide)))))

private def v1400646667126 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1400646667126 : ¬ MinimalInterpreter v1400646667126 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1400255480730 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))
private theorem no_v1400255480730 : ¬ MinimalInterpreter v1400255480730 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1))) (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)))) (.var 1)) (.var 0) (by decide) (by decide)))))

private def v1400255480554 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
private theorem no_v1400255480554 : ¬ MinimalInterpreter v1400255480554 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1))) (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide)))) (.var 1)) (.var 0) (by decide) (by decide)))))

theorem five34 : BadRow (bucket false 3 2 4 [0,0,2,1]) := by
  have h : bucket false 3 2 4 [0,0,2,1] = [v1400612375798,v1400645930230,v1400612375414,v1400645929846,v1400612369654,v1400645924086,v1400612369270,v1400645923702,v1400612367734,v1400645922166,v1400612523254,v1400646077686,v1400612522870,v1400646077302,v1400268063542,v1400268063446,v1400268065846,v1400613113078,v1400268063546,v1400268063450,v1400268065850,v1400646667510,v1400268063642,v1400268063466,v1400255480630,v1400255480534,v1400255482934,v1400613112694,v1400255480634,v1400255480538,v1400255482938,v1400646667126,v1400255480730,v1400255480554] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400612375798) (.cons (no_v1400645930230) (.cons (no_v1400612375414) (.cons (no_v1400645929846) (.cons (no_v1400612369654) (.cons (no_v1400645924086) (.cons (no_v1400612369270) (.cons (no_v1400645923702) (.cons (no_v1400612367734) (.cons (no_v1400645922166) (.cons (no_v1400612523254) (.cons (no_v1400646077686) (.cons (no_v1400612522870) (.cons (no_v1400646077302) (.cons (no_v1400268063542) (.cons (no_v1400268063446) (.cons (no_v1400268065846) (.cons (no_v1400613113078) (.cons (no_v1400268063546) (.cons (no_v1400268063450) (.cons (no_v1400268065850) (.cons (no_v1400646667510) (.cons (no_v1400268063642) (.cons (no_v1400268063466) (.cons (no_v1400255480630) (.cons (no_v1400255480534) (.cons (no_v1400255482934) (.cons (no_v1400613112694) (.cons (no_v1400255480634) (.cons (no_v1400255480538) (.cons (no_v1400255482938) (.cons (no_v1400646667126) (.cons (no_v1400255480730) (.cons (no_v1400255480554) .nil))))))))))))))))))))))))))))))))))

private def v1175126592758 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1175126592758 : ¬ MinimalInterpreter v1175126592758 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174321286390 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1174321286390 : ¬ MinimalInterpreter v1174321286390 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175160147190 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1175160147190 : ¬ MinimalInterpreter v1175160147190 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174354840822 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1174354840822 : ¬ MinimalInterpreter v1174354840822 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175965453558 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1175965453558 : ¬ MinimalInterpreter v1175965453558 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174489058550 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1174489058550 : ¬ MinimalInterpreter v1174489058550 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175126592374 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1175126592374 : ¬ MinimalInterpreter v1175126592374 :=
  chain_cut false 2 (by decide)

private def v1174321286006 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1174321286006 : ¬ MinimalInterpreter v1174321286006 :=
  chain_cut false 2 (by decide)

private def v1175160146806 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1175160146806 : ¬ MinimalInterpreter v1175160146806 :=
  chain_cut false 2 (by decide)

private def v1174354840438 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1174354840438 : ¬ MinimalInterpreter v1174354840438 :=
  chain_cut false 3 (by decide)

private def v1175965453174 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1175965453174 : ¬ MinimalInterpreter v1175965453174 :=
  chain_cut true 2 (by decide)

private def v1174489058166 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1174489058166 : ¬ MinimalInterpreter v1174489058166 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126586614 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v1175126586614 : ¬ MinimalInterpreter v1175126586614 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174321280246 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v1174321280246 : ¬ MinimalInterpreter v1174321280246 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175160141046 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v1175160141046 : ¬ MinimalInterpreter v1175160141046 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174354834678 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v1174354834678 : ¬ MinimalInterpreter v1174354834678 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175965447414 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v1175965447414 : ¬ MinimalInterpreter v1175965447414 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174489052406 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v1174489052406 : ¬ MinimalInterpreter v1174489052406 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175126586230 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v1175126586230 : ¬ MinimalInterpreter v1175126586230 :=
  chain_cut false 2 (by decide)

private def v1174321279862 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v1174321279862 : ¬ MinimalInterpreter v1174321279862 :=
  chain_cut false 2 (by decide)

private def v1175160140662 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v1175160140662 : ¬ MinimalInterpreter v1175160140662 :=
  chain_cut false 2 (by decide)

private def v1174354834294 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v1174354834294 : ¬ MinimalInterpreter v1174354834294 :=
  chain_cut false 3 (by decide)

private def v1175965447030 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v1175965447030 : ¬ MinimalInterpreter v1175965447030 :=
  chain_cut true 2 (by decide)

private def v1174489052022 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v1174489052022 : ¬ MinimalInterpreter v1174489052022 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126584694 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v1175126584694 : ¬ MinimalInterpreter v1175126584694 :=
  chain_cut false 2 (by decide)

private def v1174321278326 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v1174321278326 : ¬ MinimalInterpreter v1174321278326 :=
  chain_cut false 2 (by decide)

private def v1175160139126 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v1175160139126 : ¬ MinimalInterpreter v1175160139126 :=
  chain_cut false 2 (by decide)

private def v1174354832758 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v1174354832758 : ¬ MinimalInterpreter v1174354832758 :=
  chain_cut false 3 (by decide)

private def v1175965445494 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v1175965445494 : ¬ MinimalInterpreter v1175965445494 :=
  chain_cut true 2 (by decide)

private def v1174489050486 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v1174489050486 : ¬ MinimalInterpreter v1174489050486 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126740214 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1175126740214 : ¬ MinimalInterpreter v1175126740214 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1174321433846 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1174321433846 : ¬ MinimalInterpreter v1174321433846 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1175160294646 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1175160294646 : ¬ MinimalInterpreter v1175160294646 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1174354988278 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1174354988278 : ¬ MinimalInterpreter v1174354988278 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1175965601014 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1175965601014 : ¬ MinimalInterpreter v1175965601014 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1174489206006 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1174489206006 : ¬ MinimalInterpreter v1174489206006 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1175126739830 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1175126739830 : ¬ MinimalInterpreter v1175126739830 :=
  chain_cut false 2 (by decide)

private def v1174321433462 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1174321433462 : ¬ MinimalInterpreter v1174321433462 :=
  chain_cut false 2 (by decide)

private def v1175160294262 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1175160294262 : ¬ MinimalInterpreter v1175160294262 :=
  chain_cut false 2 (by decide)

private def v1174354987894 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1174354987894 : ¬ MinimalInterpreter v1174354987894 :=
  chain_cut false 4 (by decide)

private def v1175965600630 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1175965600630 : ¬ MinimalInterpreter v1175965600630 :=
  chain_cut true 2 (by decide)

private def v1174489205622 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1174489205622 : ¬ MinimalInterpreter v1174489205622 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174700737334 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))
private theorem no_v1174700737334 : ¬ MinimalInterpreter v1174700737334 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide))))

private def v1175127330038 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1175127330038 : ¬ MinimalInterpreter v1175127330038 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1174700737238 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
private theorem no_v1174700737238 : ¬ MinimalInterpreter v1174700737238 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide))))

private def v1174322023670 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1174322023670 : ¬ MinimalInterpreter v1174322023670 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1174700737338 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))
private theorem no_v1174700737338 : ¬ MinimalInterpreter v1174700737338 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide))))

private def v1175160884470 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1175160884470 : ¬ MinimalInterpreter v1175160884470 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1174700737242 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
private theorem no_v1174700737242 : ¬ MinimalInterpreter v1174700737242 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide))))

private def v1174355578102 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1174355578102 : ¬ MinimalInterpreter v1174355578102 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1174700737434 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))
private theorem no_v1174700737434 : ¬ MinimalInterpreter v1174700737434 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide))))

private def v1175966190838 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1175966190838 : ¬ MinimalInterpreter v1175966190838 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1174700737258 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
private theorem no_v1174700737258 : ¬ MinimalInterpreter v1174700737258 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide))))

private def v1174489795830 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1174489795830 : ¬ MinimalInterpreter v1174489795830 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1174697591606 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))
private theorem no_v1174697591606 : ¬ MinimalInterpreter v1174697591606 :=
  so_cut true 4 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 3))))) (.var 2)))) from (.app (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1) (by decide) (by decide))) (.lam (r := (.var 1)) (g := (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 2))))) (.var 1))) (.app (.app (.var 0) (.lam (r := (.var 2)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 3))) (.var 2) (by decide) (by decide))) (.var 2)) (.var 1) (by decide) (by decide))))

private def v1175127329654 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1175127329654 : ¬ MinimalInterpreter v1175127329654 :=
  chain_cut false 3 (by decide)

private def v1174697591510 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
private theorem no_v1174697591510 : ¬ MinimalInterpreter v1174697591510 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174322023286 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1174322023286 : ¬ MinimalInterpreter v1174322023286 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174697591610 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))
private theorem no_v1174697591610 : ¬ MinimalInterpreter v1174697591610 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1175160884086 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1175160884086 : ¬ MinimalInterpreter v1175160884086 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174697591514 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
private theorem no_v1174697591514 : ¬ MinimalInterpreter v1174697591514 :=
  so_cut false 5 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.var 0)) from (.app (.lam (r := (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (g := (.app (.app (.var 0) (.var 1)) (.var 1))) (.app (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1) (by decide) (by decide))) (.lam (r := (.var 1)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1) (by decide) (by decide))) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)) (by decide) (by decide)) (.var 0)))

private def v1174355577718 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1174355577718 : ¬ MinimalInterpreter v1174355577718 :=
  chain_cut false 2 (by decide)

private def v1174697591706 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))
private theorem no_v1174697591706 : ¬ MinimalInterpreter v1174697591706 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175966190454 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1175966190454 : ¬ MinimalInterpreter v1175966190454 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174697591530 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
private theorem no_v1174697591530 : ¬ MinimalInterpreter v1174697591530 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174489795446 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1174489795446 : ¬ MinimalInterpreter v1174489795446 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem five35 : BadRow (bucket true 3 2 4 [0,0,2,1]) := by
  have h : bucket true 3 2 4 [0,0,2,1] = [v1175126592758,v1174321286390,v1175160147190,v1174354840822,v1175965453558,v1174489058550,v1175126592374,v1174321286006,v1175160146806,v1174354840438,v1175965453174,v1174489058166,v1175126586614,v1174321280246,v1175160141046,v1174354834678,v1175965447414,v1174489052406,v1175126586230,v1174321279862,v1175160140662,v1174354834294,v1175965447030,v1174489052022,v1175126584694,v1174321278326,v1175160139126,v1174354832758,v1175965445494,v1174489050486,v1175126740214,v1174321433846,v1175160294646,v1174354988278,v1175965601014,v1174489206006,v1175126739830,v1174321433462,v1175160294262,v1174354987894,v1175965600630,v1174489205622,v1174700737334,v1175127330038,v1174700737238,v1174322023670,v1174700737338,v1175160884470,v1174700737242,v1174355578102,v1174700737434,v1175966190838,v1174700737258,v1174489795830,v1174697591606,v1175127329654,v1174697591510,v1174322023286,v1174697591610,v1175160884086,v1174697591514,v1174355577718,v1174697591706,v1175966190454,v1174697591530,v1174489795446] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175126592758) (.cons (no_v1174321286390) (.cons (no_v1175160147190) (.cons (no_v1174354840822) (.cons (no_v1175965453558) (.cons (no_v1174489058550) (.cons (no_v1175126592374) (.cons (no_v1174321286006) (.cons (no_v1175160146806) (.cons (no_v1174354840438) (.cons (no_v1175965453174) (.cons (no_v1174489058166) (.cons (no_v1175126586614) (.cons (no_v1174321280246) (.cons (no_v1175160141046) (.cons (no_v1174354834678) (.cons (no_v1175965447414) (.cons (no_v1174489052406) (.cons (no_v1175126586230) (.cons (no_v1174321279862) (.cons (no_v1175160140662) (.cons (no_v1174354834294) (.cons (no_v1175965447030) (.cons (no_v1174489052022) (.cons (no_v1175126584694) (.cons (no_v1174321278326) (.cons (no_v1175160139126) (.cons (no_v1174354832758) (.cons (no_v1175965445494) (.cons (no_v1174489050486) (.cons (no_v1175126740214) (.cons (no_v1174321433846) (.cons (no_v1175160294646) (.cons (no_v1174354988278) (.cons (no_v1175965601014) (.cons (no_v1174489206006) (.cons (no_v1175126739830) (.cons (no_v1174321433462) (.cons (no_v1175160294262) (.cons (no_v1174354987894) (.cons (no_v1175965600630) (.cons (no_v1174489205622) (.cons (no_v1174700737334) (.cons (no_v1175127330038) (.cons (no_v1174700737238) (.cons (no_v1174322023670) (.cons (no_v1174700737338) (.cons (no_v1175160884470) (.cons (no_v1174700737242) (.cons (no_v1174355578102) (.cons (no_v1174700737434) (.cons (no_v1175966190838) (.cons (no_v1174700737258) (.cons (no_v1174489795830) (.cons (no_v1174697591606) (.cons (no_v1175127329654) (.cons (no_v1174697591510) (.cons (no_v1174322023286) (.cons (no_v1174697591610) (.cons (no_v1175160884086) (.cons (no_v1174697591514) (.cons (no_v1174355577718) (.cons (no_v1174697591706) (.cons (no_v1175966190454) (.cons (no_v1174697591530) (.cons (no_v1174489795446) .nil))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

theorem five36 : BadRow (bucket false 3 2 4 [0,0,3,0]) := by
  have h : bucket false 3 2 4 [0,0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five37 : BadRow (bucket true 3 2 4 [0,0,3,0]) := by
  have h : bucket true 3 2 4 [0,0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1400612376174 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1400612376174 : ¬ MinimalInterpreter v1400612376174 :=
  chain_cut false 2 (by decide)

private def v1400645930606 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1400645930606 : ¬ MinimalInterpreter v1400645930606 :=
  chain_cut false 2 (by decide)

private def v1400612375470 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1400612375470 : ¬ MinimalInterpreter v1400612375470 :=
  chain_cut false 2 (by decide)

private def v1400645929902 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1400645929902 : ¬ MinimalInterpreter v1400645929902 :=
  chain_cut false 2 (by decide)

private def v1400612370030 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v1400612370030 : ¬ MinimalInterpreter v1400612370030 :=
  chain_cut false 2 (by decide)

private def v1400645924462 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v1400645924462 : ¬ MinimalInterpreter v1400645924462 :=
  chain_cut false 2 (by decide)

private def v1400612369326 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v1400612369326 : ¬ MinimalInterpreter v1400612369326 :=
  chain_cut false 2 (by decide)

private def v1400645923758 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v1400645923758 : ¬ MinimalInterpreter v1400645923758 :=
  chain_cut false 2 (by decide)

private def v1400612367790 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v1400612367790 : ¬ MinimalInterpreter v1400612367790 :=
  chain_cut false 2 (by decide)

private def v1400645922222 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v1400645922222 : ¬ MinimalInterpreter v1400645922222 :=
  chain_cut false 2 (by decide)

private def v1400612523630 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1400612523630 : ¬ MinimalInterpreter v1400612523630 :=
  chain_cut false 2 (by decide)

private def v1400646078062 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1400646078062 : ¬ MinimalInterpreter v1400646078062 :=
  chain_cut false 2 (by decide)

private def v1400612522926 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1400612522926 : ¬ MinimalInterpreter v1400612522926 :=
  chain_cut false 2 (by decide)

private def v1400646077358 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1400646077358 : ¬ MinimalInterpreter v1400646077358 :=
  chain_cut false 2 (by decide)

private def v1400280384310 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))
private theorem no_v1400280384310 : ¬ MinimalInterpreter v1400280384310 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))) (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide))))) (.var 0) (by decide) (by decide)))))

private def v1400280384214 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
private theorem no_v1400280384214 : ¬ MinimalInterpreter v1400280384214 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide))))) (.var 0) (by decide) (by decide)))))

private def v1400280386614 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
private theorem no_v1400280386614 : ¬ MinimalInterpreter v1400280386614 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))))) (.var 0) (by decide) (by decide)))))

private def v1400613113454 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1400613113454 : ¬ MinimalInterpreter v1400613113454 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1400280384314 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))
private theorem no_v1400280384314 : ¬ MinimalInterpreter v1400280384314 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide))))) (.var 0) (by decide) (by decide)))))

private def v1400280384218 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
private theorem no_v1400280384218 : ¬ MinimalInterpreter v1400280384218 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide))))) (.var 0) (by decide) (by decide)))))

private def v1400280386618 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
private theorem no_v1400280386618 : ¬ MinimalInterpreter v1400280386618 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))))) (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))))) (.var 0) (by decide) (by decide)))))

private def v1400646667886 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1400646667886 : ¬ MinimalInterpreter v1400646667886 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1400280384410 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))
private theorem no_v1400280384410 : ¬ MinimalInterpreter v1400280384410 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide))))) (.var 0) (by decide) (by decide)))))

private def v1400280384234 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
private theorem no_v1400280384234 : ¬ MinimalInterpreter v1400280384234 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide))))) (.var 0) (by decide) (by decide)))))

private def v1400257315638 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))
private theorem no_v1400257315638 : ¬ MinimalInterpreter v1400257315638 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1400257315542 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
private theorem no_v1400257315542 : ¬ MinimalInterpreter v1400257315542 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1400257317942 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
private theorem no_v1400257317942 : ¬ MinimalInterpreter v1400257317942 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide))))) (.var 0) (by decide) (by decide)))))

private def v1400613112750 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1400613112750 : ¬ MinimalInterpreter v1400613112750 :=
  chain_cut false 5 (by decide)

private def v1400257315642 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))
private theorem no_v1400257315642 : ¬ MinimalInterpreter v1400257315642 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1400257315546 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
private theorem no_v1400257315546 : ¬ MinimalInterpreter v1400257315546 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1400257317946 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
private theorem no_v1400257317946 : ¬ MinimalInterpreter v1400257317946 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide))))) (.var 0) (by decide) (by decide)))))

private def v1400646667182 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1400646667182 : ¬ MinimalInterpreter v1400646667182 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1400257315738 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))
private theorem no_v1400257315738 : ¬ MinimalInterpreter v1400257315738 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1400257315562 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
private theorem no_v1400257315562 : ¬ MinimalInterpreter v1400257315562 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

theorem five38 : BadRow (bucket false 3 2 4 [0,1,0,2]) := by
  have h : bucket false 3 2 4 [0,1,0,2] = [v1400612376174,v1400645930606,v1400612375470,v1400645929902,v1400612370030,v1400645924462,v1400612369326,v1400645923758,v1400612367790,v1400645922222,v1400612523630,v1400646078062,v1400612522926,v1400646077358,v1400280384310,v1400280384214,v1400280386614,v1400613113454,v1400280384314,v1400280384218,v1400280386618,v1400646667886,v1400280384410,v1400280384234,v1400257315638,v1400257315542,v1400257317942,v1400613112750,v1400257315642,v1400257315546,v1400257317946,v1400646667182,v1400257315738,v1400257315562] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400612376174) (.cons (no_v1400645930606) (.cons (no_v1400612375470) (.cons (no_v1400645929902) (.cons (no_v1400612370030) (.cons (no_v1400645924462) (.cons (no_v1400612369326) (.cons (no_v1400645923758) (.cons (no_v1400612367790) (.cons (no_v1400645922222) (.cons (no_v1400612523630) (.cons (no_v1400646078062) (.cons (no_v1400612522926) (.cons (no_v1400646077358) (.cons (no_v1400280384310) (.cons (no_v1400280384214) (.cons (no_v1400280386614) (.cons (no_v1400613113454) (.cons (no_v1400280384314) (.cons (no_v1400280384218) (.cons (no_v1400280386618) (.cons (no_v1400646667886) (.cons (no_v1400280384410) (.cons (no_v1400280384234) (.cons (no_v1400257315638) (.cons (no_v1400257315542) (.cons (no_v1400257317942) (.cons (no_v1400613112750) (.cons (no_v1400257315642) (.cons (no_v1400257315546) (.cons (no_v1400257317946) (.cons (no_v1400646667182) (.cons (no_v1400257315738) (.cons (no_v1400257315562) .nil))))))))))))))))))))))))))))))))))

private def v1175126593134 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1175126593134 : ¬ MinimalInterpreter v1175126593134 :=
  chain_cut false 2 (by decide)

private def v1174321286766 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1174321286766 : ¬ MinimalInterpreter v1174321286766 :=
  chain_cut false 2 (by decide)

private def v1175160147566 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1175160147566 : ¬ MinimalInterpreter v1175160147566 :=
  chain_cut false 2 (by decide)

private def v1174354841198 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1174354841198 : ¬ MinimalInterpreter v1174354841198 :=
  chain_cut false 3 (by decide)

private def v1175965453934 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1175965453934 : ¬ MinimalInterpreter v1175965453934 :=
  chain_cut true 2 (by decide)

private def v1174489058926 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1174489058926 : ¬ MinimalInterpreter v1174489058926 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126592430 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1175126592430 : ¬ MinimalInterpreter v1175126592430 :=
  chain_cut false 2 (by decide)

private def v1174321286062 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1174321286062 : ¬ MinimalInterpreter v1174321286062 :=
  chain_cut false 2 (by decide)

private def v1175160146862 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1175160146862 : ¬ MinimalInterpreter v1175160146862 :=
  chain_cut false 2 (by decide)

private def v1174354840494 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1174354840494 : ¬ MinimalInterpreter v1174354840494 :=
  chain_cut false 3 (by decide)

private def v1175965453230 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1175965453230 : ¬ MinimalInterpreter v1175965453230 :=
  chain_cut true 2 (by decide)

private def v1174489058222 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1174489058222 : ¬ MinimalInterpreter v1174489058222 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126586990 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v1175126586990 : ¬ MinimalInterpreter v1175126586990 :=
  chain_cut false 2 (by decide)

private def v1174321280622 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v1174321280622 : ¬ MinimalInterpreter v1174321280622 :=
  chain_cut false 2 (by decide)

private def v1175160141422 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v1175160141422 : ¬ MinimalInterpreter v1175160141422 :=
  chain_cut false 2 (by decide)

private def v1174354835054 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v1174354835054 : ¬ MinimalInterpreter v1174354835054 :=
  chain_cut false 3 (by decide)

private def v1175965447790 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v1175965447790 : ¬ MinimalInterpreter v1175965447790 :=
  chain_cut true 2 (by decide)

private def v1174489052782 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v1174489052782 : ¬ MinimalInterpreter v1174489052782 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126586286 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v1175126586286 : ¬ MinimalInterpreter v1175126586286 :=
  chain_cut false 2 (by decide)

private def v1174321279918 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v1174321279918 : ¬ MinimalInterpreter v1174321279918 :=
  chain_cut false 2 (by decide)

private def v1175160140718 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v1175160140718 : ¬ MinimalInterpreter v1175160140718 :=
  chain_cut false 2 (by decide)

private def v1174354834350 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v1174354834350 : ¬ MinimalInterpreter v1174354834350 :=
  chain_cut false 3 (by decide)

private def v1175965447086 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v1175965447086 : ¬ MinimalInterpreter v1175965447086 :=
  chain_cut true 2 (by decide)

private def v1174489052078 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v1174489052078 : ¬ MinimalInterpreter v1174489052078 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126584750 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v1175126584750 : ¬ MinimalInterpreter v1175126584750 :=
  chain_cut false 2 (by decide)

private def v1174321278382 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v1174321278382 : ¬ MinimalInterpreter v1174321278382 :=
  chain_cut false 2 (by decide)

private def v1175160139182 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v1175160139182 : ¬ MinimalInterpreter v1175160139182 :=
  chain_cut false 2 (by decide)

private def v1174354832814 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v1174354832814 : ¬ MinimalInterpreter v1174354832814 :=
  chain_cut false 3 (by decide)

private def v1175965445550 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v1175965445550 : ¬ MinimalInterpreter v1175965445550 :=
  chain_cut true 2 (by decide)

private def v1174489050542 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v1174489050542 : ¬ MinimalInterpreter v1174489050542 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126740590 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1175126740590 : ¬ MinimalInterpreter v1175126740590 :=
  chain_cut false 2 (by decide)

private def v1174321434222 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1174321434222 : ¬ MinimalInterpreter v1174321434222 :=
  chain_cut false 2 (by decide)

private def v1175160295022 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1175160295022 : ¬ MinimalInterpreter v1175160295022 :=
  chain_cut false 2 (by decide)

private def v1174354988654 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1174354988654 : ¬ MinimalInterpreter v1174354988654 :=
  chain_cut false 4 (by decide)

private def v1175965601390 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1175965601390 : ¬ MinimalInterpreter v1175965601390 :=
  chain_cut true 2 (by decide)

private def v1174489206382 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1174489206382 : ¬ MinimalInterpreter v1174489206382 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126739886 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1175126739886 : ¬ MinimalInterpreter v1175126739886 :=
  chain_cut false 2 (by decide)

private def v1174321433518 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1174321433518 : ¬ MinimalInterpreter v1174321433518 :=
  chain_cut false 2 (by decide)

private def v1175160294318 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1175160294318 : ¬ MinimalInterpreter v1175160294318 :=
  chain_cut false 2 (by decide)

private def v1174354987950 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1174354987950 : ¬ MinimalInterpreter v1174354987950 :=
  chain_cut false 4 (by decide)

private def v1175965600686 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1175965600686 : ¬ MinimalInterpreter v1175965600686 :=
  chain_cut true 2 (by decide)

private def v1174489205678 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1174489205678 : ¬ MinimalInterpreter v1174489205678 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174703817526 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))
private theorem no_v1174703817526 : ¬ MinimalInterpreter v1174703817526 :=
  so_cut false 4 (show SO (.app (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 2)))))) from (.app (.lam (r := (.var 1)) (g := (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 2))))))) (.app (.var 2) (.app (.var 0) (.lam (r := (.var 2)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 3))) (.var 2) (by decide) (by decide)))) (.var 1) (by decide) (by decide)) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1) (by decide) (by decide)))))

private def v1175127330414 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1175127330414 : ¬ MinimalInterpreter v1175127330414 :=
  chain_cut false 3 (by decide)

private def v1174703817430 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
private theorem no_v1174703817430 : ¬ MinimalInterpreter v1174703817430 :=
  so_cut false 5 (show SO (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) from (.app (.app (.var 1) (.lam (r := (.var 1)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1) (by decide) (by decide))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1) (by decide) (by decide)))))

private def v1174322024046 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1174322024046 : ¬ MinimalInterpreter v1174322024046 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1174703817530 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))
private theorem no_v1174703817530 : ¬ MinimalInterpreter v1174703817530 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1175160884846 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1175160884846 : ¬ MinimalInterpreter v1175160884846 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174703817434 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
private theorem no_v1174703817434 : ¬ MinimalInterpreter v1174703817434 :=
  so_cut true 5 (show SO (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))))) from (.app (.var 0) (.lam (r := (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (g := (.app (.var 1) (.app (.var 0) (.var 1)))) (.app (.lam (r := (.var 1)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1) (by decide) (by decide)) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1) (by decide) (by decide)))) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)) (by decide) (by decide))))

private def v1174355578478 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1174355578478 : ¬ MinimalInterpreter v1174355578478 :=
  chain_cut false 2 (by decide)

private def v1174703817626 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))
private theorem no_v1174703817626 : ¬ MinimalInterpreter v1174703817626 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175966191214 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1175966191214 : ¬ MinimalInterpreter v1175966191214 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174703817450 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
private theorem no_v1174703817450 : ¬ MinimalInterpreter v1174703817450 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174489796206 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1174489796206 : ¬ MinimalInterpreter v1174489796206 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174698050358 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))
private theorem no_v1174698050358 : ¬ MinimalInterpreter v1174698050358 :=
  so_cut false 4 (show SO (.app (.app (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.var 3)))))) (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.var 2))))) from (.app (.app (.lam (r := (.var 1)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.var 2)))))) (.app (.app (.var 2) (.var 0)) (.lam (r := (.var 2)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 3))) (.var 2) (by decide) (by decide))) (.var 1) (by decide) (by decide)) (.var 0)) (.lam (r := (.var 1)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1) (by decide) (by decide))))

private def v1175127329710 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1175127329710 : ¬ MinimalInterpreter v1175127329710 :=
  chain_cut false 3 (by decide)

private def v1174698050262 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
private theorem no_v1174698050262 : ¬ MinimalInterpreter v1174698050262 :=
  so_cut false 5 (show SO (.app (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.app (.var 1) (.var 0)) (.lam (r := (.var 1)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1) (by decide) (by decide))) (.var 0) (by decide) (by decide)) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide))))

private def v1174322023342 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1174322023342 : ¬ MinimalInterpreter v1174322023342 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1174698050362 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))
private theorem no_v1174698050362 : ¬ MinimalInterpreter v1174698050362 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175160884142 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1175160884142 : ¬ MinimalInterpreter v1175160884142 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174698050266 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
private theorem no_v1174698050266 : ¬ MinimalInterpreter v1174698050266 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174355577774 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1174355577774 : ¬ MinimalInterpreter v1174355577774 :=
  chain_cut false 2 (by decide)

private def v1174698050458 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))
private theorem no_v1174698050458 : ¬ MinimalInterpreter v1174698050458 :=
  so_cut true 5 (show SO (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))) from (.app (.var 0) (.lam (r := (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (g := (.app (.app (.var 0) (.var 1)) (.var 1))) (.app (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1) (by decide) (by decide))) (.lam (r := (.var 1)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1) (by decide) (by decide))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)) (by decide) (by decide))))

private def v1175966190510 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1175966190510 : ¬ MinimalInterpreter v1175966190510 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174698050282 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
private theorem no_v1174698050282 : ¬ MinimalInterpreter v1174698050282 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174489795502 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1174489795502 : ¬ MinimalInterpreter v1174489795502 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem five39 : BadRow (bucket true 3 2 4 [0,1,0,2]) := by
  have h : bucket true 3 2 4 [0,1,0,2] = [v1175126593134,v1174321286766,v1175160147566,v1174354841198,v1175965453934,v1174489058926,v1175126592430,v1174321286062,v1175160146862,v1174354840494,v1175965453230,v1174489058222,v1175126586990,v1174321280622,v1175160141422,v1174354835054,v1175965447790,v1174489052782,v1175126586286,v1174321279918,v1175160140718,v1174354834350,v1175965447086,v1174489052078,v1175126584750,v1174321278382,v1175160139182,v1174354832814,v1175965445550,v1174489050542,v1175126740590,v1174321434222,v1175160295022,v1174354988654,v1175965601390,v1174489206382,v1175126739886,v1174321433518,v1175160294318,v1174354987950,v1175965600686,v1174489205678,v1174703817526,v1175127330414,v1174703817430,v1174322024046,v1174703817530,v1175160884846,v1174703817434,v1174355578478,v1174703817626,v1175966191214,v1174703817450,v1174489796206,v1174698050358,v1175127329710,v1174698050262,v1174322023342,v1174698050362,v1175160884142,v1174698050266,v1174355577774,v1174698050458,v1175966190510,v1174698050282,v1174489795502] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175126593134) (.cons (no_v1174321286766) (.cons (no_v1175160147566) (.cons (no_v1174354841198) (.cons (no_v1175965453934) (.cons (no_v1174489058926) (.cons (no_v1175126592430) (.cons (no_v1174321286062) (.cons (no_v1175160146862) (.cons (no_v1174354840494) (.cons (no_v1175965453230) (.cons (no_v1174489058222) (.cons (no_v1175126586990) (.cons (no_v1174321280622) (.cons (no_v1175160141422) (.cons (no_v1174354835054) (.cons (no_v1175965447790) (.cons (no_v1174489052782) (.cons (no_v1175126586286) (.cons (no_v1174321279918) (.cons (no_v1175160140718) (.cons (no_v1174354834350) (.cons (no_v1175965447086) (.cons (no_v1174489052078) (.cons (no_v1175126584750) (.cons (no_v1174321278382) (.cons (no_v1175160139182) (.cons (no_v1174354832814) (.cons (no_v1175965445550) (.cons (no_v1174489050542) (.cons (no_v1175126740590) (.cons (no_v1174321434222) (.cons (no_v1175160295022) (.cons (no_v1174354988654) (.cons (no_v1175965601390) (.cons (no_v1174489206382) (.cons (no_v1175126739886) (.cons (no_v1174321433518) (.cons (no_v1175160294318) (.cons (no_v1174354987950) (.cons (no_v1175965600686) (.cons (no_v1174489205678) (.cons (no_v1174703817526) (.cons (no_v1175127330414) (.cons (no_v1174703817430) (.cons (no_v1174322024046) (.cons (no_v1174703817530) (.cons (no_v1175160884846) (.cons (no_v1174703817434) (.cons (no_v1174355578478) (.cons (no_v1174703817626) (.cons (no_v1175966191214) (.cons (no_v1174703817450) (.cons (no_v1174489796206) (.cons (no_v1174698050358) (.cons (no_v1175127329710) (.cons (no_v1174698050262) (.cons (no_v1174322023342) (.cons (no_v1174698050362) (.cons (no_v1175160884142) (.cons (no_v1174698050266) (.cons (no_v1174355577774) (.cons (no_v1174698050458) (.cons (no_v1175966190510) (.cons (no_v1174698050282) (.cons (no_v1174489795502) .nil))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

end Blc.SelfintSingleObject.Rows40
