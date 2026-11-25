import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402314399330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))))))))
private theorem no_v1402314399330 : ¬ MinimalInterpreter v1402314399330 :=
  chain_cut false 2 (by decide)

private def v1402314397602 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))))))))
private theorem no_v1402314397602 : ¬ MinimalInterpreter v1402314397602 :=
  chain_cut false 2 (by decide)

private def v1402314397578 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))))))))
private theorem no_v1402314397578 : ¬ MinimalInterpreter v1402314397578 :=
  chain_cut false 2 (by decide)

private def v1402314354274 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 0)))))))))
private theorem no_v1402314354274 : ¬ MinimalInterpreter v1402314354274 :=
  chain_cut false 2 (by decide)

private def v1402314352546 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 0))))))))
private theorem no_v1402314352546 : ¬ MinimalInterpreter v1402314352546 :=
  chain_cut false 2 (by decide)

private def v1402314341282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 0))))))))
private theorem no_v1402314341282 : ¬ MinimalInterpreter v1402314341282 :=
  chain_cut false 2 (by decide)

private def v1402314352522 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.var 0)))))))
private theorem no_v1402314352522 : ¬ MinimalInterpreter v1402314352522 :=
  chain_cut false 2 (by decide)

private def v1402314341258 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 0)))))))
private theorem no_v1402314341258 : ¬ MinimalInterpreter v1402314341258 :=
  chain_cut false 2 (by decide)

private def v1402312957538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.app (.var 0) (.lam (.var 0)))))))))
private theorem no_v1402312957538 : ¬ MinimalInterpreter v1402312957538 :=
  chain_cut false 2 (by decide)

private def v1402312955810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 2) (.var 0)) (.lam (.var 0))))))))
private theorem no_v1402312955810 : ¬ MinimalInterpreter v1402312955810 :=
  chain_cut false 2 (by decide)

private def v1402312955786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 2) (.lam (.var 0))) (.var 0)))))))
private theorem no_v1402312955786 : ¬ MinimalInterpreter v1402312955786 :=
  chain_cut false 2 (by decide)

private def v1402312912482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.app (.var 0) (.lam (.var 0))))))))
private theorem no_v1402312912482 : ¬ MinimalInterpreter v1402312912482 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.app (.var 0) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.app (.var 0) (.lam (.var 0)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312552034 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.app (.var 0) (.lam (.var 0))))))))
private theorem no_v1402312552034 : ¬ MinimalInterpreter v1402312552034 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.app (.var 0) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.app (.var 0) (.lam (.var 0)))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312910754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0)))) (.lam (.var 0)))))))
private theorem no_v1402312910754 : ¬ MinimalInterpreter v1402312910754 :=
  chain_cut false 2 (by decide)

private def v1402312899490 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0))) (.lam (.var 0)))))))
private theorem no_v1402312899490 : ¬ MinimalInterpreter v1402312899490 :=
  chain_cut false 2 (by decide)

private def v1402312550306 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0))) (.lam (.var 0)))))))
private theorem no_v1402312550306 : ¬ MinimalInterpreter v1402312550306 :=
  chain_cut false 2 (by decide)

private def v1402312539042 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.lam (.var 0)))))))
private theorem no_v1402312539042 : ¬ MinimalInterpreter v1402312539042 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.lam (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.lam (.var 0))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.app (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (so_closed_lam (by decide) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312448930 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.lam (.var 0)))))))
private theorem no_v1402312448930 : ¬ MinimalInterpreter v1402312448930 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.lam (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.lam (.var 0))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (so_closed_lam (by decide) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312910730 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))) (.var 0))))))
private theorem no_v1402312910730 : ¬ MinimalInterpreter v1402312910730 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.app (.var 2) (so_closed_lam (by decide) (.var 0))))) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 1) (so_closed_lam (by decide) (.var 0))))) (by decide) (by decide)) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)))))

private def v1402312899466 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))) (.var 0))))))
private theorem no_v1402312899466 : ¬ MinimalInterpreter v1402312899466 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.app (.var 1) (.var 2)) (so_closed_lam (by decide) (.var 0)))) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312550282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.lam (.var 0)))) (.var 0))))))
private theorem no_v1402312550282 : ¬ MinimalInterpreter v1402312550282 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.lam (.var 0)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.app (.var 2) (so_closed_lam (by decide) (.var 0)))) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide)) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)))))

private def v1402312539018 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.lam (.var 0))) (.var 0))))))
private theorem no_v1402312539018 : ¬ MinimalInterpreter v1402312539018 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.lam (.var 0))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.lam (.var 0))) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.app (.var 1) (.var 2))) (so_closed_lam (by decide) (.var 0))) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312448906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 0))) (.var 0))))))
private theorem no_v1402312448906 : ¬ MinimalInterpreter v1402312448906 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 0))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 0))) (.var 0)))) (.lam (r := (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (so_closed_lam (by decide) (.var 0))) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402336241562 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))))
private theorem no_v1402336241562 : ¬ MinimalInterpreter v1402336241562 :=
  chain_cut false 4 (by decide)

private def v1402336241130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))))
private theorem no_v1402336241130 : ¬ MinimalInterpreter v1402336241130 :=
  chain_cut false 4 (by decide)

