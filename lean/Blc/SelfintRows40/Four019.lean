import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402308719414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402308719414 : ¬ MinimalInterpreter v1402308719414 :=
  cost_cut false 2 (by decide)

private def v1402308719318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))))
private theorem no_v1402308719318 : ¬ MinimalInterpreter v1402308719318 :=
  cost_cut false 2 (by decide)

private def v1402308705590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402308705590 : ¬ MinimalInterpreter v1402308705590 :=
  cost_cut false 2 (by decide)

private def v1402308705494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))))
private theorem no_v1402308705494 : ¬ MinimalInterpreter v1402308705494 :=
  cost_cut false 2 (by decide)

private def v1402308702038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))))
private theorem no_v1402308702038 : ¬ MinimalInterpreter v1402308702038 :=
  cost_cut false 2 (by decide)

private def v1402308358966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402308358966 : ¬ MinimalInterpreter v1402308358966 :=
  cost_cut false 2 (by decide)

private def v1402308358870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v1402308358870 : ¬ MinimalInterpreter v1402308358870 :=
  cost_cut false 2 (by decide)

private def v1402308345142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.app (.var 0) (.var 1))))))))
private theorem no_v1402308345142 : ¬ MinimalInterpreter v1402308345142 :=
  cost_cut false 2 (by decide)

private def v1402308255030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v1402308255030 : ¬ MinimalInterpreter v1402308255030 :=
  cost_cut false 2 (by decide)

private def v1402308345046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))) (.var 1)))))))
private theorem no_v1402308345046 : ¬ MinimalInterpreter v1402308345046 :=
  cost_cut false 2 (by decide)

private def v1402308341590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))) (.var 1)))))))
private theorem no_v1402308341590 : ¬ MinimalInterpreter v1402308341590 :=
  cost_cut false 2 (by decide)

private def v1402308254934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v1402308254934 : ¬ MinimalInterpreter v1402308254934 :=
  cost_cut false 2 (by decide)

private def v1402308251478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)) (.var 1)))))))
private theorem no_v1402308251478 : ¬ MinimalInterpreter v1402308251478 :=
  cost_cut false 2 (by decide)

private def v1402308228950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v1402308228950 : ¬ MinimalInterpreter v1402308228950 :=
  cost_cut false 2 (by decide)

private def v1402314224438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402314224438 : ¬ MinimalInterpreter v1402314224438 :=
  cost_cut false 2 (by decide)

private def v1402314224342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))))
private theorem no_v1402314224342 : ¬ MinimalInterpreter v1402314224342 :=
  cost_cut false 2 (by decide)

private def v1402314210614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402314210614 : ¬ MinimalInterpreter v1402314210614 :=
  cost_cut false 2 (by decide)

private def v1402314210518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))))
private theorem no_v1402314210518 : ¬ MinimalInterpreter v1402314210518 :=
  cost_cut false 2 (by decide)

private def v1402314207062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))))
private theorem no_v1402314207062 : ¬ MinimalInterpreter v1402314207062 :=
  cost_cut false 2 (by decide)

private def v1402314411206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))
private theorem no_v1402314411206 : ¬ MinimalInterpreter v1402314411206 :=
  chain_cut false 2 (by decide)

private def v1402314410822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))))
private theorem no_v1402314410822 : ¬ MinimalInterpreter v1402314410822 :=
  chain_cut false 2 (by decide)

private def v1402314355910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v1402314355910 : ¬ MinimalInterpreter v1402314355910 :=
  chain_cut false 2 (by decide)

private def v1402314355526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.var 1))))))))
private theorem no_v1402314355526 : ¬ MinimalInterpreter v1402314355526 :=
  chain_cut false 2 (by decide)

private def v1402314341702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.lam (.var 1))))))))
private theorem no_v1402314341702 : ¬ MinimalInterpreter v1402314341702 :=
  chain_cut false 2 (by decide)

private def v1402312969414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v1402312969414 : ¬ MinimalInterpreter v1402312969414 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 1))))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312969030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))))))
private theorem no_v1402312969030 : ¬ MinimalInterpreter v1402312969030 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 1)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312914118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.app (.var 0) (.lam (.var 1))))))))
private theorem no_v1402312914118 : ¬ MinimalInterpreter v1402312914118 :=
  chain_cut false 2 (by decide)

private def v1402312553670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.lam (.var 1))))))))
private theorem no_v1402312553670 : ¬ MinimalInterpreter v1402312553670 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.lam (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312913734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))) (.lam (.var 1)))))))
private theorem no_v1402312913734 : ¬ MinimalInterpreter v1402312913734 :=
  chain_cut false 2 (by decide)

private def v1402312899910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))) (.lam (.var 1)))))))
private theorem no_v1402312899910 : ¬ MinimalInterpreter v1402312899910 :=
  chain_cut false 2 (by decide)

