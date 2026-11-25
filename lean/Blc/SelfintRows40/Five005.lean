import Blc.SelfintInternalWidthCut
import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five40 : BadRow (bucket false 3 2 4 [0,1,1,1]) := by
  have h : bucket false 3 2 4 [0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five41 : BadRow (bucket true 3 2 4 [0,1,1,1]) := by
  have h : bucket true 3 2 4 [0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1400612376186 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1400612376186 : ¬ MinimalInterpreter v1400612376186 :=
  chain_cut false 2 (by decide)

private def v1400645930618 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1400645930618 : ¬ MinimalInterpreter v1400645930618 :=
  chain_cut false 2 (by decide)

private def v1400612375482 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1400612375482 : ¬ MinimalInterpreter v1400612375482 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400645929914 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1400645929914 : ¬ MinimalInterpreter v1400645929914 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400612370042 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v1400612370042 : ¬ MinimalInterpreter v1400612370042 :=
  chain_cut false 2 (by decide)

private def v1400645924474 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v1400645924474 : ¬ MinimalInterpreter v1400645924474 :=
  chain_cut false 2 (by decide)

private def v1400612369338 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v1400612369338 : ¬ MinimalInterpreter v1400612369338 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400645923770 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v1400645923770 : ¬ MinimalInterpreter v1400645923770 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400612367802 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v1400612367802 : ¬ MinimalInterpreter v1400612367802 :=
  chain_cut false 2 (by decide)

private def v1400645922234 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v1400645922234 : ¬ MinimalInterpreter v1400645922234 :=
  chain_cut false 2 (by decide)

private def v1400612523642 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1400612523642 : ¬ MinimalInterpreter v1400612523642 :=
  chain_cut false 2 (by decide)

private def v1400646078074 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1400646078074 : ¬ MinimalInterpreter v1400646078074 :=
  chain_cut false 2 (by decide)

private def v1400612522938 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1400612522938 : ¬ MinimalInterpreter v1400612522938 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400646077370 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1400646077370 : ¬ MinimalInterpreter v1400646077370 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400280777526 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))
private theorem no_v1400280777526 : ¬ MinimalInterpreter v1400280777526 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.var 0)))) (.app (.var 1) (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide))) (.var 0))) (.var 0) (by decide) (by decide)))))

private def v1400280777430 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
private theorem no_v1400280777430 : ¬ MinimalInterpreter v1400280777430 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)))) (.app (.var 1) (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide))) (.var 0))) (.var 0) (by decide) (by decide)))))

private def v1400280779830 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
private theorem no_v1400280779830 : ¬ MinimalInterpreter v1400280779830 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 0)))) (.app (.var 1) (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (.var 0))) (.var 0) (by decide) (by decide)))))

private def v1400613113466 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1400613113466 : ¬ MinimalInterpreter v1400613113466 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1400280777530 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))
private theorem no_v1400280777530 : ¬ MinimalInterpreter v1400280777530 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))) (.app (.var 1) (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide))) (.var 0))) (.var 0) (by decide) (by decide)))))

private def v1400280777434 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
private theorem no_v1400280777434 : ¬ MinimalInterpreter v1400280777434 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)))) (.app (.var 1) (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide))) (.var 0))) (.var 0) (by decide) (by decide)))))

private def v1400280779834 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
private theorem no_v1400280779834 : ¬ MinimalInterpreter v1400280779834 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)))) (.app (.var 1) (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (.var 0))) (.var 0) (by decide) (by decide)))))

private def v1400646667898 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1400646667898 : ¬ MinimalInterpreter v1400646667898 :=
  chain_cut false 8 (by decide)

private def v1400280777626 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))
private theorem no_v1400280777626 : ¬ MinimalInterpreter v1400280777626 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)))) (.app (.var 1) (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide))) (.var 0))) (.var 0) (by decide) (by decide)))))

private def v1400280777450 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
private theorem no_v1400280777450 : ¬ MinimalInterpreter v1400280777450 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 0)))) (.app (.var 1) (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide))) (.var 0))) (.var 0) (by decide) (by decide)))))

private def v1400257708854 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))
private theorem no_v1400257708854 : ¬ MinimalInterpreter v1400257708854 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)))))

private def v1400257708758 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
private theorem no_v1400257708758 : ¬ MinimalInterpreter v1400257708758 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)))))

private def v1400257711158 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
private theorem no_v1400257711158 : ¬ MinimalInterpreter v1400257711158 :=
  w_cut false 0 (by decide)

private def v1400613112762 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1400613112762 : ¬ MinimalInterpreter v1400613112762 :=
  w_cut false 0 (by decide)

private def v1400257708858 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))
private theorem no_v1400257708858 : ¬ MinimalInterpreter v1400257708858 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)))))

private def v1400257708762 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
private theorem no_v1400257708762 : ¬ MinimalInterpreter v1400257708762 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)))))

private def v1400257711162 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
private theorem no_v1400257711162 : ¬ MinimalInterpreter v1400257711162 :=
  w_cut false 0 (by decide)

private def v1400646667194 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1400646667194 : ¬ MinimalInterpreter v1400646667194 :=
  w_cut false 0 (by decide)

private def v1400257708954 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))
private theorem no_v1400257708954 : ¬ MinimalInterpreter v1400257708954 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)))))

private def v1400257708778 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
private theorem no_v1400257708778 : ¬ MinimalInterpreter v1400257708778 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide)))))

theorem five42 : BadRow (bucket false 3 2 4 [0,1,2,0]) := by
  have h : bucket false 3 2 4 [0,1,2,0] = [v1400612376186,v1400645930618,v1400612375482,v1400645929914,v1400612370042,v1400645924474,v1400612369338,v1400645923770,v1400612367802,v1400645922234,v1400612523642,v1400646078074,v1400612522938,v1400646077370,v1400280777526,v1400280777430,v1400280779830,v1400613113466,v1400280777530,v1400280777434,v1400280779834,v1400646667898,v1400280777626,v1400280777450,v1400257708854,v1400257708758,v1400257711158,v1400613112762,v1400257708858,v1400257708762,v1400257711162,v1400646667194,v1400257708954,v1400257708778] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400612376186) (.cons (no_v1400645930618) (.cons (no_v1400612375482) (.cons (no_v1400645929914) (.cons (no_v1400612370042) (.cons (no_v1400645924474) (.cons (no_v1400612369338) (.cons (no_v1400645923770) (.cons (no_v1400612367802) (.cons (no_v1400645922234) (.cons (no_v1400612523642) (.cons (no_v1400646078074) (.cons (no_v1400612522938) (.cons (no_v1400646077370) (.cons (no_v1400280777526) (.cons (no_v1400280777430) (.cons (no_v1400280779830) (.cons (no_v1400613113466) (.cons (no_v1400280777530) (.cons (no_v1400280777434) (.cons (no_v1400280779834) (.cons (no_v1400646667898) (.cons (no_v1400280777626) (.cons (no_v1400280777450) (.cons (no_v1400257708854) (.cons (no_v1400257708758) (.cons (no_v1400257711158) (.cons (no_v1400613112762) (.cons (no_v1400257708858) (.cons (no_v1400257708762) (.cons (no_v1400257711162) (.cons (no_v1400646667194) (.cons (no_v1400257708954) (.cons (no_v1400257708778) .nil))))))))))))))))))))))))))))))))))

