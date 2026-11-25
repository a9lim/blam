import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1450090230690 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0)))))))) (.lam (.var 0)))
private theorem no_v1450090230690 : ¬ MinimalInterpreter v1450090230690 :=
  chain_cut false 2 (by decide)

private def v1401803624250 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1401803624250 : ¬ MinimalInterpreter v1401803624250 :=
  chain_cut false 2 (by decide)

private def v1398582398778 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1398582398778 : ¬ MinimalInterpreter v1398582398778 :=
  chain_cut false 2 (by decide)

private def v1398179745594 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1398179745594 : ¬ MinimalInterpreter v1398179745594 :=
  chain_cut false 4 (by decide)

private def v1450090216866 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.lam (.var 0)))
private theorem no_v1450090216866 : ¬ MinimalInterpreter v1450090216866 :=
  chain_cut false 2 (by decide)

private def v1401803623386 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1401803623386 : ¬ MinimalInterpreter v1401803623386 :=
  chain_cut false 2 (by decide)

private def v1398582397914 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1398582397914 : ¬ MinimalInterpreter v1398582397914 :=
  chain_cut false 2 (by decide)

private def v1398179744730 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1398179744730 : ¬ MinimalInterpreter v1398179744730 :=
  chain_cut false 4 (by decide)

private def v1450089870242 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0))))))) (.lam (.var 0)))
private theorem no_v1450089870242 : ¬ MinimalInterpreter v1450089870242 :=
  chain_cut false 2 (by decide)

private def v1401803601722 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v1401803601722 : ¬ MinimalInterpreter v1401803601722 :=
  chain_cut false 2 (by decide)

private def v1398582376250 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v1398582376250 : ¬ MinimalInterpreter v1398582376250 :=
  chain_cut false 2 (by decide)

private def v1398179723066 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v1398179723066 : ¬ MinimalInterpreter v1398179723066 :=
  chain_cut false 7 (by decide)

private def v1450089856418 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))) (.lam (.var 0)))
private theorem no_v1450089856418 : ¬ MinimalInterpreter v1450089856418 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))) (.lam (.var 0))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.var 0))))

private def v1401803600858 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v1401803600858 : ¬ MinimalInterpreter v1401803600858 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398582375386 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v1398582375386 : ¬ MinimalInterpreter v1398582375386 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398179722202 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v1398179722202 : ¬ MinimalInterpreter v1398179722202 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1450089766306 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))) (.lam (.var 0)))
private theorem no_v1450089766306 : ¬ MinimalInterpreter v1450089766306 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))) (.lam (.var 0))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.var 0))))

private def v1401803595226 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v1401803595226 : ¬ MinimalInterpreter v1401803595226 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398582369754 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v1398582369754 : ¬ MinimalInterpreter v1398582369754 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398179716570 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v1398179716570 : ¬ MinimalInterpreter v1398179716570 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1450095735714 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))) (.lam (.var 0)))
private theorem no_v1450095735714 : ¬ MinimalInterpreter v1450095735714 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1381969593882 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v1381969593882 : ¬ MinimalInterpreter v1381969593882 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (.lam (r := (.var 0)) (g := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0)))) (.app (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide))))

private def v1381969593954 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))
private theorem no_v1381969593954 : ¬ MinimalInterpreter v1381969593954 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.app (.var 1) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (.lam (r := (.var 0)) (g := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.app (.var 1) (.var 0)))) (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide))))

private def v1401803968314 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1401803968314 : ¬ MinimalInterpreter v1401803968314 :=
  chain_cut false 3 (by decide)

private def v1381969593762 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))
private theorem no_v1381969593762 : ¬ MinimalInterpreter v1381969593762 :=
  so_cut false 1 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 1) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (.lam (r := (.var 0)) (g := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 1) (.var 0)))) (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide))))

private def v1398582742842 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1398582742842 : ¬ MinimalInterpreter v1398582742842 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1381969593738 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))
private theorem no_v1381969593738 : ¬ MinimalInterpreter v1381969593738 :=
  so_cut false 1 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.var 1) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.var 1) (.var 0)))) (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide))))

