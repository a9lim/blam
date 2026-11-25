import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402312867482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 3) (.var 0)))) (.app (.var 0) (.var 0)))))))
private theorem no_v1402312867482 : ¬ MinimalInterpreter v1402312867482 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 3) (.var 0)))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.app (.var 1) (.var 0)))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.lam (.app (.var 2) (.var 0))))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.lam (r := (.var 2)) (g := (.app (.var 1) (.var 0))) (.app (.var 3) (.var 0)) (.var 2) (by decide) (by decide))) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0)) (.var 1) (by decide) (by decide))) (by decide) (by decide)) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402312867434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 3) (.app (.var 0) (.var 0))))) (.var 0))))))
private theorem no_v1402312867434 : ¬ MinimalInterpreter v1402312867434 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 3) (.app (.var 0) (.var 0))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.lam (r := (.var 2)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 3) (.app (.var 0) (.var 0))) (.var 2) (by decide) (by decide))) (.var 0)) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1) (by decide) (by decide))) (by decide) (by decide)) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402312863658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))) (.var 0))))))
private theorem no_v1402312863658 : ¬ MinimalInterpreter v1402312863658 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 0))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.lam (r := (.var 2)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 3) (.var 0)) (.var 0)) (.var 2) (by decide) (by decide))) (.var 0)) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1) (by decide) (by decide))) (by decide) (by decide)) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402312527786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.app (.var 3) (.var 0)))) (.var 0)) (.var 0))))))
private theorem no_v1402312527786 : ¬ MinimalInterpreter v1402312527786 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.app (.var 3) (.var 0)))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.app (.var 1) (.var 0)))) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.app (.var 2) (.var 0))))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.lam (r := (.var 2)) (g := (.app (.var 1) (.var 0))) (.app (.var 3) (.var 0)) (.var 2) (by decide) (by decide))) (.var 0)) (.var 0)) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0)) (.var 1) (by decide) (by decide))) (by decide) (by decide)) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

theorem five752 : BadRow (bucket false 4 3 5 [1,3,0,0,0]) := by
  have h : bucket false 4 3 5 [1,3,0,0,0] = [v1402312867482,v1402312867434,v1402312863658,v1402312527786] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402312867482) (.cons (no_v1402312867434) (.cons (no_v1402312863658) (.cons (no_v1402312527786) .nil))))

theorem five753 : BadRow (bucket true 4 3 5 [1,3,0,0,0]) := by
  have h : bucket true 4 3 5 [1,3,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402314786414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 2))))))))))
private theorem no_v1402314786414 : ¬ MinimalInterpreter v1402314786414 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314786222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))))))
private theorem no_v1402314786222 : ¬ MinimalInterpreter v1402314786222 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314791022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 2))))))))))
private theorem no_v1402314791022 : ¬ MinimalInterpreter v1402314791022 :=
  chain_cut false 2 (by decide)

private def v1402314778734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))))))))
private theorem no_v1402314778734 : ¬ MinimalInterpreter v1402314778734 :=
  chain_cut false 2 (by decide)

private def v1402313016942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.var 2)))))))))
private theorem no_v1402313016942 : ¬ MinimalInterpreter v1402313016942 :=
  chain_cut false 4 (by decide)

private def v1402313016750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))))
private theorem no_v1402313016750 : ¬ MinimalInterpreter v1402313016750 :=
  chain_cut false 4 (by decide)

private def v1402313021550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 2)))))))))
private theorem no_v1402313021550 : ¬ MinimalInterpreter v1402313021550 :=
  chain_cut false 2 (by decide)

private def v1402313009262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 2))))))))
private theorem no_v1402313009262 : ¬ MinimalInterpreter v1402313009262 :=
  chain_cut false 2 (by decide)

private def v1402312566894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 2))))))))
private theorem no_v1402312566894 : ¬ MinimalInterpreter v1402312566894 :=
  chain_cut false 2 (by decide)

theorem five754 : BadRow (bucket false 4 3 5 [2,0,0,0,2]) := by
  have h : bucket false 4 3 5 [2,0,0,0,2] = [v1402314786414,v1402314786222,v1402314791022,v1402314778734,v1402313016942,v1402313016750,v1402313021550,v1402313009262,v1402312566894] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314786414) (.cons (no_v1402314786222) (.cons (no_v1402314791022) (.cons (no_v1402314778734) (.cons (no_v1402313016942) (.cons (no_v1402313016750) (.cons (no_v1402313021550) (.cons (no_v1402313009262) (.cons (no_v1402312566894) .nil)))))))))