private def v1175126593146 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1175126593146 : ¬ MinimalInterpreter v1175126593146 :=
  chain_cut false 2 (by decide)

private def v1174321286778 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1174321286778 : ¬ MinimalInterpreter v1174321286778 :=
  chain_cut false 2 (by decide)

private def v1175160147578 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1175160147578 : ¬ MinimalInterpreter v1175160147578 :=
  chain_cut false 2 (by decide)

private def v1174354841210 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1174354841210 : ¬ MinimalInterpreter v1174354841210 :=
  chain_cut false 3 (by decide)

private def v1175965453946 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1175965453946 : ¬ MinimalInterpreter v1175965453946 :=
  chain_cut true 2 (by decide)

private def v1174489058938 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1174489058938 : ¬ MinimalInterpreter v1174489058938 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126592442 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1175126592442 : ¬ MinimalInterpreter v1175126592442 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174321286074 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1174321286074 : ¬ MinimalInterpreter v1174321286074 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175160146874 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1175160146874 : ¬ MinimalInterpreter v1175160146874 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174354840506 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1174354840506 : ¬ MinimalInterpreter v1174354840506 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175965453242 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1175965453242 : ¬ MinimalInterpreter v1175965453242 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174489058234 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1174489058234 : ¬ MinimalInterpreter v1174489058234 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175126587002 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v1175126587002 : ¬ MinimalInterpreter v1175126587002 :=
  chain_cut false 2 (by decide)

private def v1174321280634 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v1174321280634 : ¬ MinimalInterpreter v1174321280634 :=
  chain_cut false 2 (by decide)

private def v1175160141434 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v1175160141434 : ¬ MinimalInterpreter v1175160141434 :=
  chain_cut false 2 (by decide)

private def v1174354835066 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v1174354835066 : ¬ MinimalInterpreter v1174354835066 :=
  chain_cut false 3 (by decide)

private def v1175965447802 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v1175965447802 : ¬ MinimalInterpreter v1175965447802 :=
  chain_cut true 2 (by decide)

private def v1174489052794 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v1174489052794 : ¬ MinimalInterpreter v1174489052794 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126586298 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v1175126586298 : ¬ MinimalInterpreter v1175126586298 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174321279930 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v1174321279930 : ¬ MinimalInterpreter v1174321279930 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175160140730 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v1175160140730 : ¬ MinimalInterpreter v1175160140730 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174354834362 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v1174354834362 : ¬ MinimalInterpreter v1174354834362 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175965447098 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v1175965447098 : ¬ MinimalInterpreter v1175965447098 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174489052090 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v1174489052090 : ¬ MinimalInterpreter v1174489052090 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175126584762 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v1175126584762 : ¬ MinimalInterpreter v1175126584762 :=
  chain_cut false 2 (by decide)

private def v1174321278394 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v1174321278394 : ¬ MinimalInterpreter v1174321278394 :=
  chain_cut false 2 (by decide)

private def v1175160139194 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v1175160139194 : ¬ MinimalInterpreter v1175160139194 :=
  chain_cut false 2 (by decide)

private def v1174354832826 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v1174354832826 : ¬ MinimalInterpreter v1174354832826 :=
  chain_cut false 3 (by decide)

private def v1175965445562 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v1175965445562 : ¬ MinimalInterpreter v1175965445562 :=
  chain_cut true 2 (by decide)

private def v1174489050554 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v1174489050554 : ¬ MinimalInterpreter v1174489050554 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126740602 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1175126740602 : ¬ MinimalInterpreter v1175126740602 :=
  chain_cut false 2 (by decide)

private def v1174321434234 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1174321434234 : ¬ MinimalInterpreter v1174321434234 :=
  chain_cut false 2 (by decide)

private def v1175160295034 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1175160295034 : ¬ MinimalInterpreter v1175160295034 :=
  chain_cut false 2 (by decide)

private def v1174354988666 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1174354988666 : ¬ MinimalInterpreter v1174354988666 :=
  chain_cut false 4 (by decide)

private def v1175965601402 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1175965601402 : ¬ MinimalInterpreter v1175965601402 :=
  chain_cut true 2 (by decide)

private def v1174489206394 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1174489206394 : ¬ MinimalInterpreter v1174489206394 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126739898 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1175126739898 : ¬ MinimalInterpreter v1175126739898 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1174321433530 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1174321433530 : ¬ MinimalInterpreter v1174321433530 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1175160294330 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1175160294330 : ¬ MinimalInterpreter v1175160294330 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1174354987962 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1174354987962 : ¬ MinimalInterpreter v1174354987962 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1175965600698 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1175965600698 : ¬ MinimalInterpreter v1175965600698 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1174489205690 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1174489205690 : ¬ MinimalInterpreter v1174489205690 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1174703915830 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))
private theorem no_v1174703915830 : ¬ MinimalInterpreter v1174703915830 :=
  so_cut false 4 (show SO (.app (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 3)))) (.var 0)))) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 2)))) (.var 0))) from (.app (.lam (r := (.var 1)) (g := (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 2)))) (.var 0)))) (.app (.var 2) (.app (.lam (r := (.var 2)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 3))) (.var 2) (by decide) (by decide)) (.var 0))) (.var 1) (by decide) (by decide)) (.app (.lam (r := (.var 1)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1) (by decide) (by decide)) (.var 0))))

private def v1175127330426 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1175127330426 : ¬ MinimalInterpreter v1175127330426 :=
  chain_cut false 3 (by decide)

private def v1174703915734 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
private theorem no_v1174703915734 : ¬ MinimalInterpreter v1174703915734 :=
  so_cut false 5 (show SO (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 1)) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0))) from (.app (.app (.lam (r := (.var 1)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1) (by decide) (by decide)) (.var 1)) (.app (.lam (r := (.var 1)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1) (by decide) (by decide)) (.var 0))))

private def v1174322024058 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1174322024058 : ¬ MinimalInterpreter v1174322024058 :=
  chain_cut false 7 (by decide)

private def v1174703915834 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))
private theorem no_v1174703915834 : ¬ MinimalInterpreter v1174703915834 :=
  chain_cut true 5 (by decide)

private def v1175160884858 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1175160884858 : ¬ MinimalInterpreter v1175160884858 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174703915738 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
private theorem no_v1174703915738 : ¬ MinimalInterpreter v1174703915738 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174355578490 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1174355578490 : ¬ MinimalInterpreter v1174355578490 :=
  chain_cut false 2 (by decide)

private def v1174703915930 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))
private theorem no_v1174703915930 : ¬ MinimalInterpreter v1174703915930 :=
  chain_cut true 5 (by decide)

private def v1175966191226 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1175966191226 : ¬ MinimalInterpreter v1175966191226 :=
  chain_cut true 6 (by decide)