private def v1402336230298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402336230298 : ¬ MinimalInterpreter v1402336230298 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336229866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))))
private theorem no_v1402336229866 : ¬ MinimalInterpreter v1402336229866 :=
  chain_cut false 4 (by decide)

private def v1402336227050 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))))
private theorem no_v1402336227050 : ¬ MinimalInterpreter v1402336227050 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336419426 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))))))))
private theorem no_v1402336419426 : ¬ MinimalInterpreter v1402336419426 :=
  chain_cut true 8 (by decide)

private def v1402336417698 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))))))))
private theorem no_v1402336417698 : ¬ MinimalInterpreter v1402336417698 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336417674 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))))))))
private theorem no_v1402336417674 : ¬ MinimalInterpreter v1402336417674 :=
  chain_cut true 5 (by decide)

private def v1402336374370 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 0)))))))))
private theorem no_v1402336374370 : ¬ MinimalInterpreter v1402336374370 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 0))))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336372642 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 0))))))))
private theorem no_v1402336372642 : ¬ MinimalInterpreter v1402336372642 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336361378 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 0))))))))
private theorem no_v1402336361378 : ¬ MinimalInterpreter v1402336361378 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 0)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (so_closed_lam (by decide) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336372618 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.var 0)))))))
private theorem no_v1402336372618 : ¬ MinimalInterpreter v1402336372618 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (so_closed_lam (by decide) (.var 0)))) (.var 0)) (.app (.var 0) (.app (.var 1) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336361354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 0)))))))
private theorem no_v1402336361354 : ¬ MinimalInterpreter v1402336361354 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (so_closed_lam (by decide) (.var 0))) (.var 0)) (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402330998690 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))) (.lam (.var 0))))))
private theorem no_v1402330998690 : ¬ MinimalInterpreter v1402330998690 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402330987426 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (.var 0))))))
private theorem no_v1402330987426 : ¬ MinimalInterpreter v1402330987426 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (.var 0)))) (.app (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (so_closed_lam (by decide) (.var 0))) (.var 0) (by decide) (by decide)))))

private def v1402330954218 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0)))))
private theorem no_v1402330954218 : ¬ MinimalInterpreter v1402330954218 :=
  chain_cut false 2 (by decide)

private def v1402330951402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.var 0)))))
private theorem no_v1402330951402 : ¬ MinimalInterpreter v1402330951402 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.var 0))) (.app (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0)) (.var 0) (by decide) (by decide)))))

theorem five744 : BadRow (bucket false 4 3 5 [1,1,2,0,0]) := by
  have h : bucket false 4 3 5 [1,1,2,0,0] = [v1402314399330,v1402314397602,v1402314397578,v1402314354274,v1402314352546,v1402314341282,v1402314352522,v1402314341258,v1402312957538,v1402312955810,v1402312955786,v1402312912482,v1402312552034,v1402312910754,v1402312899490,v1402312550306,v1402312539042,v1402312448930,v1402312910730,v1402312899466,v1402312550282,v1402312539018,v1402312448906,v1402336241562,v1402336241130,v1402336230298,v1402336229866,v1402336227050,v1402336419426,v1402336417698,v1402336417674,v1402336374370,v1402336372642,v1402336361378,v1402336372618,v1402336361354,v1402330998690,v1402330987426,v1402330954218,v1402330951402] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314399330) (.cons (no_v1402314397602) (.cons (no_v1402314397578) (.cons (no_v1402314354274) (.cons (no_v1402314352546) (.cons (no_v1402314341282) (.cons (no_v1402314352522) (.cons (no_v1402314341258) (.cons (no_v1402312957538) (.cons (no_v1402312955810) (.cons (no_v1402312955786) (.cons (no_v1402312912482) (.cons (no_v1402312552034) (.cons (no_v1402312910754) (.cons (no_v1402312899490) (.cons (no_v1402312550306) (.cons (no_v1402312539042) (.cons (no_v1402312448930) (.cons (no_v1402312910730) (.cons (no_v1402312899466) (.cons (no_v1402312550282) (.cons (no_v1402312539018) (.cons (no_v1402312448906) (.cons (no_v1402336241562) (.cons (no_v1402336241130) (.cons (no_v1402336230298) (.cons (no_v1402336229866) (.cons (no_v1402336227050) (.cons (no_v1402336419426) (.cons (no_v1402336417698) (.cons (no_v1402336417674) (.cons (no_v1402336374370) (.cons (no_v1402336372642) (.cons (no_v1402336361378) (.cons (no_v1402336372618) (.cons (no_v1402336361354) (.cons (no_v1402330998690) (.cons (no_v1402330987426) (.cons (no_v1402330954218) (.cons (no_v1402330951402) .nil))))))))))))))))))))))))))))))))))))))))

theorem five745 : BadRow (bucket true 4 3 5 [1,1,2,0,0]) := by
  have h : bucket true 4 3 5 [1,1,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402314408758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402314408758 : ¬ MinimalInterpreter v1402314408758 :=
  chain_cut true 6 (by decide)

private def v1402314408662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))))
private theorem no_v1402314408662 : ¬ MinimalInterpreter v1402314408662 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314411062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))))
private theorem no_v1402314411062 : ¬ MinimalInterpreter v1402314411062 :=
  chain_cut false 2 (by decide)