private def v1402312553286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.lam (.var 1)))))))
private theorem no_v1402312553286 : ¬ MinimalInterpreter v1402312553286 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312539462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)) (.lam (.var 1)))))))
private theorem no_v1402312539462 : ¬ MinimalInterpreter v1402312539462 :=
  chain_cut false 2 (by decide)

private def v1402312449350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.lam (.var 1)))))))
private theorem no_v1402312449350 : ¬ MinimalInterpreter v1402312449350 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 1)))) (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four133 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,2,0,0,1]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,2,0,0,1] = [v1402308719414,v1402308719318,v1402308705590,v1402308705494,v1402308702038,v1402308358966,v1402308358870,v1402308345142,v1402308255030,v1402308345046,v1402308341590,v1402308254934,v1402308251478,v1402308228950,v1402314224438,v1402314224342,v1402314210614,v1402314210518,v1402314207062,v1402314411206,v1402314410822,v1402314355910,v1402314355526,v1402314341702,v1402312969414,v1402312969030,v1402312914118,v1402312553670,v1402312913734,v1402312899910,v1402312553286,v1402312539462,v1402312449350] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308719414) (.cons (no_v1402308719318) (.cons (no_v1402308705590) (.cons (no_v1402308705494) (.cons (no_v1402308702038) (.cons (no_v1402308358966) (.cons (no_v1402308358870) (.cons (no_v1402308345142) (.cons (no_v1402308255030) (.cons (no_v1402308345046) (.cons (no_v1402308341590) (.cons (no_v1402308254934) (.cons (no_v1402308251478) (.cons (no_v1402308228950) (.cons (no_v1402314224438) (.cons (no_v1402314224342) (.cons (no_v1402314210614) (.cons (no_v1402314210518) (.cons (no_v1402314207062) (.cons (no_v1402314411206) (.cons (no_v1402314410822) (.cons (no_v1402314355910) (.cons (no_v1402314355526) (.cons (no_v1402314341702) (.cons (no_v1402312969414) (.cons (no_v1402312969030) (.cons (no_v1402312914118) (.cons (no_v1402312553670) (.cons (no_v1402312913734) (.cons (no_v1402312899910) (.cons (no_v1402312553286) (.cons (no_v1402312539462) (.cons (no_v1402312449350) .nil)))))))))))))))))))))))))))))))))

private def v1402308719418 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402308719418 : ¬ MinimalInterpreter v1402308719418 :=
  cost_cut false 2 (by decide)

private def v1402308719322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))))
private theorem no_v1402308719322 : ¬ MinimalInterpreter v1402308719322 :=
  cost_cut false 2 (by decide)

private def v1402308705594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402308705594 : ¬ MinimalInterpreter v1402308705594 :=
  cost_cut false 2 (by decide)

private def v1402308705498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))))
private theorem no_v1402308705498 : ¬ MinimalInterpreter v1402308705498 :=
  cost_cut false 2 (by decide)

private def v1402308702042 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))))
private theorem no_v1402308702042 : ¬ MinimalInterpreter v1402308702042 :=
  cost_cut false 2 (by decide)

private def v1402308358970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402308358970 : ¬ MinimalInterpreter v1402308358970 :=
  cost_cut false 2 (by decide)

private def v1402308358874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v1402308358874 : ¬ MinimalInterpreter v1402308358874 :=
  cost_cut false 2 (by decide)

private def v1402308345146 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.app (.var 1) (.var 0))))))))
private theorem no_v1402308345146 : ¬ MinimalInterpreter v1402308345146 :=
  cost_cut false 2 (by decide)

private def v1402308255034 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v1402308255034 : ¬ MinimalInterpreter v1402308255034 :=
  cost_cut false 2 (by decide)

private def v1402308345050 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1)))) (.var 0)))))))
private theorem no_v1402308345050 : ¬ MinimalInterpreter v1402308345050 :=
  cost_cut false 2 (by decide)

private def v1402308341594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1))) (.var 0)))))))
private theorem no_v1402308341594 : ¬ MinimalInterpreter v1402308341594 :=
  cost_cut false 2 (by decide)

private def v1402308254938 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v1402308254938 : ¬ MinimalInterpreter v1402308254938 :=
  cost_cut false 2 (by decide)

private def v1402308251482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1)) (.var 0)))))))
private theorem no_v1402308251482 : ¬ MinimalInterpreter v1402308251482 :=
  cost_cut false 2 (by decide)

private def v1402308228954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v1402308228954 : ¬ MinimalInterpreter v1402308228954 :=
  cost_cut false 2 (by decide)

private def v1402314224442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402314224442 : ¬ MinimalInterpreter v1402314224442 :=
  cost_cut false 2 (by decide)