private def v1174703915754 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
private theorem no_v1174703915754 : ¬ MinimalInterpreter v1174703915754 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174489796218 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1174489796218 : ¬ MinimalInterpreter v1174489796218 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174698148662 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))
private theorem no_v1174698148662 : ¬ MinimalInterpreter v1174698148662 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide))))

private def v1175127329722 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1175127329722 : ¬ MinimalInterpreter v1175127329722 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1174698148566 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
private theorem no_v1174698148566 : ¬ MinimalInterpreter v1174698148566 :=
  w_cut false 0 (by decide)

private def v1174322023354 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1174322023354 : ¬ MinimalInterpreter v1174322023354 :=
  w_cut false 0 (by decide)

private def v1174698148666 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))
private theorem no_v1174698148666 : ¬ MinimalInterpreter v1174698148666 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide))))

private def v1175160884154 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1175160884154 : ¬ MinimalInterpreter v1175160884154 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1174698148570 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
private theorem no_v1174698148570 : ¬ MinimalInterpreter v1174698148570 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide))))

private def v1174355577786 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1174355577786 : ¬ MinimalInterpreter v1174355577786 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1174698148762 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))
private theorem no_v1174698148762 : ¬ MinimalInterpreter v1174698148762 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide))))

private def v1175966190522 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1175966190522 : ¬ MinimalInterpreter v1175966190522 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1174698148586 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
private theorem no_v1174698148586 : ¬ MinimalInterpreter v1174698148586 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide))))

private def v1174489795514 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1174489795514 : ¬ MinimalInterpreter v1174489795514 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem five43 : BadRow (bucket true 3 2 4 [0,1,2,0]) := by
  have h : bucket true 3 2 4 [0,1,2,0] = [v1175126593146,v1174321286778,v1175160147578,v1174354841210,v1175965453946,v1174489058938,v1175126592442,v1174321286074,v1175160146874,v1174354840506,v1175965453242,v1174489058234,v1175126587002,v1174321280634,v1175160141434,v1174354835066,v1175965447802,v1174489052794,v1175126586298,v1174321279930,v1175160140730,v1174354834362,v1175965447098,v1174489052090,v1175126584762,v1174321278394,v1175160139194,v1174354832826,v1175965445562,v1174489050554,v1175126740602,v1174321434234,v1175160295034,v1174354988666,v1175965601402,v1174489206394,v1175126739898,v1174321433530,v1175160294330,v1174354987962,v1175965600698,v1174489205690,v1174703915830,v1175127330426,v1174703915734,v1174322024058,v1174703915834,v1175160884858,v1174703915738,v1174355578490,v1174703915930,v1175966191226,v1174703915754,v1174489796218,v1174698148662,v1175127329722,v1174698148566,v1174322023354,v1174698148666,v1175160884154,v1174698148570,v1174355577786,v1174698148762,v1175966190522,v1174698148586,v1174489795514] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175126593146) (.cons (no_v1174321286778) (.cons (no_v1175160147578) (.cons (no_v1174354841210) (.cons (no_v1175965453946) (.cons (no_v1174489058938) (.cons (no_v1175126592442) (.cons (no_v1174321286074) (.cons (no_v1175160146874) (.cons (no_v1174354840506) (.cons (no_v1175965453242) (.cons (no_v1174489058234) (.cons (no_v1175126587002) (.cons (no_v1174321280634) (.cons (no_v1175160141434) (.cons (no_v1174354835066) (.cons (no_v1175965447802) (.cons (no_v1174489052794) (.cons (no_v1175126586298) (.cons (no_v1174321279930) (.cons (no_v1175160140730) (.cons (no_v1174354834362) (.cons (no_v1175965447098) (.cons (no_v1174489052090) (.cons (no_v1175126584762) (.cons (no_v1174321278394) (.cons (no_v1175160139194) (.cons (no_v1174354832826) (.cons (no_v1175965445562) (.cons (no_v1174489050554) (.cons (no_v1175126740602) (.cons (no_v1174321434234) (.cons (no_v1175160295034) (.cons (no_v1174354988666) (.cons (no_v1175965601402) (.cons (no_v1174489206394) (.cons (no_v1175126739898) (.cons (no_v1174321433530) (.cons (no_v1175160294330) (.cons (no_v1174354987962) (.cons (no_v1175965600698) (.cons (no_v1174489205690) (.cons (no_v1174703915830) (.cons (no_v1175127330426) (.cons (no_v1174703915734) (.cons (no_v1174322024058) (.cons (no_v1174703915834) (.cons (no_v1175160884858) (.cons (no_v1174703915738) (.cons (no_v1174355578490) (.cons (no_v1174703915930) (.cons (no_v1175966191226) (.cons (no_v1174703915754) (.cons (no_v1174489796218) (.cons (no_v1174698148662) (.cons (no_v1175127329722) (.cons (no_v1174698148566) (.cons (no_v1174322023354) (.cons (no_v1174698148666) (.cons (no_v1175160884154) (.cons (no_v1174698148570) (.cons (no_v1174355577786) (.cons (no_v1174698148762) (.cons (no_v1175966190522) (.cons (no_v1174698148586) (.cons (no_v1174489795514) .nil))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

private def v1400612376374 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1400612376374 : ¬ MinimalInterpreter v1400612376374 :=
  chain_cut false 2 (by decide)

private def v1400645930806 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1400645930806 : ¬ MinimalInterpreter v1400645930806 :=
  chain_cut false 2 (by decide)

private def v1400612375510 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1400612375510 : ¬ MinimalInterpreter v1400612375510 :=
  chain_cut false 2 (by decide)

private def v1400645929942 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1400645929942 : ¬ MinimalInterpreter v1400645929942 :=
  chain_cut false 2 (by decide)

private def v1400612370230 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v1400612370230 : ¬ MinimalInterpreter v1400612370230 :=
  chain_cut false 2 (by decide)

private def v1400645924662 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v1400645924662 : ¬ MinimalInterpreter v1400645924662 :=
  chain_cut false 2 (by decide)

private def v1400612369366 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v1400612369366 : ¬ MinimalInterpreter v1400612369366 :=
  chain_cut false 2 (by decide)

private def v1400645923798 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v1400645923798 : ¬ MinimalInterpreter v1400645923798 :=
  chain_cut false 2 (by decide)

private def v1400612367830 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v1400612367830 : ¬ MinimalInterpreter v1400612367830 :=
  chain_cut false 2 (by decide)

private def v1400645922262 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v1400645922262 : ¬ MinimalInterpreter v1400645922262 :=
  chain_cut false 2 (by decide)

private def v1400612523830 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1400612523830 : ¬ MinimalInterpreter v1400612523830 :=
  chain_cut false 2 (by decide)

private def v1400646078262 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1400646078262 : ¬ MinimalInterpreter v1400646078262 :=
  chain_cut false 2 (by decide)

private def v1400612522966 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1400612522966 : ¬ MinimalInterpreter v1400612522966 :=
  chain_cut false 2 (by decide)

private def v1400646077398 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1400646077398 : ¬ MinimalInterpreter v1400646077398 :=
  chain_cut false 2 (by decide)

private def v1400286937910 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))
private theorem no_v1400286937910 : ¬ MinimalInterpreter v1400286937910 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.var 0) (.var 1)))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.var 0) (.var 1)))) (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide))) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)))))

private def v1400286937814 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
private theorem no_v1400286937814 : ¬ MinimalInterpreter v1400286937814 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.var 1)))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.var 1)))) (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide))) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)))))

private def v1400286940214 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
private theorem no_v1400286940214 : ¬ MinimalInterpreter v1400286940214 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.var 0) (.var 1)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.var 0) (.var 1)))) (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)))))

private def v1400613113654 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1400613113654 : ¬ MinimalInterpreter v1400613113654 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1400286937914 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))
private theorem no_v1400286937914 : ¬ MinimalInterpreter v1400286937914 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.var 0) (.var 1)))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.var 0) (.var 1)))) (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide))) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)))))

private def v1400286937818 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
private theorem no_v1400286937818 : ¬ MinimalInterpreter v1400286937818 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 1)))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.var 1)))) (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide))) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)))))