private def v1402314410774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))))))))
private theorem no_v1402314410774 : ¬ MinimalInterpreter v1402314410774 :=
  chain_cut false 2 (by decide)

private def v1402314355766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 0) (.var 1)))))))))
private theorem no_v1402314355766 : ¬ MinimalInterpreter v1402314355766 :=
  chain_cut false 2 (by decide)

private def v1402314354998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.var 1))))))))
private theorem no_v1402314354998 : ¬ MinimalInterpreter v1402314354998 :=
  chain_cut false 2 (by decide)

private def v1402314355478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.var 1)))))))
private theorem no_v1402314355478 : ¬ MinimalInterpreter v1402314355478 :=
  chain_cut false 2 (by decide)

private def v1402314341654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.var 1)))))))
private theorem no_v1402314341654 : ¬ MinimalInterpreter v1402314341654 :=
  chain_cut false 2 (by decide)

private def v1402314341462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.var 1)))))))
private theorem no_v1402314341462 : ¬ MinimalInterpreter v1402314341462 :=
  chain_cut false 2 (by decide)

private def v1402312966966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402312966966 : ¬ MinimalInterpreter v1402312966966 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.app (.app (.var 1) (.var 2)) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312966870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v1402312966870 : ¬ MinimalInterpreter v1402312966870 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.app (.var 1) (.var 2)) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312969270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))
private theorem no_v1402312969270 : ¬ MinimalInterpreter v1402312969270 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312968982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))))))
private theorem no_v1402312968982 : ¬ MinimalInterpreter v1402312968982 :=
  chain_cut false 2 (by decide)

private def v1402312913974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.app (.var 0) (.var 1))))))))
private theorem no_v1402312913974 : ¬ MinimalInterpreter v1402312913974 :=
  chain_cut false 2 (by decide)

private def v1402312553526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.app (.var 0) (.var 1))))))))
private theorem no_v1402312553526 : ¬ MinimalInterpreter v1402312553526 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.app (.var 0) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.app (.var 0) (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312913206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.app (.var 0) (.var 1)))))))
private theorem no_v1402312913206 : ¬ MinimalInterpreter v1402312913206 :=
  chain_cut false 2 (by decide)

private def v1402312552758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.app (.var 0) (.var 1)))))))
private theorem no_v1402312552758 : ¬ MinimalInterpreter v1402312552758 :=
  chain_cut false 2 (by decide)

private def v1402312913686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))) (.var 1))))))
private theorem no_v1402312913686 : ¬ MinimalInterpreter v1402312913686 :=
  chain_cut false 2 (by decide)

private def v1402312899862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))) (.var 1))))))
private theorem no_v1402312899862 : ¬ MinimalInterpreter v1402312899862 :=
  chain_cut false 2 (by decide)

private def v1402312899670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))) (.var 1))))))
private theorem no_v1402312899670 : ¬ MinimalInterpreter v1402312899670 :=
  chain_cut false 2 (by decide)

private def v1402312553238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 0)))) (.var 1))))))
private theorem no_v1402312553238 : ¬ MinimalInterpreter v1402312553238 :=
  chain_cut false 2 (by decide)

private def v1402312539414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 0))) (.var 1))))))
private theorem no_v1402312539414 : ¬ MinimalInterpreter v1402312539414 :=
  chain_cut false 2 (by decide)

private def v1402312449302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 0))) (.var 1))))))
private theorem no_v1402312449302 : ¬ MinimalInterpreter v1402312449302 :=
  chain_cut false 2 (by decide)

private def v1402312539222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.var 0)) (.var 1))))))
private theorem no_v1402312539222 : ¬ MinimalInterpreter v1402312539222 :=
  chain_cut false 2 (by decide)

private def v1402312449110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 0)) (.var 1))))))
private theorem no_v1402312449110 : ¬ MinimalInterpreter v1402312449110 :=
  chain_cut false 2 (by decide)

private def v1402336244534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402336244534 : ¬ MinimalInterpreter v1402336244534 :=
  chain_cut false 4 (by decide)

private def v1402336244438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))))
private theorem no_v1402336244438 : ¬ MinimalInterpreter v1402336244438 :=
  chain_cut false 4 (by decide)

private def v1402336230710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402336230710 : ¬ MinimalInterpreter v1402336230710 :=
  chain_cut false 4 (by decide)

private def v1402336230614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))))
private theorem no_v1402336230614 : ¬ MinimalInterpreter v1402336230614 :=
  chain_cut false 4 (by decide)

private def v1402336227158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))))
private theorem no_v1402336227158 : ¬ MinimalInterpreter v1402336227158 :=
  chain_cut false 4 (by decide)

private def v1402336430870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))))))))
private theorem no_v1402336430870 : ¬ MinimalInterpreter v1402336430870 :=
  chain_cut false 8 (by decide)

private def v1402336375094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.var 1))))))))
private theorem no_v1402336375094 : ¬ MinimalInterpreter v1402336375094 :=
  chain_cut false 5 (by decide)