private def v1398180089658 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1398180089658 : ¬ MinimalInterpreter v1398180089658 :=
  chain_cut false 2 (by decide)

private def v1450095721890 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.lam (.var 0)))
private theorem no_v1450095721890 : ¬ MinimalInterpreter v1450095721890 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.lam (.var 0))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.var 0))))

private def v1381955438106 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v1381955438106 : ¬ MinimalInterpreter v1381955438106 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))))

private def v1381955438178 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))
private theorem no_v1381955438178 : ¬ MinimalInterpreter v1381955438178 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))))))

private def v1401803967450 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1401803967450 : ¬ MinimalInterpreter v1401803967450 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381955437986 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))
private theorem no_v1381955437986 : ¬ MinimalInterpreter v1381955437986 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0))))))

private def v1398582741978 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1398582741978 : ¬ MinimalInterpreter v1398582741978 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381955437962 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))
private theorem no_v1381955437962 : ¬ MinimalInterpreter v1381955437962 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0)))))

private def v1398180088794 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1398180088794 : ¬ MinimalInterpreter v1398180088794 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem five368 : BadRow (bucket false 4 2 4 [1,2,1,0]) := by
  have h : bucket false 4 2 4 [1,2,1,0] = [v1450090230690,v1401803624250,v1398582398778,v1398179745594,v1450090216866,v1401803623386,v1398582397914,v1398179744730,v1450089870242,v1401803601722,v1398582376250,v1398179723066,v1450089856418,v1401803600858,v1398582375386,v1398179722202,v1450089766306,v1401803595226,v1398582369754,v1398179716570,v1450095735714,v1381969593882,v1381969593954,v1401803968314,v1381969593762,v1398582742842,v1381969593738,v1398180089658,v1450095721890,v1381955438106,v1381955438178,v1401803967450,v1381955437986,v1398582741978,v1381955437962,v1398180088794] := by decide +kernel
  rw [h]
  exact (.cons (no_v1450090230690) (.cons (no_v1401803624250) (.cons (no_v1398582398778) (.cons (no_v1398179745594) (.cons (no_v1450090216866) (.cons (no_v1401803623386) (.cons (no_v1398582397914) (.cons (no_v1398179744730) (.cons (no_v1450089870242) (.cons (no_v1401803601722) (.cons (no_v1398582376250) (.cons (no_v1398179723066) (.cons (no_v1450089856418) (.cons (no_v1401803600858) (.cons (no_v1398582375386) (.cons (no_v1398179722202) (.cons (no_v1450089766306) (.cons (no_v1401803595226) (.cons (no_v1398582369754) (.cons (no_v1398179716570) (.cons (no_v1450095735714) (.cons (no_v1381969593882) (.cons (no_v1381969593954) (.cons (no_v1401803968314) (.cons (no_v1381969593762) (.cons (no_v1398582742842) (.cons (no_v1381969593738) (.cons (no_v1398180089658) (.cons (no_v1450095721890) (.cons (no_v1381955438106) (.cons (no_v1381955438178) (.cons (no_v1401803967450) (.cons (no_v1381955437986) (.cons (no_v1398582741978) (.cons (no_v1381955437962) (.cons (no_v1398180088794) .nil))))))))))))))))))))))))))))))))))))

private def v1187156278506 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0)))))))) (.var 0)))
private theorem no_v1187156278506 : ¬ MinimalInterpreter v1187156278506 :=
  chain_cut false 2 (by decide)

private def v1207322136378 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v1207322136378 : ¬ MinimalInterpreter v1207322136378 :=
  chain_cut true 2 (by decide)

private def v1194031266330 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194031266330 : ¬ MinimalInterpreter v1194031266330 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311208250 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v1175311208250 : ¬ MinimalInterpreter v1175311208250 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437234490 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1194437234490 : ¬ MinimalInterpreter v1194437234490 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187156275050 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.var 0)))
private theorem no_v1187156275050 : ¬ MinimalInterpreter v1187156275050 :=
  chain_cut false 2 (by decide)