private def v1402314224346 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))))
private theorem no_v1402314224346 : ¬ MinimalInterpreter v1402314224346 :=
  cost_cut false 2 (by decide)

private def v1402314210618 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402314210618 : ¬ MinimalInterpreter v1402314210618 :=
  cost_cut false 2 (by decide)

private def v1402314210522 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))))
private theorem no_v1402314210522 : ¬ MinimalInterpreter v1402314210522 :=
  cost_cut false 2 (by decide)

private def v1402314207066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))))
private theorem no_v1402314207066 : ¬ MinimalInterpreter v1402314207066 :=
  cost_cut false 2 (by decide)

private def v1402312867034 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))) (.var 0))))))
private theorem no_v1402312867034 : ¬ MinimalInterpreter v1402312867034 :=
  cost_cut false 2 (by decide)

private def v1402312863578 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))) (.var 0))))))
private theorem no_v1402312863578 : ¬ MinimalInterpreter v1402312863578 :=
  cost_cut false 2 (by decide)

private def v1402314410778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))))
private theorem no_v1402314410778 : ¬ MinimalInterpreter v1402314410778 :=
  chain_cut false 2 (by decide)

private def v1402314355482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 0) (.lam (.var 1)))) (.var 0)))))))
private theorem no_v1402314355482 : ¬ MinimalInterpreter v1402314355482 :=
  chain_cut false 2 (by decide)

private def v1402314341658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 1))) (.var 0)))))))
private theorem no_v1402314341658 : ¬ MinimalInterpreter v1402314341658 :=
  chain_cut false 2 (by decide)

private def v1402312968986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))))))
private theorem no_v1402312968986 : ¬ MinimalInterpreter v1402312968986 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312913690 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 1))))) (.var 0))))))
private theorem no_v1402312913690 : ¬ MinimalInterpreter v1402312913690 :=
  chain_cut false 2 (by decide)

private def v1402312899866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 1)))) (.var 0))))))
private theorem no_v1402312899866 : ¬ MinimalInterpreter v1402312899866 :=
  chain_cut false 2 (by decide)

private def v1402312553242 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1)))) (.var 0))))))
private theorem no_v1402312553242 : ¬ MinimalInterpreter v1402312553242 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1)))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312539418 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 1))) (.var 0))))))
private theorem no_v1402312539418 : ¬ MinimalInterpreter v1402312539418 :=
  chain_cut false 2 (by decide)

private def v1402312449306 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1))) (.var 0))))))
private theorem no_v1402312449306 : ¬ MinimalInterpreter v1402312449306 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.var 0))) (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (so_dead (by decide) (.var 1))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four134 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,2,0,1,0]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,2,0,1,0] = [v1402308719418,v1402308719322,v1402308705594,v1402308705498,v1402308702042,v1402308358970,v1402308358874,v1402308345146,v1402308255034,v1402308345050,v1402308341594,v1402308254938,v1402308251482,v1402308228954,v1402314224442,v1402314224346,v1402314210618,v1402314210522,v1402314207066,v1402312867034,v1402312863578,v1402314410778,v1402314355482,v1402314341658,v1402312968986,v1402312913690,v1402312899866,v1402312553242,v1402312539418,v1402312449306] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308719418) (.cons (no_v1402308719322) (.cons (no_v1402308705594) (.cons (no_v1402308705498) (.cons (no_v1402308702042) (.cons (no_v1402308358970) (.cons (no_v1402308358874) (.cons (no_v1402308345146) (.cons (no_v1402308255034) (.cons (no_v1402308345050) (.cons (no_v1402308341594) (.cons (no_v1402308254938) (.cons (no_v1402308251482) (.cons (no_v1402308228954) (.cons (no_v1402314224442) (.cons (no_v1402314224346) (.cons (no_v1402314210618) (.cons (no_v1402314210522) (.cons (no_v1402314207066) (.cons (no_v1402312867034) (.cons (no_v1402312863578) (.cons (no_v1402314410778) (.cons (no_v1402314355482) (.cons (no_v1402314341658) (.cons (no_v1402312968986) (.cons (no_v1402312913690) (.cons (no_v1402312899866) (.cons (no_v1402312553242) (.cons (no_v1402312539418) (.cons (no_v1402312449306) .nil))))))))))))))))))))))))))))))

private def v1402308719514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))))
private theorem no_v1402308719514 : ¬ MinimalInterpreter v1402308719514 :=
  cost_cut false 2 (by decide)

private def v1402308719338 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))))
private theorem no_v1402308719338 : ¬ MinimalInterpreter v1402308719338 :=
  cost_cut false 2 (by decide)

private def v1402308705690 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402308705690 : ¬ MinimalInterpreter v1402308705690 :=
  cost_cut false 2 (by decide)