private def v1402336375574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.var 1)))))))
private theorem no_v1402336375574 : ¬ MinimalInterpreter v1402336375574 :=
  chain_cut false 9 (by decide)

private def v1402336361750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.var 1)))))))
private theorem no_v1402336361750 : ¬ MinimalInterpreter v1402336361750 :=
  w_cut false 0 (by decide)

private def v1402336361558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.var 1)))))))
private theorem no_v1402336361558 : ¬ MinimalInterpreter v1402336361558 :=
  chain_cut false 5 (by decide)

theorem five746 : BadRow (bucket false 4 3 5 [1,2,0,0,1]) := by
  have h : bucket false 4 3 5 [1,2,0,0,1] = [v1402314408758,v1402314408662,v1402314411062,v1402314410774,v1402314355766,v1402314354998,v1402314355478,v1402314341654,v1402314341462,v1402312966966,v1402312966870,v1402312969270,v1402312968982,v1402312913974,v1402312553526,v1402312913206,v1402312552758,v1402312913686,v1402312899862,v1402312899670,v1402312553238,v1402312539414,v1402312449302,v1402312539222,v1402312449110,v1402336244534,v1402336244438,v1402336230710,v1402336230614,v1402336227158,v1402336430870,v1402336375094,v1402336375574,v1402336361750,v1402336361558] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314408758) (.cons (no_v1402314408662) (.cons (no_v1402314411062) (.cons (no_v1402314410774) (.cons (no_v1402314355766) (.cons (no_v1402314354998) (.cons (no_v1402314355478) (.cons (no_v1402314341654) (.cons (no_v1402314341462) (.cons (no_v1402312966966) (.cons (no_v1402312966870) (.cons (no_v1402312969270) (.cons (no_v1402312968982) (.cons (no_v1402312913974) (.cons (no_v1402312553526) (.cons (no_v1402312913206) (.cons (no_v1402312552758) (.cons (no_v1402312913686) (.cons (no_v1402312899862) (.cons (no_v1402312899670) (.cons (no_v1402312553238) (.cons (no_v1402312539414) (.cons (no_v1402312449302) (.cons (no_v1402312539222) (.cons (no_v1402312449110) (.cons (no_v1402336244534) (.cons (no_v1402336244438) (.cons (no_v1402336230710) (.cons (no_v1402336230614) (.cons (no_v1402336227158) (.cons (no_v1402336430870) (.cons (no_v1402336375094) (.cons (no_v1402336375574) (.cons (no_v1402336361750) (.cons (no_v1402336361558) .nil)))))))))))))))))))))))))))))))))))

theorem five747 : BadRow (bucket true 4 3 5 [1,2,0,0,1]) := by
  have h : bucket true 4 3 5 [1,2,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402314408762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402314408762 : ¬ MinimalInterpreter v1402314408762 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314408666 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))))))
private theorem no_v1402314408666 : ¬ MinimalInterpreter v1402314408666 :=
  chain_cut true 5 (by decide)

private def v1402314411066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))))))
private theorem no_v1402314411066 : ¬ MinimalInterpreter v1402314411066 :=
  chain_cut false 2 (by decide)

private def v1402314411234 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))))))))
private theorem no_v1402314411234 : ¬ MinimalInterpreter v1402314411234 :=
  chain_cut false 2 (by decide)

private def v1402314410850 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))))))
private theorem no_v1402314410850 : ¬ MinimalInterpreter v1402314410850 :=
  chain_cut false 2 (by decide)

private def v1402314355770 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 1) (.var 0)))))))))
private theorem no_v1402314355770 : ¬ MinimalInterpreter v1402314355770 :=
  chain_cut false 2 (by decide)

private def v1402314355938 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 0)))))))))
private theorem no_v1402314355938 : ¬ MinimalInterpreter v1402314355938 :=
  chain_cut false 2 (by decide)

private def v1402314355002 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 1) (.var 0))))))))
private theorem no_v1402314355002 : ¬ MinimalInterpreter v1402314355002 :=
  chain_cut false 2 (by decide)

private def v1402314355554 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 0))))))))
private theorem no_v1402314355554 : ¬ MinimalInterpreter v1402314355554 :=
  chain_cut false 2 (by decide)

private def v1402314341730 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 0))))))))
private theorem no_v1402314341730 : ¬ MinimalInterpreter v1402314341730 :=
  chain_cut false 2 (by decide)

private def v1402314354906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))))
private theorem no_v1402314354906 : ¬ MinimalInterpreter v1402314354906 :=
  chain_cut false 2 (by decide)

private def v1402314341466 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.var 0)))))))
private theorem no_v1402314341466 : ¬ MinimalInterpreter v1402314341466 :=
  chain_cut false 2 (by decide)

private def v1402312966970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402312966970 : ¬ MinimalInterpreter v1402312966970 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.app (.app (.var 1) (.var 2)) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312966874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v1402312966874 : ¬ MinimalInterpreter v1402312966874 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312969274 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))))))
private theorem no_v1402312969274 : ¬ MinimalInterpreter v1402312969274 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312969442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))))))
private theorem no_v1402312969442 : ¬ MinimalInterpreter v1402312969442 :=
  chain_cut false 2 (by decide)