private def v1400286940218 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
private theorem no_v1400286940218 : ¬ MinimalInterpreter v1400286940218 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 0) (.var 1)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 0) (.var 1)))) (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)))))

private def v1400646668086 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1400646668086 : ¬ MinimalInterpreter v1400646668086 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1400286938010 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))
private theorem no_v1400286938010 : ¬ MinimalInterpreter v1400286938010 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 1)))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 1)))) (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide))) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)))))

private def v1400286937834 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
private theorem no_v1400286937834 : ¬ MinimalInterpreter v1400286937834 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.var 0) (.var 1)))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.var 0) (.var 1)))) (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide))) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)))))

private def v1400258626358 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))
private theorem no_v1400258626358 : ¬ MinimalInterpreter v1400258626358 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.var 0)) (.var 1))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.var 0)) (.var 1))) (.app (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide))) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)))))

private def v1400258626262 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
private theorem no_v1400258626262 : ¬ MinimalInterpreter v1400258626262 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))) (.app (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide))) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)))))

private def v1400258628662 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
private theorem no_v1400258628662 : ¬ MinimalInterpreter v1400258628662 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 0)) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 0)) (.var 1))) (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)))))

private def v1400613112790 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1400613112790 : ¬ MinimalInterpreter v1400613112790 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1400258626362 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))
private theorem no_v1400258626362 : ¬ MinimalInterpreter v1400258626362 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)) (.var 1))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)) (.var 1))) (.app (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide))) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)))))

private def v1400258626266 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
private theorem no_v1400258626266 : ¬ MinimalInterpreter v1400258626266 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.var 1))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 0)) (.var 1))) (.app (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide))) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)))))

private def v1400258628666 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
private theorem no_v1400258628666 : ¬ MinimalInterpreter v1400258628666 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)) (.var 1))) (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)))))

private def v1400646667222 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1400646667222 : ¬ MinimalInterpreter v1400646667222 :=
  chain_cut false 7 (by decide)

private def v1400258626458 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))
private theorem no_v1400258626458 : ¬ MinimalInterpreter v1400258626458 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))) (.app (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide))) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)))))

private def v1400258626282 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
private theorem no_v1400258626282 : ¬ MinimalInterpreter v1400258626282 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 0)) (.var 1))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 0)) (.var 1))) (.app (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide))) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)))))

theorem five44 : BadRow (bucket false 3 2 4 [0,2,0,1]) := by
  have h : bucket false 3 2 4 [0,2,0,1] = [v1400612376374,v1400645930806,v1400612375510,v1400645929942,v1400612370230,v1400645924662,v1400612369366,v1400645923798,v1400612367830,v1400645922262,v1400612523830,v1400646078262,v1400612522966,v1400646077398,v1400286937910,v1400286937814,v1400286940214,v1400613113654,v1400286937914,v1400286937818,v1400286940218,v1400646668086,v1400286938010,v1400286937834,v1400258626358,v1400258626262,v1400258628662,v1400613112790,v1400258626362,v1400258626266,v1400258628666,v1400646667222,v1400258626458,v1400258626282] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400612376374) (.cons (no_v1400645930806) (.cons (no_v1400612375510) (.cons (no_v1400645929942) (.cons (no_v1400612370230) (.cons (no_v1400645924662) (.cons (no_v1400612369366) (.cons (no_v1400645923798) (.cons (no_v1400612367830) (.cons (no_v1400645922262) (.cons (no_v1400612523830) (.cons (no_v1400646078262) (.cons (no_v1400612522966) (.cons (no_v1400646077398) (.cons (no_v1400286937910) (.cons (no_v1400286937814) (.cons (no_v1400286940214) (.cons (no_v1400613113654) (.cons (no_v1400286937914) (.cons (no_v1400286937818) (.cons (no_v1400286940218) (.cons (no_v1400646668086) (.cons (no_v1400286938010) (.cons (no_v1400286937834) (.cons (no_v1400258626358) (.cons (no_v1400258626262) (.cons (no_v1400258628662) (.cons (no_v1400613112790) (.cons (no_v1400258626362) (.cons (no_v1400258626266) (.cons (no_v1400258628666) (.cons (no_v1400646667222) (.cons (no_v1400258626458) (.cons (no_v1400258626282) .nil))))))))))))))))))))))))))))))))))

private def v1175126593334 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1175126593334 : ¬ MinimalInterpreter v1175126593334 :=
  chain_cut false 2 (by decide)

private def v1174321286966 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1174321286966 : ¬ MinimalInterpreter v1174321286966 :=
  chain_cut false 2 (by decide)

private def v1175160147766 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1175160147766 : ¬ MinimalInterpreter v1175160147766 :=
  chain_cut false 2 (by decide)

private def v1174354841398 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1174354841398 : ¬ MinimalInterpreter v1174354841398 :=
  chain_cut false 3 (by decide)

private def v1175965454134 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1175965454134 : ¬ MinimalInterpreter v1175965454134 :=
  chain_cut true 2 (by decide)

private def v1174489059126 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1174489059126 : ¬ MinimalInterpreter v1174489059126 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126592470 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1175126592470 : ¬ MinimalInterpreter v1175126592470 :=
  chain_cut false 2 (by decide)

private def v1174321286102 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1174321286102 : ¬ MinimalInterpreter v1174321286102 :=
  chain_cut false 2 (by decide)

private def v1175160146902 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1175160146902 : ¬ MinimalInterpreter v1175160146902 :=
  chain_cut false 2 (by decide)

private def v1174354840534 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1174354840534 : ¬ MinimalInterpreter v1174354840534 :=
  chain_cut false 3 (by decide)

private def v1175965453270 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1175965453270 : ¬ MinimalInterpreter v1175965453270 :=
  chain_cut true 2 (by decide)

private def v1174489058262 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1174489058262 : ¬ MinimalInterpreter v1174489058262 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126587190 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v1175126587190 : ¬ MinimalInterpreter v1175126587190 :=
  chain_cut false 2 (by decide)

private def v1174321280822 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v1174321280822 : ¬ MinimalInterpreter v1174321280822 :=
  chain_cut false 2 (by decide)

private def v1175160141622 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v1175160141622 : ¬ MinimalInterpreter v1175160141622 :=
  chain_cut false 2 (by decide)