private def v1402308705514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))))
private theorem no_v1402308705514 : ¬ MinimalInterpreter v1402308705514 :=
  cost_cut false 2 (by decide)

private def v1402308702058 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))))
private theorem no_v1402308702058 : ¬ MinimalInterpreter v1402308702058 :=
  cost_cut false 2 (by decide)

private def v1402308359066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402308359066 : ¬ MinimalInterpreter v1402308359066 :=
  cost_cut false 2 (by decide)

private def v1402308358890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v1402308358890 : ¬ MinimalInterpreter v1402308358890 :=
  cost_cut false 2 (by decide)

private def v1402308345242 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0))))))))
private theorem no_v1402308345242 : ¬ MinimalInterpreter v1402308345242 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308255130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v1402308255130 : ¬ MinimalInterpreter v1402308255130 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308345066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0)))) (.var 0)))))))
private theorem no_v1402308345066 : ¬ MinimalInterpreter v1402308345066 :=
  cost_cut false 2 (by decide)

private def v1402308341610 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 0)))))))
private theorem no_v1402308341610 : ¬ MinimalInterpreter v1402308341610 :=
  cost_cut false 2 (by decide)

private def v1402308254954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v1402308254954 : ¬ MinimalInterpreter v1402308254954 :=
  cost_cut false 2 (by decide)

private def v1402308251498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.var 0)))))))
private theorem no_v1402308251498 : ¬ MinimalInterpreter v1402308251498 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308228970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v1402308228970 : ¬ MinimalInterpreter v1402308228970 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402314224538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))))
private theorem no_v1402314224538 : ¬ MinimalInterpreter v1402314224538 :=
  cost_cut false 2 (by decide)

private def v1402314224362 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))))
private theorem no_v1402314224362 : ¬ MinimalInterpreter v1402314224362 :=
  cost_cut false 2 (by decide)

private def v1402314210714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402314210714 : ¬ MinimalInterpreter v1402314210714 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402314210538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))))
private theorem no_v1402314210538 : ¬ MinimalInterpreter v1402314210538 :=
  cost_cut false 2 (by decide)

private def v1402314207082 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))))
private theorem no_v1402314207082 : ¬ MinimalInterpreter v1402314207082 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402312867050 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))) (.var 0))))))
private theorem no_v1402312867050 : ¬ MinimalInterpreter v1402312867050 :=
  cost_cut false 2 (by decide)

private def v1402312863594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.var 0))))))
private theorem no_v1402312863594 : ¬ MinimalInterpreter v1402312863594 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.var 0))) (.app (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0)) (.var 0) (by decide) (by decide))))))

private def v1402314355098 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 0) (.var 0))))))))
private theorem no_v1402314355098 : ¬ MinimalInterpreter v1402314355098 :=
  chain_cut false 2 (by decide)

private def v1402314341482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 0)) (.var 0)))))))
private theorem no_v1402314341482 : ¬ MinimalInterpreter v1402314341482 :=
  chain_cut false 2 (by decide)

private def v1402312913306 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 1)))) (.app (.var 0) (.var 0)))))))
private theorem no_v1402312913306 : ¬ MinimalInterpreter v1402312913306 :=
  chain_cut false 2 (by decide)

private def v1402312552858 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.app (.var 0) (.var 0)))))))
private theorem no_v1402312552858 : ¬ MinimalInterpreter v1402312552858 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312899690 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.lam (.var 1))) (.var 0))) (.var 0))))))
private theorem no_v1402312899690 : ¬ MinimalInterpreter v1402312899690 :=
  chain_cut false 2 (by decide)

private def v1402312539242 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.lam (.var 1)))) (.var 0)) (.var 0))))))
private theorem no_v1402312539242 : ¬ MinimalInterpreter v1402312539242 :=
  chain_cut false 2 (by decide)

private def v1402312449130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0)) (.var 0))))))
private theorem no_v1402312449130 : ¬ MinimalInterpreter v1402312449130 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.var 0))) (.app (.app (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1))) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four135 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,2,1,0,0]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,2,1,0,0] = [v1402308719514,v1402308719338,v1402308705690,v1402308705514,v1402308702058,v1402308359066,v1402308358890,v1402308345242,v1402308255130,v1402308345066,v1402308341610,v1402308254954,v1402308251498,v1402308228970,v1402314224538,v1402314224362,v1402314210714,v1402314210538,v1402314207082,v1402312867050,v1402312863594,v1402314355098,v1402314341482,v1402312913306,v1402312552858,v1402312899690,v1402312539242,v1402312449130] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308719514) (.cons (no_v1402308719338) (.cons (no_v1402308705690) (.cons (no_v1402308705514) (.cons (no_v1402308702058) (.cons (no_v1402308359066) (.cons (no_v1402308358890) (.cons (no_v1402308345242) (.cons (no_v1402308255130) (.cons (no_v1402308345066) (.cons (no_v1402308341610) (.cons (no_v1402308254954) (.cons (no_v1402308251498) (.cons (no_v1402308228970) (.cons (no_v1402314224538) (.cons (no_v1402314224362) (.cons (no_v1402314210714) (.cons (no_v1402314210538) (.cons (no_v1402314207082) (.cons (no_v1402312867050) (.cons (no_v1402312863594) (.cons (no_v1402314355098) (.cons (no_v1402314341482) (.cons (no_v1402312913306) (.cons (no_v1402312552858) (.cons (no_v1402312899690) (.cons (no_v1402312539242) (.cons (no_v1402312449130) .nil))))))))))))))))))))))))))))