private def v1402312969058 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))))
private theorem no_v1402312969058 : ¬ MinimalInterpreter v1402312969058 :=
  chain_cut false 2 (by decide)

private def v1402312913978 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.app (.var 1) (.var 0))))))))
private theorem no_v1402312913978 : ¬ MinimalInterpreter v1402312913978 :=
  chain_cut false 2 (by decide)

private def v1402312914146 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.app (.var 1) (.lam (.var 0))))))))
private theorem no_v1402312914146 : ¬ MinimalInterpreter v1402312914146 :=
  chain_cut false 2 (by decide)

private def v1402312553530 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.app (.var 1) (.var 0))))))))
private theorem no_v1402312553530 : ¬ MinimalInterpreter v1402312553530 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.app (.var 1) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.app (.var 1) (.var 0)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312553698 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 1) (.lam (.var 0))))))))
private theorem no_v1402312553698 : ¬ MinimalInterpreter v1402312553698 :=
  chain_cut false 2 (by decide)

private def v1402312913210 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.app (.var 1) (.var 0)))))))
private theorem no_v1402312913210 : ¬ MinimalInterpreter v1402312913210 :=
  chain_cut false 2 (by decide)

private def v1402312552762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.app (.var 1) (.var 0)))))))
private theorem no_v1402312552762 : ¬ MinimalInterpreter v1402312552762 :=
  chain_cut false 2 (by decide)

private def v1402312913762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1)))) (.lam (.var 0)))))))
private theorem no_v1402312913762 : ¬ MinimalInterpreter v1402312913762 :=
  chain_cut false 2 (by decide)

private def v1402312899938 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1))) (.lam (.var 0)))))))
private theorem no_v1402312899938 : ¬ MinimalInterpreter v1402312899938 :=
  chain_cut false 2 (by decide)

private def v1402312553314 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1))) (.lam (.var 0)))))))
private theorem no_v1402312553314 : ¬ MinimalInterpreter v1402312553314 :=
  chain_cut false 2 (by decide)

private def v1402312539490 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1)) (.lam (.var 0)))))))
private theorem no_v1402312539490 : ¬ MinimalInterpreter v1402312539490 :=
  chain_cut false 2 (by decide)

private def v1402312449378 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1)) (.lam (.var 0)))))))
private theorem no_v1402312449378 : ¬ MinimalInterpreter v1402312449378 :=
  chain_cut false 2 (by decide)

private def v1402312913114 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.app (.var 0) (.var 1))))) (.var 0))))))
private theorem no_v1402312913114 : ¬ MinimalInterpreter v1402312913114 :=
  chain_cut false 2 (by decide)

private def v1402312899674 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))) (.var 0))))))
private theorem no_v1402312899674 : ¬ MinimalInterpreter v1402312899674 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.app (.var 2) (so_closed_lam (by decide) (.var 0))) (.var 1))) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 0))) (by decide) (by decide)) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)))))

private def v1402312552666 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.var 1)))) (.var 0))))))
private theorem no_v1402312552666 : ¬ MinimalInterpreter v1402312552666 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312539226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.var 1)) (.var 0))))))
private theorem no_v1402312539226 : ¬ MinimalInterpreter v1402312539226 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.app (.var 2) (so_closed_lam (by decide) (.var 0)))) (.var 1)) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (so_closed_lam (by decide) (.var 0)))) (.var 0)) (by decide) (by decide)) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)))))

private def v1402312449114 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 1)) (.var 0))))))
private theorem no_v1402312449114 : ¬ MinimalInterpreter v1402312449114 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.app (.var 1) (.var 2)) (so_closed_lam (by decide) (.var 0))) (.var 1)) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.var 0))) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402336244538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402336244538 : ¬ MinimalInterpreter v1402336244538 :=
  chain_cut false 4 (by decide)

private def v1402336244442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))))
private theorem no_v1402336244442 : ¬ MinimalInterpreter v1402336244442 :=
  chain_cut false 4 (by decide)

private def v1402336230714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402336230714 : ¬ MinimalInterpreter v1402336230714 :=
  chain_cut false 4 (by decide)

private def v1402336230618 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))))
private theorem no_v1402336230618 : ¬ MinimalInterpreter v1402336230618 :=
  chain_cut false 4 (by decide)

private def v1402336227162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))))
private theorem no_v1402336227162 : ¬ MinimalInterpreter v1402336227162 :=
  chain_cut false 4 (by decide)

private def v1402336431330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))))))))
private theorem no_v1402336431330 : ¬ MinimalInterpreter v1402336431330 :=
  chain_cut false 8 (by decide)

private def v1402336430946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))))))
private theorem no_v1402336430946 : ¬ MinimalInterpreter v1402336430946 :=
  chain_cut false 8 (by decide)

private def v1402336376034 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 0)))))))))
private theorem no_v1402336376034 : ¬ MinimalInterpreter v1402336376034 :=
  w_cut false 0 (by decide)

private def v1402336375098 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 1) (.var 0))))))))
private theorem no_v1402336375098 : ¬ MinimalInterpreter v1402336375098 :=
  chain_cut false 5 (by decide)