private def v1174354835254 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v1174354835254 : ¬ MinimalInterpreter v1174354835254 :=
  chain_cut false 3 (by decide)

private def v1175965447990 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v1175965447990 : ¬ MinimalInterpreter v1175965447990 :=
  chain_cut true 2 (by decide)

private def v1174489052982 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v1174489052982 : ¬ MinimalInterpreter v1174489052982 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126586326 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v1175126586326 : ¬ MinimalInterpreter v1175126586326 :=
  chain_cut false 2 (by decide)

private def v1174321279958 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v1174321279958 : ¬ MinimalInterpreter v1174321279958 :=
  chain_cut false 2 (by decide)

private def v1175160140758 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v1175160140758 : ¬ MinimalInterpreter v1175160140758 :=
  chain_cut false 2 (by decide)

private def v1174354834390 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v1174354834390 : ¬ MinimalInterpreter v1174354834390 :=
  chain_cut false 3 (by decide)

private def v1175965447126 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v1175965447126 : ¬ MinimalInterpreter v1175965447126 :=
  chain_cut true 2 (by decide)

private def v1174489052118 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v1174489052118 : ¬ MinimalInterpreter v1174489052118 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126584790 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v1175126584790 : ¬ MinimalInterpreter v1175126584790 :=
  chain_cut false 2 (by decide)

private def v1174321278422 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v1174321278422 : ¬ MinimalInterpreter v1174321278422 :=
  chain_cut false 2 (by decide)

private def v1175160139222 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v1175160139222 : ¬ MinimalInterpreter v1175160139222 :=
  chain_cut false 2 (by decide)

private def v1174354832854 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v1174354832854 : ¬ MinimalInterpreter v1174354832854 :=
  chain_cut false 3 (by decide)

private def v1175965445590 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v1175965445590 : ¬ MinimalInterpreter v1175965445590 :=
  chain_cut true 2 (by decide)

private def v1174489050582 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v1174489050582 : ¬ MinimalInterpreter v1174489050582 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126740790 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1175126740790 : ¬ MinimalInterpreter v1175126740790 :=
  chain_cut false 2 (by decide)

private def v1174321434422 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1174321434422 : ¬ MinimalInterpreter v1174321434422 :=
  chain_cut false 2 (by decide)

private def v1175160295222 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1175160295222 : ¬ MinimalInterpreter v1175160295222 :=
  chain_cut false 2 (by decide)

private def v1174354988854 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1174354988854 : ¬ MinimalInterpreter v1174354988854 :=
  chain_cut false 4 (by decide)

private def v1175965601590 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1175965601590 : ¬ MinimalInterpreter v1175965601590 :=
  chain_cut true 2 (by decide)

private def v1174489206582 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1174489206582 : ¬ MinimalInterpreter v1174489206582 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126739926 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1175126739926 : ¬ MinimalInterpreter v1175126739926 :=
  chain_cut false 2 (by decide)

private def v1174321433558 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1174321433558 : ¬ MinimalInterpreter v1174321433558 :=
  chain_cut false 2 (by decide)

private def v1175160294358 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1175160294358 : ¬ MinimalInterpreter v1175160294358 :=
  chain_cut false 2 (by decide)

private def v1174354987990 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1174354987990 : ¬ MinimalInterpreter v1174354987990 :=
  chain_cut false 4 (by decide)

private def v1175965600726 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1175965600726 : ¬ MinimalInterpreter v1175965600726 :=
  chain_cut true 2 (by decide)

private def v1174489205718 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1174489205718 : ¬ MinimalInterpreter v1174489205718 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174705455926 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))
private theorem no_v1174705455926 : ¬ MinimalInterpreter v1174705455926 :=
  so_cut true 7 (show SO (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 2)) (.var 2))))) (.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 3)))) (.app (.var 0) (.var 2))))) (.var 1))) from (.app (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 1)) (.var 1)))) (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 2)) (.var 2))) (.var 1) (by decide) (by decide))) (.app (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 2)))) (.app (.var 0) (.var 1)))) (.app (.lam (r := (.var 2)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 3))) (.var 2) (by decide) (by decide)) (.app (.var 0) (.var 2))) (.var 1) (by decide) (by decide))) (.var 1))))

private def v1175127330614 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1175127330614 : ¬ MinimalInterpreter v1175127330614 :=
  chain_cut false 3 (by decide)

private def v1174705455830 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
private theorem no_v1174705455830 : ¬ MinimalInterpreter v1174705455830 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174322024246 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1174322024246 : ¬ MinimalInterpreter v1174322024246 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1174705455930 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))
private theorem no_v1174705455930 : ¬ MinimalInterpreter v1174705455930 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1175160885046 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1175160885046 : ¬ MinimalInterpreter v1175160885046 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174705455834 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
private theorem no_v1174705455834 : ¬ MinimalInterpreter v1174705455834 :=
  chain_cut false 8 (by decide)

private def v1174355578678 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1174355578678 : ¬ MinimalInterpreter v1174355578678 :=
  chain_cut false 2 (by decide)

private def v1174705456026 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))
private theorem no_v1174705456026 : ¬ MinimalInterpreter v1174705456026 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175966191414 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1175966191414 : ¬ MinimalInterpreter v1175966191414 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174705455850 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
private theorem no_v1174705455850 : ¬ MinimalInterpreter v1174705455850 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174489796406 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1174489796406 : ¬ MinimalInterpreter v1174489796406 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174698378038 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))
private theorem no_v1174698378038 : ¬ MinimalInterpreter v1174698378038 :=
  chain_cut false 4 (by decide)

private def v1175127329750 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1175127329750 : ¬ MinimalInterpreter v1175127329750 :=
  chain_cut false 3 (by decide)

private def v1174698377942 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
private theorem no_v1174698377942 : ¬ MinimalInterpreter v1174698377942 :=
  chain_cut false 5 (by decide)

private def v1174322023382 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1174322023382 : ¬ MinimalInterpreter v1174322023382 :=
  chain_cut false 6 (by decide)

private def v1174698378042 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))
private theorem no_v1174698378042 : ¬ MinimalInterpreter v1174698378042 :=
  chain_cut false 4 (by decide)

private def v1175160884182 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1175160884182 : ¬ MinimalInterpreter v1175160884182 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174698377946 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
private theorem no_v1174698377946 : ¬ MinimalInterpreter v1174698377946 :=
  fun he => literal75186750170_excluded he.1

private def v1174355577814 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1174355577814 : ¬ MinimalInterpreter v1174355577814 :=
  chain_cut false 2 (by decide)

private def v1174698378138 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))
private theorem no_v1174698378138 : ¬ MinimalInterpreter v1174698378138 :=
  chain_cut true 4 (by decide)

private def v1175966190550 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1175966190550 : ¬ MinimalInterpreter v1175966190550 :=
  chain_cut true 5 (by decide)