private def v1402308721050 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.app (.var 0) (.app (.var 0) (.var 0))))))))))
private theorem no_v1402308721050 : ¬ MinimalInterpreter v1402308721050 :=
  chain_cut false 2 (by decide)

private def v1402308721002 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.app (.app (.var 0) (.var 0)) (.var 0)))))))))
private theorem no_v1402308721002 : ¬ MinimalInterpreter v1402308721002 :=
  chain_cut false 2 (by decide)

private def v1402308705946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 0)) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402308705946 : ¬ MinimalInterpreter v1402308705946 :=
  chain_cut false 2 (by decide)

private def v1402308705898 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.var 0))))))))
private theorem no_v1402308705898 : ¬ MinimalInterpreter v1402308705898 :=
  chain_cut false 2 (by decide)

private def v1402308702122 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 3) (.var 0)) (.var 0)) (.var 0))))))))
private theorem no_v1402308702122 : ¬ MinimalInterpreter v1402308702122 :=
  chain_cut false 2 (by decide)

private def v1402308360602 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402308360602 : ¬ MinimalInterpreter v1402308360602 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308360554 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))))))))
private theorem no_v1402308360554 : ¬ MinimalInterpreter v1402308360554 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308345498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 0))) (.app (.var 0) (.var 0))))))))
private theorem no_v1402308345498 : ¬ MinimalInterpreter v1402308345498 :=
  chain_cut false 2 (by decide)

private def v1402308255386 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))))))))
private theorem no_v1402308255386 : ¬ MinimalInterpreter v1402308255386 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308345450 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.app (.var 0) (.var 0)))) (.var 0)))))))
private theorem no_v1402308345450 : ¬ MinimalInterpreter v1402308345450 :=
  chain_cut false 2 (by decide)

private def v1402308341674 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 3) (.var 0)) (.var 0))) (.var 0)))))))
private theorem no_v1402308341674 : ¬ MinimalInterpreter v1402308341674 :=
  chain_cut false 2 (by decide)

private def v1402308255338 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)))))))
private theorem no_v1402308255338 : ¬ MinimalInterpreter v1402308255338 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308251562 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 3) (.var 0))) (.var 0)) (.var 0)))))))
private theorem no_v1402308251562 : ¬ MinimalInterpreter v1402308251562 :=
  chain_cut false 2 (by decide)

private def v1402308229034 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.var 0)))))))
private theorem no_v1402308229034 : ¬ MinimalInterpreter v1402308229034 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (.app (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402312882586 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.app (.var 0) (.var 0))))))))
private theorem no_v1402312882586 : ¬ MinimalInterpreter v1402312882586 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402312882538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.app (.var 0) (.var 0)) (.var 0)))))))
private theorem no_v1402312882538 : ¬ MinimalInterpreter v1402312882538 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.app (.var 0) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402312531610 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.app (.var 0) (.var 0)))))))
private theorem no_v1402312531610 : ¬ MinimalInterpreter v1402312531610 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.var 0) (.var 0))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402312531562 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 0))) (.var 0))))))
private theorem no_v1402312531562 : ¬ MinimalInterpreter v1402312531562 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 0))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402312443818 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 0)) (.var 0))))))
private theorem no_v1402312443818 : ¬ MinimalInterpreter v1402312443818 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (.app (.app (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.var 0)) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

theorem four136 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,3,0,0,0]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,3,0,0,0] = [v1402308721050,v1402308721002,v1402308705946,v1402308705898,v1402308702122,v1402308360602,v1402308360554,v1402308345498,v1402308255386,v1402308345450,v1402308341674,v1402308255338,v1402308251562,v1402308229034,v1402312882586,v1402312882538,v1402312531610,v1402312531562,v1402312443818] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308721050) (.cons (no_v1402308721002) (.cons (no_v1402308705946) (.cons (no_v1402308705898) (.cons (no_v1402308702122) (.cons (no_v1402308360602) (.cons (no_v1402308360554) (.cons (no_v1402308345498) (.cons (no_v1402308255386) (.cons (no_v1402308345450) (.cons (no_v1402308341674) (.cons (no_v1402308255338) (.cons (no_v1402308251562) (.cons (no_v1402308229034) (.cons (no_v1402312882586) (.cons (no_v1402312882538) (.cons (no_v1402312531610) (.cons (no_v1402312531562) (.cons (no_v1402312443818) .nil)))))))))))))))))))