theorem five755 : BadRow (bucket true 4 3 5 [2,0,0,0,2]) := by
  have h : bucket true 4 3 5 [2,0,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402314777206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 1))))))))
private theorem no_v1402314777206 : ¬ MinimalInterpreter v1402314777206 :=
  chain_cut false 2 (by decide)

private def v1402314777014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)))))))
private theorem no_v1402314777014 : ¬ MinimalInterpreter v1402314777014 :=
  chain_cut false 2 (by decide)

private def v1402314774710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 1)))))))
private theorem no_v1402314774710 : ¬ MinimalInterpreter v1402314774710 :=
  chain_cut false 2 (by decide)

private def v1402312992374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.app (.var 1) (.var 1))))))))
private theorem no_v1402312992374 : ¬ MinimalInterpreter v1402312992374 :=
  chain_cut false 2 (by decide)

private def v1402312992182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 1)))))))
private theorem no_v1402312992182 : ¬ MinimalInterpreter v1402312992182 :=
  chain_cut false 2 (by decide)

private def v1402313007734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.app (.var 1) (.var 1)))))))
private theorem no_v1402313007734 : ¬ MinimalInterpreter v1402313007734 :=
  chain_cut false 2 (by decide)

private def v1402312565366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.var 1)))))))
private theorem no_v1402312565366 : ¬ MinimalInterpreter v1402312565366 :=
  chain_cut false 2 (by decide)

private def v1402312559222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.app (.var 1) (.var 1)))))))
private theorem no_v1402312559222 : ¬ MinimalInterpreter v1402312559222 :=
  chain_cut false 2 (by decide)

private def v1402312989110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.var 1))))))
private theorem no_v1402312989110 : ¬ MinimalInterpreter v1402312989110 :=
  chain_cut false 7 (by decide)

private def v1402312988342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))))))
private theorem no_v1402312988342 : ¬ MinimalInterpreter v1402312988342 :=
  w_cut false 0 (by decide)

private def v1402313007542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 1))))))
private theorem no_v1402313007542 : ¬ MinimalInterpreter v1402313007542 :=
  chain_cut false 2 (by decide)

private def v1402313005238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.var 1))))))
private theorem no_v1402313005238 : ¬ MinimalInterpreter v1402313005238 :=
  chain_cut false 2 (by decide)

private def v1402312565174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 0) (.var 1)))) (.var 1))))))
private theorem no_v1402312565174 : ¬ MinimalInterpreter v1402312565174 :=
  chain_cut false 2 (by decide)

private def v1402312559030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.var 1))) (.var 1))))))
private theorem no_v1402312559030 : ¬ MinimalInterpreter v1402312559030 :=
  chain_cut false 2 (by decide)

private def v1402312562870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 1))))))
private theorem no_v1402312562870 : ¬ MinimalInterpreter v1402312562870 :=
  chain_cut false 2 (by decide)

private def v1402312452278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.var 1)) (.var 1))))))
private theorem no_v1402312452278 : ¬ MinimalInterpreter v1402312452278 :=
  chain_cut false 2 (by decide)

private def v1402312450742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.var 1)) (.var 1))))))
private theorem no_v1402312450742 : ¬ MinimalInterpreter v1402312450742 :=
  chain_cut false 2 (by decide)

theorem five756 : BadRow (bucket false 4 3 5 [2,0,0,1,1]) := by
  have h : bucket false 4 3 5 [2,0,0,1,1] = [v1402314777206,v1402314777014,v1402314774710,v1402312992374,v1402312992182,v1402313007734,v1402312565366,v1402312559222,v1402312989110,v1402312988342,v1402313007542,v1402313005238,v1402312565174,v1402312559030,v1402312562870,v1402312452278,v1402312450742] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314777206) (.cons (no_v1402314777014) (.cons (no_v1402314774710) (.cons (no_v1402312992374) (.cons (no_v1402312992182) (.cons (no_v1402313007734) (.cons (no_v1402312565366) (.cons (no_v1402312559222) (.cons (no_v1402312989110) (.cons (no_v1402312988342) (.cons (no_v1402313007542) (.cons (no_v1402313005238) (.cons (no_v1402312565174) (.cons (no_v1402312559030) (.cons (no_v1402312562870) (.cons (no_v1402312452278) (.cons (no_v1402312450742) .nil)))))))))))))))))