private def v1207322135514 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v1207322135514 : ¬ MinimalInterpreter v1207322135514 :=
  chain_cut true 2 (by decide)

private def v1194031045146 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194031045146 : ¬ MinimalInterpreter v1194031045146 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311207386 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v1175311207386 : ¬ MinimalInterpreter v1175311207386 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437233626 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1194437233626 : ¬ MinimalInterpreter v1194437233626 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187156188394 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0))))))) (.var 0)))
private theorem no_v1187156188394 : ¬ MinimalInterpreter v1187156188394 :=
  chain_cut false 2 (by decide)

private def v1207322113850 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1207322113850 : ¬ MinimalInterpreter v1207322113850 :=
  chain_cut true 2 (by decide)

private def v1194025499162 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194025499162 : ¬ MinimalInterpreter v1194025499162 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311185722 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1175311185722 : ¬ MinimalInterpreter v1175311185722 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437211962 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v1194437211962 : ¬ MinimalInterpreter v1194437211962 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187156184938 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))) (.var 0)))
private theorem no_v1187156184938 : ¬ MinimalInterpreter v1187156184938 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))) (.var 0)) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0)))

private def v1207322112986 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))))))
private theorem no_v1207322112986 : ¬ MinimalInterpreter v1207322112986 :=
  so_cut false 0 (show SO (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))))) from (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1194025277978 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194025277978 : ¬ MinimalInterpreter v1194025277978 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))

private def v1175311184858 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))))))
private theorem no_v1175311184858 : ¬ MinimalInterpreter v1175311184858 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1194437211098 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v1194437211098 : ¬ MinimalInterpreter v1194437211098 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1187156162410 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))) (.var 0)))
private theorem no_v1187156162410 : ¬ MinimalInterpreter v1187156162410 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))) (.var 0)) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0)))

private def v1207322107354 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))))
private theorem no_v1207322107354 : ¬ MinimalInterpreter v1207322107354 :=
  so_cut false 0 (show SO (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))) from (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1194023836186 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194023836186 : ¬ MinimalInterpreter v1194023836186 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))

private def v1175311179226 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))))
private theorem no_v1175311179226 : ¬ MinimalInterpreter v1175311179226 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1194437205466 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v1194437205466 : ¬ MinimalInterpreter v1194437205466 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1187157654762 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))) (.var 0)))
private theorem no_v1187157654762 : ¬ MinimalInterpreter v1187157654762 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1207322480442 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v1207322480442 : ¬ MinimalInterpreter v1207322480442 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194119346714 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194119346714 : ¬ MinimalInterpreter v1194119346714 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311552314 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v1175311552314 : ¬ MinimalInterpreter v1175311552314 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1170126120474 : Term := (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v1170126120474 : ¬ MinimalInterpreter v1170126120474 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437578554 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1194437578554 : ¬ MinimalInterpreter v1194437578554 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187157651306 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.var 0)))
private theorem no_v1187157651306 : ¬ MinimalInterpreter v1187157651306 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.var 0)) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))) (.var 0)))

private def v1207322479578 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v1207322479578 : ¬ MinimalInterpreter v1207322479578 :=
  so_cut false 0 (show SO (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1194119125530 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194119125530 : ¬ MinimalInterpreter v1194119125530 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))

private def v1175311551450 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v1175311551450 : ¬ MinimalInterpreter v1175311551450 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1170122581530 : Term := (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v1170122581530 : ¬ MinimalInterpreter v1170122581530 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))))