private def v1402314791310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 2))))))))))
private theorem no_v1402314791310 : ¬ MinimalInterpreter v1402314791310 :=
  chain_cut false 2 (by decide)

private def v1402314790542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))))))
private theorem no_v1402314790542 : ¬ MinimalInterpreter v1402314790542 :=
  chain_cut false 2 (by decide)

private def v1402314779022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v1402314779022 : ¬ MinimalInterpreter v1402314779022 :=
  chain_cut false 2 (by decide)

private def v1402314778254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))))))
private theorem no_v1402314778254 : ¬ MinimalInterpreter v1402314778254 :=
  chain_cut false 2 (by decide)

private def v1402314775182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 2))))))))
private theorem no_v1402314775182 : ¬ MinimalInterpreter v1402314775182 :=
  chain_cut false 2 (by decide)

private def v1402313021838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v1402313021838 : ¬ MinimalInterpreter v1402313021838 :=
  chain_cut false 2 (by decide)

private def v1402313021070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))))
private theorem no_v1402313021070 : ¬ MinimalInterpreter v1402313021070 :=
  chain_cut false 2 (by decide)

private def v1402313009550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 2))))))))
private theorem no_v1402313009550 : ¬ MinimalInterpreter v1402313009550 :=
  chain_cut false 2 (by decide)

private def v1402312567182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 2))))))))
private theorem no_v1402312567182 : ¬ MinimalInterpreter v1402312567182 :=
  chain_cut false 2 (by decide)

private def v1402313008782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 2)))))))
private theorem no_v1402313008782 : ¬ MinimalInterpreter v1402313008782 :=
  chain_cut false 2 (by decide)

private def v1402313005710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 2)))))))
private theorem no_v1402313005710 : ¬ MinimalInterpreter v1402313005710 :=
  chain_cut false 2 (by decide)

private def v1402312566414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 2)))))))
private theorem no_v1402312566414 : ¬ MinimalInterpreter v1402312566414 :=
  chain_cut false 2 (by decide)

private def v1402312563342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 2)))))))
private theorem no_v1402312563342 : ¬ MinimalInterpreter v1402312563342 :=
  chain_cut false 2 (by decide)

private def v1402312452750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 2)))))))
private theorem no_v1402312452750 : ¬ MinimalInterpreter v1402312452750 :=
  chain_cut false 2 (by decide)

theorem four137 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [2,0,0,0,2]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [2,0,0,0,2] = [v1402314791310,v1402314790542,v1402314779022,v1402314778254,v1402314775182,v1402313021838,v1402313021070,v1402313009550,v1402312567182,v1402313008782,v1402313005710,v1402312566414,v1402312563342,v1402312452750] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314791310) (.cons (no_v1402314790542) (.cons (no_v1402314779022) (.cons (no_v1402314778254) (.cons (no_v1402314775182) (.cons (no_v1402313021838) (.cons (no_v1402313021070) (.cons (no_v1402313009550) (.cons (no_v1402312567182) (.cons (no_v1402313008782) (.cons (no_v1402313005710) (.cons (no_v1402312566414) (.cons (no_v1402312563342) (.cons (no_v1402312452750) .nil))))))))))))))

private def v1402308814454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1))))))))))
private theorem no_v1402308814454 : ¬ MinimalInterpreter v1402308814454 :=
  cost_cut false 2 (by decide)

private def v1402308814262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 1)))))))))
private theorem no_v1402308814262 : ¬ MinimalInterpreter v1402308814262 :=
  cost_cut false 2 (by decide)

private def v1402308811382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))))))))
private theorem no_v1402308811382 : ¬ MinimalInterpreter v1402308811382 :=
  cost_cut false 2 (by decide)

private def v1402308811190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))))))))
private theorem no_v1402308811190 : ¬ MinimalInterpreter v1402308811190 :=
  cost_cut false 2 (by decide)

private def v1402308810422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))))))))
private theorem no_v1402308810422 : ¬ MinimalInterpreter v1402308810422 :=
  cost_cut false 2 (by decide)

private def v1402308372086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 1)))))))))
private theorem no_v1402308372086 : ¬ MinimalInterpreter v1402308372086 :=
  cost_cut false 2 (by decide)

private def v1402308371894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 1))))))))
private theorem no_v1402308371894 : ¬ MinimalInterpreter v1402308371894 :=
  cost_cut false 2 (by decide)

private def v1402308369014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 1))))))))
private theorem no_v1402308369014 : ¬ MinimalInterpreter v1402308369014 :=
  cost_cut false 2 (by decide)