private def v1402336375650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 0))))))))
private theorem no_v1402336375650 : ¬ MinimalInterpreter v1402336375650 :=
  chain_cut false 9 (by decide)

private def v1402336361826 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 0))))))))
private theorem no_v1402336361826 : ¬ MinimalInterpreter v1402336361826 :=
  w_cut false 0 (by decide)

private def v1402336361562 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.var 0)))))))
private theorem no_v1402336361562 : ¬ MinimalInterpreter v1402336361562 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (so_closed_lam (by decide) (.var 0))) (.var 1)) (.var 0)) (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402331001698 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))) (.lam (.var 0))))))
private theorem no_v1402331001698 : ¬ MinimalInterpreter v1402331001698 :=
  chain_cut false 10 (by decide)

private def v1402330987874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))) (.lam (.var 0))))))
private theorem no_v1402330987874 : ¬ MinimalInterpreter v1402330987874 :=
  w_cut false 0 (by decide)

private def v1402330954970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))) (.var 0)))))
private theorem no_v1402330954970 : ¬ MinimalInterpreter v1402330954970 :=
  chain_cut false 2 (by decide)

private def v1402330951514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))) (.var 0)))))
private theorem no_v1402330951514 : ¬ MinimalInterpreter v1402330951514 :=
  chain_cut false 2 (by decide)

theorem five748 : BadRow (bucket false 4 3 5 [1,2,0,1,0]) := by
  have h : bucket false 4 3 5 [1,2,0,1,0] = [v1402314408762,v1402314408666,v1402314411066,v1402314411234,v1402314410850,v1402314355770,v1402314355938,v1402314355002,v1402314355554,v1402314341730,v1402314354906,v1402314341466,v1402312966970,v1402312966874,v1402312969274,v1402312969442,v1402312969058,v1402312913978,v1402312914146,v1402312553530,v1402312553698,v1402312913210,v1402312552762,v1402312913762,v1402312899938,v1402312553314,v1402312539490,v1402312449378,v1402312913114,v1402312899674,v1402312552666,v1402312539226,v1402312449114,v1402336244538,v1402336244442,v1402336230714,v1402336230618,v1402336227162,v1402336431330,v1402336430946,v1402336376034,v1402336375098,v1402336375650,v1402336361826,v1402336361562,v1402331001698,v1402330987874,v1402330954970,v1402330951514] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314408762) (.cons (no_v1402314408666) (.cons (no_v1402314411066) (.cons (no_v1402314411234) (.cons (no_v1402314410850) (.cons (no_v1402314355770) (.cons (no_v1402314355938) (.cons (no_v1402314355002) (.cons (no_v1402314355554) (.cons (no_v1402314341730) (.cons (no_v1402314354906) (.cons (no_v1402314341466) (.cons (no_v1402312966970) (.cons (no_v1402312966874) (.cons (no_v1402312969274) (.cons (no_v1402312969442) (.cons (no_v1402312969058) (.cons (no_v1402312913978) (.cons (no_v1402312914146) (.cons (no_v1402312553530) (.cons (no_v1402312553698) (.cons (no_v1402312913210) (.cons (no_v1402312552762) (.cons (no_v1402312913762) (.cons (no_v1402312899938) (.cons (no_v1402312553314) (.cons (no_v1402312539490) (.cons (no_v1402312449378) (.cons (no_v1402312913114) (.cons (no_v1402312899674) (.cons (no_v1402312552666) (.cons (no_v1402312539226) (.cons (no_v1402312449114) (.cons (no_v1402336244538) (.cons (no_v1402336244442) (.cons (no_v1402336230714) (.cons (no_v1402336230618) (.cons (no_v1402336227162) (.cons (no_v1402336431330) (.cons (no_v1402336430946) (.cons (no_v1402336376034) (.cons (no_v1402336375098) (.cons (no_v1402336375650) (.cons (no_v1402336361826) (.cons (no_v1402336361562) (.cons (no_v1402331001698) (.cons (no_v1402330987874) (.cons (no_v1402330954970) (.cons (no_v1402330951514) .nil)))))))))))))))))))))))))))))))))))))))))))))))))

theorem five749 : BadRow (bucket true 4 3 5 [1,2,0,1,0]) := by
  have h : bucket true 4 3 5 [1,2,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402314408858 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))))))
private theorem no_v1402314408858 : ¬ MinimalInterpreter v1402314408858 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314408682 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))))))
private theorem no_v1402314408682 : ¬ MinimalInterpreter v1402314408682 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314411618 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))))))))
private theorem no_v1402314411618 : ¬ MinimalInterpreter v1402314411618 :=
  chain_cut false 2 (by decide)

private def v1402314410914 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))))))
private theorem no_v1402314410914 : ¬ MinimalInterpreter v1402314410914 :=
  chain_cut false 2 (by decide)

private def v1402314410890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))))))))
private theorem no_v1402314410890 : ¬ MinimalInterpreter v1402314410890 :=
  chain_cut false 2 (by decide)

private def v1402314356322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 0)))))))))
private theorem no_v1402314356322 : ¬ MinimalInterpreter v1402314356322 :=
  chain_cut false 2 (by decide)