private def v1194437577690 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1194437577690 : ¬ MinimalInterpreter v1194437577690 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem five369 : BadRow (bucket true 4 2 4 [1,2,1,0]) := by
  have h : bucket true 4 2 4 [1,2,1,0] = [v1187156278506,v1207322136378,v1194031266330,v1175311208250,v1194437234490,v1187156275050,v1207322135514,v1194031045146,v1175311207386,v1194437233626,v1187156188394,v1207322113850,v1194025499162,v1175311185722,v1194437211962,v1187156184938,v1207322112986,v1194025277978,v1175311184858,v1194437211098,v1187156162410,v1207322107354,v1194023836186,v1175311179226,v1194437205466,v1187157654762,v1207322480442,v1194119346714,v1175311552314,v1170126120474,v1194437578554,v1187157651306,v1207322479578,v1194119125530,v1175311551450,v1170122581530,v1194437577690] := by decide +kernel
  rw [h]
  exact (.cons (no_v1187156278506) (.cons (no_v1207322136378) (.cons (no_v1194031266330) (.cons (no_v1175311208250) (.cons (no_v1194437234490) (.cons (no_v1187156275050) (.cons (no_v1207322135514) (.cons (no_v1194031045146) (.cons (no_v1175311207386) (.cons (no_v1194437233626) (.cons (no_v1187156188394) (.cons (no_v1207322113850) (.cons (no_v1194025499162) (.cons (no_v1175311185722) (.cons (no_v1194437211962) (.cons (no_v1187156184938) (.cons (no_v1207322112986) (.cons (no_v1194025277978) (.cons (no_v1175311184858) (.cons (no_v1194437211098) (.cons (no_v1187156162410) (.cons (no_v1207322107354) (.cons (no_v1194023836186) (.cons (no_v1175311179226) (.cons (no_v1194437205466) (.cons (no_v1187157654762) (.cons (no_v1207322480442) (.cons (no_v1194119346714) (.cons (no_v1175311552314) (.cons (no_v1170126120474) (.cons (no_v1194437578554) (.cons (no_v1187157651306) (.cons (no_v1207322479578) (.cons (no_v1194119125530) (.cons (no_v1175311551450) (.cons (no_v1170122581530) (.cons (no_v1194437577690) .nil)))))))))))))))))))))))))))))))))))))

theorem five370 : BadRow (bucket false 4 2 4 [1,3,0,0]) := by
  have h : bucket false 4 2 4 [1,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five371 : BadRow (bucket true 4 2 4 [1,3,0,0]) := by
  have h : bucket true 4 2 4 [1,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five372 : BadRow (bucket false 4 2 4 [2,0,0,2]) := by
  have h : bucket false 4 2 4 [2,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five373 : BadRow (bucket true 4 2 4 [2,0,0,2]) := by
  have h : bucket true 4 2 4 [2,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1450090325858 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1)))))))) (.lam (.var 0)))
private theorem no_v1450090325858 : ¬ MinimalInterpreter v1450090325858 :=
  chain_cut false 2 (by decide)

private def v1401803630198 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1))))))))
private theorem no_v1401803630198 : ¬ MinimalInterpreter v1401803630198 :=
  chain_cut false 2 (by decide)

private def v1398582404726 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1))))))))
private theorem no_v1398582404726 : ¬ MinimalInterpreter v1398582404726 :=
  chain_cut false 2 (by decide)

private def v1398179751542 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1))))))))
private theorem no_v1398179751542 : ¬ MinimalInterpreter v1398179751542 :=
  chain_cut true 5 (by decide)

private def v1450090322786 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1))))))) (.lam (.var 0)))
private theorem no_v1450090322786 : ¬ MinimalInterpreter v1450090322786 :=
  chain_cut false 2 (by decide)

private def v1401803630006 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1)))))))
private theorem no_v1401803630006 : ¬ MinimalInterpreter v1401803630006 :=
  chain_cut false 2 (by decide)

private def v1398582404534 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1)))))))
private theorem no_v1398582404534 : ¬ MinimalInterpreter v1398582404534 :=
  chain_cut false 2 (by decide)

private def v1398179751350 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1)))))))
private theorem no_v1398179751350 : ¬ MinimalInterpreter v1398179751350 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1450089883490 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1))))))) (.lam (.var 0)))
private theorem no_v1450089883490 : ¬ MinimalInterpreter v1450089883490 :=
  chain_cut false 2 (by decide)

private def v1401803602550 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1)))))))
private theorem no_v1401803602550 : ¬ MinimalInterpreter v1401803602550 :=
  chain_cut false 2 (by decide)