private def v1402308258422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.app (.var 1) (.var 1))))))))
private theorem no_v1402308258422 : ¬ MinimalInterpreter v1402308258422 :=
  cost_cut false 2 (by decide)

private def v1402308368822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 1)))))))
private theorem no_v1402308368822 : ¬ MinimalInterpreter v1402308368822 :=
  cost_cut false 2 (by decide)

private def v1402308368054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 1)))))))
private theorem no_v1402308368054 : ¬ MinimalInterpreter v1402308368054 :=
  cost_cut false 2 (by decide)

private def v1402308258230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))) (.var 1)))))))
private theorem no_v1402308258230 : ¬ MinimalInterpreter v1402308258230 :=
  cost_cut false 2 (by decide)

private def v1402308257462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)) (.var 1)))))))
private theorem no_v1402308257462 : ¬ MinimalInterpreter v1402308257462 :=
  cost_cut false 2 (by decide)

private def v1402308229814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)) (.var 1)))))))
private theorem no_v1402308229814 : ¬ MinimalInterpreter v1402308229814 :=
  cost_cut false 2 (by decide)

private def v1402314791366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 1))))))))))
private theorem no_v1402314791366 : ¬ MinimalInterpreter v1402314791366 :=
  chain_cut false 2 (by decide)

private def v1402314790598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))))))))
private theorem no_v1402314790598 : ¬ MinimalInterpreter v1402314790598 :=
  chain_cut false 2 (by decide)

private def v1402314790454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 1))))))))
private theorem no_v1402314790454 : ¬ MinimalInterpreter v1402314790454 :=
  chain_cut false 2 (by decide)

private def v1402314779078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v1402314779078 : ¬ MinimalInterpreter v1402314779078 :=
  chain_cut false 2 (by decide)

private def v1402314778310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 1))))))))
private theorem no_v1402314778310 : ¬ MinimalInterpreter v1402314778310 :=
  chain_cut false 2 (by decide)

private def v1402314775238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 1))))))))
private theorem no_v1402314775238 : ¬ MinimalInterpreter v1402314775238 :=
  chain_cut false 2 (by decide)

private def v1402314778166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 1)))))))
private theorem no_v1402314778166 : ¬ MinimalInterpreter v1402314778166 :=
  chain_cut false 2 (by decide)

private def v1402314775094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 1)))))))
private theorem no_v1402314775094 : ¬ MinimalInterpreter v1402314775094 :=
  chain_cut false 2 (by decide)

private def v1402313021894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v1402313021894 : ¬ MinimalInterpreter v1402313021894 :=
  chain_cut false 2 (by decide)

private def v1402313021126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))))
private theorem no_v1402313021126 : ¬ MinimalInterpreter v1402313021126 :=
  chain_cut false 2 (by decide)

private def v1402313020982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))))))
private theorem no_v1402313020982 : ¬ MinimalInterpreter v1402313020982 :=
  chain_cut false 2 (by decide)

private def v1402313009606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.var 1))))))))
private theorem no_v1402313009606 : ¬ MinimalInterpreter v1402313009606 :=
  chain_cut false 2 (by decide)

private def v1402312567238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.var 1))))))))
private theorem no_v1402312567238 : ¬ MinimalInterpreter v1402312567238 :=
  chain_cut false 2 (by decide)

private def v1402313008838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.var 1)))))))
private theorem no_v1402313008838 : ¬ MinimalInterpreter v1402313008838 :=
  chain_cut false 2 (by decide)

private def v1402313005766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 1)))))))
private theorem no_v1402313005766 : ¬ MinimalInterpreter v1402313005766 :=
  chain_cut false 2 (by decide)

private def v1402312566470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.var 1)))))))
private theorem no_v1402312566470 : ¬ MinimalInterpreter v1402312566470 :=
  chain_cut false 2 (by decide)

private def v1402312563398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.var 1)))))))
private theorem no_v1402312563398 : ¬ MinimalInterpreter v1402312563398 :=
  chain_cut false 2 (by decide)

private def v1402312452806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)) (.lam (.var 1)))))))
private theorem no_v1402312452806 : ¬ MinimalInterpreter v1402312452806 :=
  chain_cut false 2 (by decide)

private def v1402313008694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 1))))))
private theorem no_v1402313008694 : ¬ MinimalInterpreter v1402313008694 :=
  chain_cut false 2 (by decide)

private def v1402313005622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 1))))))
private theorem no_v1402313005622 : ¬ MinimalInterpreter v1402313005622 :=
  chain_cut false 2 (by decide)

private def v1402312566326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.lam (.var 1)))) (.var 1))))))
private theorem no_v1402312566326 : ¬ MinimalInterpreter v1402312566326 :=
  chain_cut false 2 (by decide)