private def v1174698377962 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
private theorem no_v1174698377962 : ¬ MinimalInterpreter v1174698377962 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174489795542 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1174489795542 : ¬ MinimalInterpreter v1174489795542 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem five45 : BadRow (bucket true 3 2 4 [0,2,0,1]) := by
  have h : bucket true 3 2 4 [0,2,0,1] = [v1175126593334,v1174321286966,v1175160147766,v1174354841398,v1175965454134,v1174489059126,v1175126592470,v1174321286102,v1175160146902,v1174354840534,v1175965453270,v1174489058262,v1175126587190,v1174321280822,v1175160141622,v1174354835254,v1175965447990,v1174489052982,v1175126586326,v1174321279958,v1175160140758,v1174354834390,v1175965447126,v1174489052118,v1175126584790,v1174321278422,v1175160139222,v1174354832854,v1175965445590,v1174489050582,v1175126740790,v1174321434422,v1175160295222,v1174354988854,v1175965601590,v1174489206582,v1175126739926,v1174321433558,v1175160294358,v1174354987990,v1175965600726,v1174489205718,v1174705455926,v1175127330614,v1174705455830,v1174322024246,v1174705455930,v1175160885046,v1174705455834,v1174355578678,v1174705456026,v1175966191414,v1174705455850,v1174489796406,v1174698378038,v1175127329750,v1174698377942,v1174322023382,v1174698378042,v1175160884182,v1174698377946,v1174355577814,v1174698378138,v1175966190550,v1174698377962,v1174489795542] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175126593334) (.cons (no_v1174321286966) (.cons (no_v1175160147766) (.cons (no_v1174354841398) (.cons (no_v1175965454134) (.cons (no_v1174489059126) (.cons (no_v1175126592470) (.cons (no_v1174321286102) (.cons (no_v1175160146902) (.cons (no_v1174354840534) (.cons (no_v1175965453270) (.cons (no_v1174489058262) (.cons (no_v1175126587190) (.cons (no_v1174321280822) (.cons (no_v1175160141622) (.cons (no_v1174354835254) (.cons (no_v1175965447990) (.cons (no_v1174489052982) (.cons (no_v1175126586326) (.cons (no_v1174321279958) (.cons (no_v1175160140758) (.cons (no_v1174354834390) (.cons (no_v1175965447126) (.cons (no_v1174489052118) (.cons (no_v1175126584790) (.cons (no_v1174321278422) (.cons (no_v1175160139222) (.cons (no_v1174354832854) (.cons (no_v1175965445590) (.cons (no_v1174489050582) (.cons (no_v1175126740790) (.cons (no_v1174321434422) (.cons (no_v1175160295222) (.cons (no_v1174354988854) (.cons (no_v1175965601590) (.cons (no_v1174489206582) (.cons (no_v1175126739926) (.cons (no_v1174321433558) (.cons (no_v1175160294358) (.cons (no_v1174354987990) (.cons (no_v1175965600726) (.cons (no_v1174489205718) (.cons (no_v1174705455926) (.cons (no_v1175127330614) (.cons (no_v1174705455830) (.cons (no_v1174322024246) (.cons (no_v1174705455930) (.cons (no_v1175160885046) (.cons (no_v1174705455834) (.cons (no_v1174355578678) (.cons (no_v1174705456026) (.cons (no_v1175966191414) (.cons (no_v1174705455850) (.cons (no_v1174489796406) (.cons (no_v1174698378038) (.cons (no_v1175127329750) (.cons (no_v1174698377942) (.cons (no_v1174322023382) (.cons (no_v1174698378042) (.cons (no_v1175160884182) (.cons (no_v1174698377946) (.cons (no_v1174355577814) (.cons (no_v1174698378138) (.cons (no_v1175966190550) (.cons (no_v1174698377962) (.cons (no_v1174489795542) .nil))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

private def v1400612376378 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1400612376378 : ¬ MinimalInterpreter v1400612376378 :=
  chain_cut false 2 (by decide)

private def v1400645930810 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1400645930810 : ¬ MinimalInterpreter v1400645930810 :=
  chain_cut false 2 (by decide)

private def v1400612375514 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1400612375514 : ¬ MinimalInterpreter v1400612375514 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400645929946 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1400645929946 : ¬ MinimalInterpreter v1400645929946 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400612370234 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v1400612370234 : ¬ MinimalInterpreter v1400612370234 :=
  chain_cut false 2 (by decide)

private def v1400645924666 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v1400645924666 : ¬ MinimalInterpreter v1400645924666 :=
  chain_cut false 2 (by decide)

private def v1400612369370 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v1400612369370 : ¬ MinimalInterpreter v1400612369370 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400645923802 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v1400645923802 : ¬ MinimalInterpreter v1400645923802 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400612367834 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v1400612367834 : ¬ MinimalInterpreter v1400612367834 :=
  chain_cut false 2 (by decide)

private def v1400645922266 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v1400645922266 : ¬ MinimalInterpreter v1400645922266 :=
  chain_cut false 2 (by decide)

private def v1400612523834 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1400612523834 : ¬ MinimalInterpreter v1400612523834 :=
  chain_cut false 2 (by decide)

private def v1400646078266 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1400646078266 : ¬ MinimalInterpreter v1400646078266 :=
  chain_cut false 2 (by decide)

private def v1400612522970 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1400612522970 : ¬ MinimalInterpreter v1400612522970 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400646077402 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1400646077402 : ¬ MinimalInterpreter v1400646077402 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400287068982 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))
private theorem no_v1400287068982 : ¬ MinimalInterpreter v1400287068982 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.var 1) (.var 0)))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.var 1) (.var 0)))) (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide))) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)))))

private def v1400287068886 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
private theorem no_v1400287068886 : ¬ MinimalInterpreter v1400287068886 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.var 0)))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 1) (.var 0)))) (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide))) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)))))

private def v1400287071286 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
private theorem no_v1400287071286 : ¬ MinimalInterpreter v1400287071286 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.var 1) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.var 1) (.var 0)))) (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)))))

private def v1400613113658 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1400613113658 : ¬ MinimalInterpreter v1400613113658 :=
  chain_cut false 6 (by decide)

private def v1400287068986 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))
private theorem no_v1400287068986 : ¬ MinimalInterpreter v1400287068986 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.var 1) (.var 0)))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.var 1) (.var 0)))) (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide))) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)))))

private def v1400287068890 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
private theorem no_v1400287068890 : ¬ MinimalInterpreter v1400287068890 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.var 0)))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 1) (.var 0)))) (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide))) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)))))

private def v1400287071290 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
private theorem no_v1400287071290 : ¬ MinimalInterpreter v1400287071290 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 1) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 1) (.var 0)))) (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)))))

private def v1400646668090 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1400646668090 : ¬ MinimalInterpreter v1400646668090 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1400287069082 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))
private theorem no_v1400287069082 : ¬ MinimalInterpreter v1400287069082 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0)))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0)))) (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide))) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)))))

private def v1400287068906 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
private theorem no_v1400287068906 : ¬ MinimalInterpreter v1400287068906 :=
  so_cut false 1 (show SO (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.var 1) (.var 0)))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.var 1) (.var 0)))) (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide))) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)))))

private def v1400258757430 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))
private theorem no_v1400258757430 : ¬ MinimalInterpreter v1400258757430 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)))))