private def v1398582377078 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1)))))))
private theorem no_v1398582377078 : ¬ MinimalInterpreter v1398582377078 :=
  chain_cut false 2 (by decide)

private def v1398179723894 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1)))))))
private theorem no_v1398179723894 : ¬ MinimalInterpreter v1398179723894 :=
  chain_cut true 5 (by decide)

private def v1450089880418 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.var 0)))
private theorem no_v1450089880418 : ¬ MinimalInterpreter v1450089880418 :=
  chain_cut false 2 (by decide)

private def v1401803602358 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1))))))
private theorem no_v1401803602358 : ¬ MinimalInterpreter v1401803602358 :=
  chain_cut false 2 (by decide)

private def v1398582376886 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1))))))
private theorem no_v1398582376886 : ¬ MinimalInterpreter v1398582376886 :=
  chain_cut false 2 (by decide)

private def v1398179723702 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1))))))
private theorem no_v1398179723702 : ¬ MinimalInterpreter v1398179723702 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1450089769826 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1)))))) (.lam (.var 0)))
private theorem no_v1450089769826 : ¬ MinimalInterpreter v1450089769826 :=
  chain_cut false 2 (by decide)

private def v1401803595446 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1))))))
private theorem no_v1401803595446 : ¬ MinimalInterpreter v1401803595446 :=
  chain_cut false 2 (by decide)

private def v1398582369974 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1))))))
private theorem no_v1398582369974 : ¬ MinimalInterpreter v1398582369974 :=
  chain_cut false 2 (by decide)

private def v1398179716790 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1))))))
private theorem no_v1398179716790 : ¬ MinimalInterpreter v1398179716790 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem five374 : BadRow (bucket false 4 2 4 [2,0,1,1]) := by
  have h : bucket false 4 2 4 [2,0,1,1] = [v1450090325858,v1401803630198,v1398582404726,v1398179751542,v1450090322786,v1401803630006,v1398582404534,v1398179751350,v1450089883490,v1401803602550,v1398582377078,v1398179723894,v1450089880418,v1401803602358,v1398582376886,v1398179723702,v1450089769826,v1401803595446,v1398582369974,v1398179716790] := by decide +kernel
  rw [h]
  exact (.cons (no_v1450090325858) (.cons (no_v1401803630198) (.cons (no_v1398582404726) (.cons (no_v1398179751542) (.cons (no_v1450090322786) (.cons (no_v1401803630006) (.cons (no_v1398582404534) (.cons (no_v1398179751350) (.cons (no_v1450089883490) (.cons (no_v1401803602550) (.cons (no_v1398582377078) (.cons (no_v1398179723894) (.cons (no_v1450089880418) (.cons (no_v1401803602358) (.cons (no_v1398582376886) (.cons (no_v1398179723702) (.cons (no_v1450089769826) (.cons (no_v1401803595446) (.cons (no_v1398582369974) (.cons (no_v1398179716790) .nil))))))))))))))))))))

private def v1187156302298 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1)))))))) (.var 0)))
private theorem no_v1187156302298 : ¬ MinimalInterpreter v1187156302298 :=
  chain_cut false 2 (by decide)

private def v1207322142326 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1))))))))))
private theorem no_v1207322142326 : ¬ MinimalInterpreter v1207322142326 :=
  chain_cut true 2 (by decide)

private def v1194032789018 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194032789018 : ¬ MinimalInterpreter v1194032789018 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311214198 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1))))))))))
private theorem no_v1175311214198 : ¬ MinimalInterpreter v1175311214198 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437240438 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1)))))))))
private theorem no_v1194437240438 : ¬ MinimalInterpreter v1194437240438 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187156301530 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1))))))) (.var 0)))
private theorem no_v1187156301530 : ¬ MinimalInterpreter v1187156301530 :=
  chain_cut false 2 (by decide)

private def v1207322142134 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1)))))))))
private theorem no_v1207322142134 : ¬ MinimalInterpreter v1207322142134 :=
  chain_cut true 2 (by decide)