theorem five757 : BadRow (bucket true 4 3 5 [2,0,0,1,1]) := by
  have h : bucket true 4 3 5 [2,0,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402314786426 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 0))))))))))
private theorem no_v1402314786426 : ¬ MinimalInterpreter v1402314786426 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314786234 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))))))))
private theorem no_v1402314786234 : ¬ MinimalInterpreter v1402314786234 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314791034 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.var 0))))))))))
private theorem no_v1402314791034 : ¬ MinimalInterpreter v1402314791034 :=
  chain_cut false 2 (by decide)

private def v1402314778746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))))))))
private theorem no_v1402314778746 : ¬ MinimalInterpreter v1402314778746 :=
  chain_cut false 2 (by decide)

private def v1402314777018 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 0)))))))
private theorem no_v1402314777018 : ¬ MinimalInterpreter v1402314777018 :=
  chain_cut false 2 (by decide)

private def v1402313016954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v1402313016954 : ¬ MinimalInterpreter v1402313016954 :=
  chain_cut false 4 (by decide)

private def v1402313016762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v1402313016762 : ¬ MinimalInterpreter v1402313016762 :=
  chain_cut false 4 (by decide)

private def v1402313021562 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.lam (.app (.var 2) (.var 0)))))))))
private theorem no_v1402313021562 : ¬ MinimalInterpreter v1402313021562 :=
  chain_cut false 2 (by decide)

private def v1402313009274 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.var 0))))))))
private theorem no_v1402313009274 : ¬ MinimalInterpreter v1402313009274 :=
  chain_cut false 2 (by decide)

private def v1402312566906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.lam (.app (.var 2) (.var 0))))))))
private theorem no_v1402312566906 : ¬ MinimalInterpreter v1402312566906 :=
  chain_cut false 2 (by decide)

private def v1402312989114 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 0) (.app (.var 0) (.var 2))))) (.var 0))))))
private theorem no_v1402312989114 : ¬ MinimalInterpreter v1402312989114 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 0) (.app (.var 0) (.var 2))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.app (.var 0) (.app (.var 0) (.var 2))))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.lam (r := (.var 1)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1) (by decide) (by decide))) (.var 0)) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312988346 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0))))))
private theorem no_v1402312988346 : ¬ MinimalInterpreter v1402312988346 :=
  w_cut false 0 (by decide)

private def v1402313007546 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.app (.var 0) (.var 2))))) (.var 0))))))
private theorem no_v1402313007546 : ¬ MinimalInterpreter v1402313007546 :=
  chain_cut false 2 (by decide)

private def v1402312565178 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 0) (.var 2)))) (.var 0))))))
private theorem no_v1402312565178 : ¬ MinimalInterpreter v1402312565178 :=
  chain_cut false 2 (by decide)

theorem five758 : BadRow (bucket false 4 3 5 [2,0,0,2,0]) := by
  have h : bucket false 4 3 5 [2,0,0,2,0] = [v1402314786426,v1402314786234,v1402314791034,v1402314778746,v1402314777018,v1402313016954,v1402313016762,v1402313021562,v1402313009274,v1402312566906,v1402312989114,v1402312988346,v1402313007546,v1402312565178] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314786426) (.cons (no_v1402314786234) (.cons (no_v1402314791034) (.cons (no_v1402314778746) (.cons (no_v1402314777018) (.cons (no_v1402313016954) (.cons (no_v1402313016762) (.cons (no_v1402313021562) (.cons (no_v1402313009274) (.cons (no_v1402312566906) (.cons (no_v1402312989114) (.cons (no_v1402312988346) (.cons (no_v1402313007546) (.cons (no_v1402312565178) .nil))))))))))))))

theorem five759 : BadRow (bucket true 4 3 5 [2,0,0,2,0]) := by
  have h : bucket true 4 3 5 [2,0,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