private def v1400258757334 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
private theorem no_v1400258757334 : ¬ MinimalInterpreter v1400258757334 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)))))

private def v1400258759734 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))
private theorem no_v1400258759734 : ¬ MinimalInterpreter v1400258759734 :=
  w_cut false 0 (by decide)

private def v1400613112794 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1400613112794 : ¬ MinimalInterpreter v1400613112794 :=
  w_cut false 0 (by decide)

private def v1400258757434 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))
private theorem no_v1400258757434 : ¬ MinimalInterpreter v1400258757434 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)))))

private def v1400258757338 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
private theorem no_v1400258757338 : ¬ MinimalInterpreter v1400258757338 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)))))

private def v1400258759738 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
private theorem no_v1400258759738 : ¬ MinimalInterpreter v1400258759738 :=
  w_cut false 0 (by decide)

private def v1400646667226 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1400646667226 : ¬ MinimalInterpreter v1400646667226 :=
  w_cut false 0 (by decide)

private def v1400258757530 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))
private theorem no_v1400258757530 : ¬ MinimalInterpreter v1400258757530 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)))))

private def v1400258757354 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
private theorem no_v1400258757354 : ¬ MinimalInterpreter v1400258757354 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide)))))

theorem five46 : BadRow (bucket false 3 2 4 [0,2,1,0]) := by
  have h : bucket false 3 2 4 [0,2,1,0] = [v1400612376378,v1400645930810,v1400612375514,v1400645929946,v1400612370234,v1400645924666,v1400612369370,v1400645923802,v1400612367834,v1400645922266,v1400612523834,v1400646078266,v1400612522970,v1400646077402,v1400287068982,v1400287068886,v1400287071286,v1400613113658,v1400287068986,v1400287068890,v1400287071290,v1400646668090,v1400287069082,v1400287068906,v1400258757430,v1400258757334,v1400258759734,v1400613112794,v1400258757434,v1400258757338,v1400258759738,v1400646667226,v1400258757530,v1400258757354] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400612376378) (.cons (no_v1400645930810) (.cons (no_v1400612375514) (.cons (no_v1400645929946) (.cons (no_v1400612370234) (.cons (no_v1400645924666) (.cons (no_v1400612369370) (.cons (no_v1400645923802) (.cons (no_v1400612367834) (.cons (no_v1400645922266) (.cons (no_v1400612523834) (.cons (no_v1400646078266) (.cons (no_v1400612522970) (.cons (no_v1400646077402) (.cons (no_v1400287068982) (.cons (no_v1400287068886) (.cons (no_v1400287071286) (.cons (no_v1400613113658) (.cons (no_v1400287068986) (.cons (no_v1400287068890) (.cons (no_v1400287071290) (.cons (no_v1400646668090) (.cons (no_v1400287069082) (.cons (no_v1400287068906) (.cons (no_v1400258757430) (.cons (no_v1400258757334) (.cons (no_v1400258759734) (.cons (no_v1400613112794) (.cons (no_v1400258757434) (.cons (no_v1400258757338) (.cons (no_v1400258759738) (.cons (no_v1400646667226) (.cons (no_v1400258757530) (.cons (no_v1400258757354) .nil))))))))))))))))))))))))))))))))))

private def v1175126593338 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1175126593338 : ¬ MinimalInterpreter v1175126593338 :=
  chain_cut false 2 (by decide)

private def v1174321286970 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1174321286970 : ¬ MinimalInterpreter v1174321286970 :=
  chain_cut false 2 (by decide)

private def v1175160147770 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1175160147770 : ¬ MinimalInterpreter v1175160147770 :=
  chain_cut false 2 (by decide)

private def v1174354841402 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1174354841402 : ¬ MinimalInterpreter v1174354841402 :=
  chain_cut false 3 (by decide)

private def v1175965454138 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1175965454138 : ¬ MinimalInterpreter v1175965454138 :=
  chain_cut true 2 (by decide)

private def v1174489059130 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1174489059130 : ¬ MinimalInterpreter v1174489059130 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126592474 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1175126592474 : ¬ MinimalInterpreter v1175126592474 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174321286106 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1174321286106 : ¬ MinimalInterpreter v1174321286106 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175160146906 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1175160146906 : ¬ MinimalInterpreter v1175160146906 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174354840538 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1174354840538 : ¬ MinimalInterpreter v1174354840538 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175965453274 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1175965453274 : ¬ MinimalInterpreter v1175965453274 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174489058266 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1174489058266 : ¬ MinimalInterpreter v1174489058266 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175126587194 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v1175126587194 : ¬ MinimalInterpreter v1175126587194 :=
  chain_cut false 2 (by decide)

private def v1174321280826 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v1174321280826 : ¬ MinimalInterpreter v1174321280826 :=
  chain_cut false 2 (by decide)

private def v1175160141626 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v1175160141626 : ¬ MinimalInterpreter v1175160141626 :=
  chain_cut false 2 (by decide)

private def v1174354835258 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v1174354835258 : ¬ MinimalInterpreter v1174354835258 :=
  chain_cut false 3 (by decide)

private def v1175965447994 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v1175965447994 : ¬ MinimalInterpreter v1175965447994 :=
  chain_cut true 2 (by decide)

private def v1174489052986 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v1174489052986 : ¬ MinimalInterpreter v1174489052986 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126586330 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v1175126586330 : ¬ MinimalInterpreter v1175126586330 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174321279962 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v1174321279962 : ¬ MinimalInterpreter v1174321279962 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175160140762 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v1175160140762 : ¬ MinimalInterpreter v1175160140762 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174354834394 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v1174354834394 : ¬ MinimalInterpreter v1174354834394 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175965447130 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v1175965447130 : ¬ MinimalInterpreter v1175965447130 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174489052122 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v1174489052122 : ¬ MinimalInterpreter v1174489052122 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175126584794 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v1175126584794 : ¬ MinimalInterpreter v1175126584794 :=
  chain_cut false 2 (by decide)

private def v1174321278426 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v1174321278426 : ¬ MinimalInterpreter v1174321278426 :=
  chain_cut false 2 (by decide)

private def v1175160139226 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v1175160139226 : ¬ MinimalInterpreter v1175160139226 :=
  chain_cut false 2 (by decide)

private def v1174354832858 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v1174354832858 : ¬ MinimalInterpreter v1174354832858 :=
  chain_cut false 3 (by decide)

private def v1175965445594 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v1175965445594 : ¬ MinimalInterpreter v1175965445594 :=
  chain_cut true 2 (by decide)

private def v1174489050586 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v1174489050586 : ¬ MinimalInterpreter v1174489050586 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126740794 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1175126740794 : ¬ MinimalInterpreter v1175126740794 :=
  chain_cut false 2 (by decide)

private def v1174321434426 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1174321434426 : ¬ MinimalInterpreter v1174321434426 :=
  chain_cut false 2 (by decide)

private def v1175160295226 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1175160295226 : ¬ MinimalInterpreter v1175160295226 :=
  chain_cut false 2 (by decide)

private def v1174354988858 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1174354988858 : ¬ MinimalInterpreter v1174354988858 :=
  chain_cut false 4 (by decide)