private def v1194032739866 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194032739866 : ¬ MinimalInterpreter v1194032739866 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311214006 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1)))))))))
private theorem no_v1175311214006 : ¬ MinimalInterpreter v1175311214006 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437240246 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1))))))))
private theorem no_v1194437240246 : ¬ MinimalInterpreter v1194437240246 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187156191706 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1))))))) (.var 0)))
private theorem no_v1187156191706 : ¬ MinimalInterpreter v1187156191706 :=
  chain_cut false 2 (by decide)

private def v1207322114678 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1)))))))))
private theorem no_v1207322114678 : ¬ MinimalInterpreter v1207322114678 :=
  chain_cut true 2 (by decide)

private def v1194025711130 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194025711130 : ¬ MinimalInterpreter v1194025711130 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311186550 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1)))))))))
private theorem no_v1175311186550 : ¬ MinimalInterpreter v1175311186550 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437212790 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1))))))))
private theorem no_v1194437212790 : ¬ MinimalInterpreter v1194437212790 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187156190938 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1)))))) (.var 0)))
private theorem no_v1187156190938 : ¬ MinimalInterpreter v1187156190938 :=
  chain_cut false 2 (by decide)

private def v1207322114486 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1))))))))
private theorem no_v1207322114486 : ¬ MinimalInterpreter v1207322114486 :=
  chain_cut true 2 (by decide)

private def v1194025661978 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194025661978 : ¬ MinimalInterpreter v1194025661978 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311186358 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1))))))))
private theorem no_v1175311186358 : ¬ MinimalInterpreter v1175311186358 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437212598 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1)))))))
private theorem no_v1194437212598 : ¬ MinimalInterpreter v1194437212598 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187156163290 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1)))))) (.var 0)))
private theorem no_v1187156163290 : ¬ MinimalInterpreter v1187156163290 :=
  chain_cut false 2 (by decide)

private def v1207322107574 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1))))))))
private theorem no_v1207322107574 : ¬ MinimalInterpreter v1207322107574 :=
  chain_cut true 2 (by decide)

private def v1194023892506 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194023892506 : ¬ MinimalInterpreter v1194023892506 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311179446 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1))))))))
private theorem no_v1175311179446 : ¬ MinimalInterpreter v1175311179446 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437205686 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1)))))))
private theorem no_v1194437205686 : ¬ MinimalInterpreter v1194437205686 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem five375 : BadRow (bucket true 4 2 4 [2,0,1,1]) := by
  have h : bucket true 4 2 4 [2,0,1,1] = [v1187156302298,v1207322142326,v1194032789018,v1175311214198,v1194437240438,v1187156301530,v1207322142134,v1194032739866,v1175311214006,v1194437240246,v1187156191706,v1207322114678,v1194025711130,v1175311186550,v1194437212790,v1187156190938,v1207322114486,v1194025661978,v1175311186358,v1194437212598,v1187156163290,v1207322107574,v1194023892506,v1175311179446,v1194437205686] := by decide +kernel
  rw [h]
  exact (.cons (no_v1187156302298) (.cons (no_v1207322142326) (.cons (no_v1194032789018) (.cons (no_v1175311214198) (.cons (no_v1194437240438) (.cons (no_v1187156301530) (.cons (no_v1207322142134) (.cons (no_v1194032739866) (.cons (no_v1175311214006) (.cons (no_v1194437240246) (.cons (no_v1187156191706) (.cons (no_v1207322114678) (.cons (no_v1194025711130) (.cons (no_v1175311186550) (.cons (no_v1194437212790) (.cons (no_v1187156190938) (.cons (no_v1207322114486) (.cons (no_v1194025661978) (.cons (no_v1175311186358) (.cons (no_v1194437212598) (.cons (no_v1187156163290) (.cons (no_v1207322107574) (.cons (no_v1194023892506) (.cons (no_v1175311179446) (.cons (no_v1194437205686) .nil)))))))))))))))))))))))))

end Blc.SelfintSingleObject.Rows40