private def v1402314355618 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 0))))))))
private theorem no_v1402314355618 : ¬ MinimalInterpreter v1402314355618 :=
  chain_cut false 2 (by decide)

private def v1402314341794 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 0))))))))
private theorem no_v1402314341794 : ¬ MinimalInterpreter v1402314341794 :=
  chain_cut false 2 (by decide)

private def v1402314354922 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.app (.var 1) (.var 0)))) (.var 0)))))))
private theorem no_v1402314354922 : ¬ MinimalInterpreter v1402314354922 :=
  chain_cut false 2 (by decide)

private def v1402314355594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 0)))))))
private theorem no_v1402314355594 : ¬ MinimalInterpreter v1402314355594 :=
  chain_cut false 2 (by decide)

private def v1402314341770 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 0)))))))
private theorem no_v1402314341770 : ¬ MinimalInterpreter v1402314341770 :=
  chain_cut false 2 (by decide)

private def v1402312967066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402312967066 : ¬ MinimalInterpreter v1402312967066 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 2)) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312966890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v1402312966890 : ¬ MinimalInterpreter v1402312966890 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312969826 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))))))
private theorem no_v1402312969826 : ¬ MinimalInterpreter v1402312969826 :=
  chain_cut false 2 (by decide)

private def v1402312969122 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))))
private theorem no_v1402312969122 : ¬ MinimalInterpreter v1402312969122 :=
  chain_cut false 2 (by decide)

private def v1402312969098 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))))))
private theorem no_v1402312969098 : ¬ MinimalInterpreter v1402312969098 :=
  chain_cut false 2 (by decide)

private def v1402312914530 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.app (.var 0) (.lam (.var 0))))))))
private theorem no_v1402312914530 : ¬ MinimalInterpreter v1402312914530 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.app (.var 0) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312554082 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.app (.var 0) (.lam (.var 0))))))))
private theorem no_v1402312554082 : ¬ MinimalInterpreter v1402312554082 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.app (.var 0) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.app (.var 0) (.lam (.var 0)))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312913826 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0)))) (.lam (.var 0)))))))
private theorem no_v1402312913826 : ¬ MinimalInterpreter v1402312913826 :=
  chain_cut false 2 (by decide)

private def v1402312900002 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0))) (.lam (.var 0)))))))
private theorem no_v1402312900002 : ¬ MinimalInterpreter v1402312900002 :=
  chain_cut false 2 (by decide)

private def v1402312553378 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0))) (.lam (.var 0)))))))
private theorem no_v1402312553378 : ¬ MinimalInterpreter v1402312553378 :=
  chain_cut false 2 (by decide)

private def v1402312539554 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.lam (.var 0)))))))
private theorem no_v1402312539554 : ¬ MinimalInterpreter v1402312539554 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.lam (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.lam (.var 0))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.app (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (so_closed_lam (by decide) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312449442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.lam (.var 0)))))))
private theorem no_v1402312449442 : ¬ MinimalInterpreter v1402312449442 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.lam (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.lam (.var 0))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.app (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (so_closed_lam (by decide) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312913130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.app (.var 1) (.var 0))))) (.var 0))))))
private theorem no_v1402312913130 : ¬ MinimalInterpreter v1402312913130 :=
  chain_cut false 2 (by decide)

private def v1402312913802 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))) (.var 0))))))
private theorem no_v1402312913802 : ¬ MinimalInterpreter v1402312913802 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.app (.var 1) (so_closed_lam (by decide) (.var 0))))) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312899978 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))) (.var 0))))))
private theorem no_v1402312899978 : ¬ MinimalInterpreter v1402312899978 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.app (.var 2) (.var 1)) (so_closed_lam (by decide) (.var 0)))) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312552682 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.var 0)))) (.var 0))))))
private theorem no_v1402312552682 : ¬ MinimalInterpreter v1402312552682 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.var 0)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.var 0)))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.lam (.app (.var 1) (.var 0)))) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312553354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.lam (.var 0)))) (.var 0))))))
private theorem no_v1402312553354 : ¬ MinimalInterpreter v1402312553354 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.lam (.var 0)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.lam (.var 0)))) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.app (.var 1) (so_closed_lam (by decide) (.var 0)))) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312539530 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.lam (.var 0))) (.var 0))))))
private theorem no_v1402312539530 : ¬ MinimalInterpreter v1402312539530 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.lam (.var 0))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.lam (.var 0))) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.app (.var 2) (.var 1))) (so_closed_lam (by decide) (.var 0))) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312449418 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.lam (.var 0))) (.var 0))))))
private theorem no_v1402312449418 : ¬ MinimalInterpreter v1402312449418 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.lam (.var 0))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.lam (.var 0))) (.var 0)))) (.lam (r := (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (so_closed_lam (by decide) (.var 0))) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402336244634 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))))
private theorem no_v1402336244634 : ¬ MinimalInterpreter v1402336244634 :=
  chain_cut false 4 (by decide)

private def v1402336244458 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))))
private theorem no_v1402336244458 : ¬ MinimalInterpreter v1402336244458 :=
  chain_cut false 4 (by decide)