private def v1402312563254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.var 1))) (.var 1))))))
private theorem no_v1402312563254 : ¬ MinimalInterpreter v1402312563254 :=
  chain_cut false 2 (by decide)

private def v1402312452662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.lam (.var 1))) (.var 1))))))
private theorem no_v1402312452662 : ¬ MinimalInterpreter v1402312452662 :=
  chain_cut false 2 (by decide)

theorem four138 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [2,0,0,1,1]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [2,0,0,1,1] = [v1402308814454,v1402308814262,v1402308811382,v1402308811190,v1402308810422,v1402308372086,v1402308371894,v1402308369014,v1402308258422,v1402308368822,v1402308368054,v1402308258230,v1402308257462,v1402308229814,v1402314791366,v1402314790598,v1402314790454,v1402314779078,v1402314778310,v1402314775238,v1402314778166,v1402314775094,v1402313021894,v1402313021126,v1402313020982,v1402313009606,v1402312567238,v1402313008838,v1402313005766,v1402312566470,v1402312563398,v1402312452806,v1402313008694,v1402313005622,v1402312566326,v1402312563254,v1402312452662] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308814454) (.cons (no_v1402308814262) (.cons (no_v1402308811382) (.cons (no_v1402308811190) (.cons (no_v1402308810422) (.cons (no_v1402308372086) (.cons (no_v1402308371894) (.cons (no_v1402308369014) (.cons (no_v1402308258422) (.cons (no_v1402308368822) (.cons (no_v1402308368054) (.cons (no_v1402308258230) (.cons (no_v1402308257462) (.cons (no_v1402308229814) (.cons (no_v1402314791366) (.cons (no_v1402314790598) (.cons (no_v1402314790454) (.cons (no_v1402314779078) (.cons (no_v1402314778310) (.cons (no_v1402314775238) (.cons (no_v1402314778166) (.cons (no_v1402314775094) (.cons (no_v1402313021894) (.cons (no_v1402313021126) (.cons (no_v1402313020982) (.cons (no_v1402313009606) (.cons (no_v1402312567238) (.cons (no_v1402313008838) (.cons (no_v1402313005766) (.cons (no_v1402312566470) (.cons (no_v1402312563398) (.cons (no_v1402312452806) (.cons (no_v1402313008694) (.cons (no_v1402313005622) (.cons (no_v1402312566326) (.cons (no_v1402312563254) (.cons (no_v1402312452662) .nil)))))))))))))))))))))))))))))))))))))

private def v1402314790458 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))))
private theorem no_v1402314790458 : ¬ MinimalInterpreter v1402314790458 :=
  chain_cut false 2 (by decide)

private def v1402314778170 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 2)))) (.var 0)))))))
private theorem no_v1402314778170 : ¬ MinimalInterpreter v1402314778170 :=
  chain_cut false 2 (by decide)

private def v1402314775098 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 0)))))))
private theorem no_v1402314775098 : ¬ MinimalInterpreter v1402314775098 :=
  chain_cut false 2 (by decide)

private def v1402313020986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))))))
private theorem no_v1402313020986 : ¬ MinimalInterpreter v1402313020986 :=
  chain_cut false 2 (by decide)

private def v1402313008698 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.var 2))))) (.var 0))))))
private theorem no_v1402313008698 : ¬ MinimalInterpreter v1402313008698 :=
  chain_cut false 2 (by decide)

private def v1402313005626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.var 0))))))
private theorem no_v1402313005626 : ¬ MinimalInterpreter v1402313005626 :=
  chain_cut false 2 (by decide)

private def v1402312566330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.lam (.var 2)))) (.var 0))))))
private theorem no_v1402312566330 : ¬ MinimalInterpreter v1402312566330 :=
  chain_cut false 2 (by decide)

private def v1402312563258 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.var 2))) (.var 0))))))
private theorem no_v1402312563258 : ¬ MinimalInterpreter v1402312563258 :=
  chain_cut false 2 (by decide)

private def v1402312452666 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.lam (.var 2))) (.var 0))))))
private theorem no_v1402312452666 : ¬ MinimalInterpreter v1402312452666 :=
  chain_cut false 2 (by decide)

theorem four139 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [2,0,0,2,0]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [2,0,0,2,0] = [v1402314790458,v1402314778170,v1402314775098,v1402313020986,v1402313008698,v1402313005626,v1402312566330,v1402312563258,v1402312452666] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314790458) (.cons (no_v1402314778170) (.cons (no_v1402314775098) (.cons (no_v1402313020986) (.cons (no_v1402313008698) (.cons (no_v1402313005626) (.cons (no_v1402312566330) (.cons (no_v1402312563258) (.cons (no_v1402312452666) .nil)))))))))

end Blc.SelfintSingleObject.Rows40