private def v1175965601594 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1175965601594 : ¬ MinimalInterpreter v1175965601594 :=
  chain_cut true 2 (by decide)

private def v1174489206586 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1174489206586 : ¬ MinimalInterpreter v1174489206586 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126739930 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1175126739930 : ¬ MinimalInterpreter v1175126739930 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1174321433562 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1174321433562 : ¬ MinimalInterpreter v1174321433562 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1175160294362 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1175160294362 : ¬ MinimalInterpreter v1175160294362 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1174354987994 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1174354987994 : ¬ MinimalInterpreter v1174354987994 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1175965600730 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1175965600730 : ¬ MinimalInterpreter v1175965600730 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1174489205722 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1174489205722 : ¬ MinimalInterpreter v1174489205722 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1174705488694 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))
private theorem no_v1174705488694 : ¬ MinimalInterpreter v1174705488694 :=
  chain_cut false 7 (by decide)

private def v1175127330618 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1175127330618 : ¬ MinimalInterpreter v1175127330618 :=
  chain_cut false 3 (by decide)

private def v1174705488598 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
private theorem no_v1174705488598 : ¬ MinimalInterpreter v1174705488598 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1174322024250 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1174322024250 : ¬ MinimalInterpreter v1174322024250 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1174705488698 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))
private theorem no_v1174705488698 : ¬ MinimalInterpreter v1174705488698 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175160885050 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1175160885050 : ¬ MinimalInterpreter v1175160885050 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174705488602 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
private theorem no_v1174705488602 : ¬ MinimalInterpreter v1174705488602 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174355578682 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1174355578682 : ¬ MinimalInterpreter v1174355578682 :=
  chain_cut false 2 (by decide)

private def v1174705488794 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))
private theorem no_v1174705488794 : ¬ MinimalInterpreter v1174705488794 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175966191418 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1175966191418 : ¬ MinimalInterpreter v1175966191418 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174705488618 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
private theorem no_v1174705488618 : ¬ MinimalInterpreter v1174705488618 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174489796410 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1174489796410 : ¬ MinimalInterpreter v1174489796410 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1174698410806 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))
private theorem no_v1174698410806 : ¬ MinimalInterpreter v1174698410806 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide))))

private def v1175127329754 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1175127329754 : ¬ MinimalInterpreter v1175127329754 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1174698410710 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))
private theorem no_v1174698410710 : ¬ MinimalInterpreter v1174698410710 :=
  w_cut false 0 (by decide)

private def v1174322023386 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1174322023386 : ¬ MinimalInterpreter v1174322023386 :=
  w_cut false 0 (by decide)

private def v1174698410810 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))
private theorem no_v1174698410810 : ¬ MinimalInterpreter v1174698410810 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide))))

private def v1175160884186 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1175160884186 : ¬ MinimalInterpreter v1175160884186 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1174698410714 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
private theorem no_v1174698410714 : ¬ MinimalInterpreter v1174698410714 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide))))

private def v1174355577818 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1174355577818 : ¬ MinimalInterpreter v1174355577818 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1174698410906 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))
private theorem no_v1174698410906 : ¬ MinimalInterpreter v1174698410906 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide))))

private def v1175966190554 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1175966190554 : ¬ MinimalInterpreter v1175966190554 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1174698410730 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))
private theorem no_v1174698410730 : ¬ MinimalInterpreter v1174698410730 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide))))

private def v1174489795546 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1174489795546 : ¬ MinimalInterpreter v1174489795546 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem five47 : BadRow (bucket true 3 2 4 [0,2,1,0]) := by
  have h : bucket true 3 2 4 [0,2,1,0] = [v1175126593338,v1174321286970,v1175160147770,v1174354841402,v1175965454138,v1174489059130,v1175126592474,v1174321286106,v1175160146906,v1174354840538,v1175965453274,v1174489058266,v1175126587194,v1174321280826,v1175160141626,v1174354835258,v1175965447994,v1174489052986,v1175126586330,v1174321279962,v1175160140762,v1174354834394,v1175965447130,v1174489052122,v1175126584794,v1174321278426,v1175160139226,v1174354832858,v1175965445594,v1174489050586,v1175126740794,v1174321434426,v1175160295226,v1174354988858,v1175965601594,v1174489206586,v1175126739930,v1174321433562,v1175160294362,v1174354987994,v1175965600730,v1174489205722,v1174705488694,v1175127330618,v1174705488598,v1174322024250,v1174705488698,v1175160885050,v1174705488602,v1174355578682,v1174705488794,v1175966191418,v1174705488618,v1174489796410,v1174698410806,v1175127329754,v1174698410710,v1174322023386,v1174698410810,v1175160884186,v1174698410714,v1174355577818,v1174698410906,v1175966190554,v1174698410730,v1174489795546] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175126593338) (.cons (no_v1174321286970) (.cons (no_v1175160147770) (.cons (no_v1174354841402) (.cons (no_v1175965454138) (.cons (no_v1174489059130) (.cons (no_v1175126592474) (.cons (no_v1174321286106) (.cons (no_v1175160146906) (.cons (no_v1174354840538) (.cons (no_v1175965453274) (.cons (no_v1174489058266) (.cons (no_v1175126587194) (.cons (no_v1174321280826) (.cons (no_v1175160141626) (.cons (no_v1174354835258) (.cons (no_v1175965447994) (.cons (no_v1174489052986) (.cons (no_v1175126586330) (.cons (no_v1174321279962) (.cons (no_v1175160140762) (.cons (no_v1174354834394) (.cons (no_v1175965447130) (.cons (no_v1174489052122) (.cons (no_v1175126584794) (.cons (no_v1174321278426) (.cons (no_v1175160139226) (.cons (no_v1174354832858) (.cons (no_v1175965445594) (.cons (no_v1174489050586) (.cons (no_v1175126740794) (.cons (no_v1174321434426) (.cons (no_v1175160295226) (.cons (no_v1174354988858) (.cons (no_v1175965601594) (.cons (no_v1174489206586) (.cons (no_v1175126739930) (.cons (no_v1174321433562) (.cons (no_v1175160294362) (.cons (no_v1174354987994) (.cons (no_v1175965600730) (.cons (no_v1174489205722) (.cons (no_v1174705488694) (.cons (no_v1175127330618) (.cons (no_v1174705488598) (.cons (no_v1174322024250) (.cons (no_v1174705488698) (.cons (no_v1175160885050) (.cons (no_v1174705488602) (.cons (no_v1174355578682) (.cons (no_v1174705488794) (.cons (no_v1175966191418) (.cons (no_v1174705488618) (.cons (no_v1174489796410) (.cons (no_v1174698410806) (.cons (no_v1175127329754) (.cons (no_v1174698410710) (.cons (no_v1174322023386) (.cons (no_v1174698410810) (.cons (no_v1175160884186) (.cons (no_v1174698410714) (.cons (no_v1174355577818) (.cons (no_v1174698410906) (.cons (no_v1175966190554) (.cons (no_v1174698410730) (.cons (no_v1174489795546) .nil))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

end Blc.SelfintSingleObject.Rows40