private def v1402336230810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402336230810 : ¬ MinimalInterpreter v1402336230810 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336230634 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))))
private theorem no_v1402336230634 : ¬ MinimalInterpreter v1402336230634 :=
  chain_cut false 4 (by decide)

private def v1402336227178 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))))
private theorem no_v1402336227178 : ¬ MinimalInterpreter v1402336227178 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336431714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))))))))
private theorem no_v1402336431714 : ¬ MinimalInterpreter v1402336431714 :=
  chain_cut true 8 (by decide)

private def v1402336431010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))))))
private theorem no_v1402336431010 : ¬ MinimalInterpreter v1402336431010 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336430986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))))))))
private theorem no_v1402336430986 : ¬ MinimalInterpreter v1402336430986 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336376418 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 0)))))))))
private theorem no_v1402336376418 : ¬ MinimalInterpreter v1402336376418 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 0))))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336375714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 0))))))))
private theorem no_v1402336375714 : ¬ MinimalInterpreter v1402336375714 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402336361890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 0))))))))
private theorem no_v1402336361890 : ¬ MinimalInterpreter v1402336361890 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 0)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (so_closed_lam (by decide) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336375690 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 0)))))))
private theorem no_v1402336375690 : ¬ MinimalInterpreter v1402336375690 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (so_closed_lam (by decide) (.var 0)))) (.var 0)) (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336361866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 0)))))))
private theorem no_v1402336361866 : ¬ MinimalInterpreter v1402336361866 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (so_closed_lam (by decide) (.var 0))) (.var 0)) (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402331001762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))) (.lam (.var 0))))))
private theorem no_v1402331001762 : ¬ MinimalInterpreter v1402331001762 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402330987938 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (.var 0))))))
private theorem no_v1402330987938 : ¬ MinimalInterpreter v1402330987938 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (.var 0)))) (.app (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (so_closed_lam (by decide) (.var 0))) (.var 0) (by decide) (by decide)))))

private def v1402330954986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))) (.var 0)))))
private theorem no_v1402330954986 : ¬ MinimalInterpreter v1402330954986 :=
  chain_cut false 2 (by decide)

private def v1402330951530 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.var 0)))))
private theorem no_v1402330951530 : ¬ MinimalInterpreter v1402330951530 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.var 0))) (.app (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0)) (.var 0) (by decide) (by decide)))))

theorem five750 : BadRow (bucket false 4 3 5 [1,2,1,0,0]) := by
  have h : bucket false 4 3 5 [1,2,1,0,0] = [v1402314408858,v1402314408682,v1402314411618,v1402314410914,v1402314410890,v1402314356322,v1402314355618,v1402314341794,v1402314354922,v1402314355594,v1402314341770,v1402312967066,v1402312966890,v1402312969826,v1402312969122,v1402312969098,v1402312914530,v1402312554082,v1402312913826,v1402312900002,v1402312553378,v1402312539554,v1402312449442,v1402312913130,v1402312913802,v1402312899978,v1402312552682,v1402312553354,v1402312539530,v1402312449418,v1402336244634,v1402336244458,v1402336230810,v1402336230634,v1402336227178,v1402336431714,v1402336431010,v1402336430986,v1402336376418,v1402336375714,v1402336361890,v1402336375690,v1402336361866,v1402331001762,v1402330987938,v1402330954986,v1402330951530] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314408858) (.cons (no_v1402314408682) (.cons (no_v1402314411618) (.cons (no_v1402314410914) (.cons (no_v1402314410890) (.cons (no_v1402314356322) (.cons (no_v1402314355618) (.cons (no_v1402314341794) (.cons (no_v1402314354922) (.cons (no_v1402314355594) (.cons (no_v1402314341770) (.cons (no_v1402312967066) (.cons (no_v1402312966890) (.cons (no_v1402312969826) (.cons (no_v1402312969122) (.cons (no_v1402312969098) (.cons (no_v1402312914530) (.cons (no_v1402312554082) (.cons (no_v1402312913826) (.cons (no_v1402312900002) (.cons (no_v1402312553378) (.cons (no_v1402312539554) (.cons (no_v1402312449442) (.cons (no_v1402312913130) (.cons (no_v1402312913802) (.cons (no_v1402312899978) (.cons (no_v1402312552682) (.cons (no_v1402312553354) (.cons (no_v1402312539530) (.cons (no_v1402312449418) (.cons (no_v1402336244634) (.cons (no_v1402336244458) (.cons (no_v1402336230810) (.cons (no_v1402336230634) (.cons (no_v1402336227178) (.cons (no_v1402336431714) (.cons (no_v1402336431010) (.cons (no_v1402336430986) (.cons (no_v1402336376418) (.cons (no_v1402336375714) (.cons (no_v1402336361890) (.cons (no_v1402336375690) (.cons (no_v1402336361866) (.cons (no_v1402331001762) (.cons (no_v1402330987938) (.cons (no_v1402330954986) (.cons (no_v1402330951530) .nil)))))))))))))))))))))))))))))))))))))))))))))))

theorem five751 : BadRow (bucket true 4 3 5 [1,2,1,0,0]) := by
  have h : bucket true 4 3 5 [1,2,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
