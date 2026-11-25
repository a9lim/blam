import Blc.SelfintTwoPending

namespace Blc.SelfintSingleObject.Rows37
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v35349646970 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v35349646970 : ¬ MinimalInterpreter v35349646970 :=
  chain_cut false 2 (by decide)

private def v35349646266 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v35349646266 : ¬ MinimalInterpreter v35349646266 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v35349640826 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v35349640826 : ¬ MinimalInterpreter v35349640826 :=
  chain_cut false 2 (by decide)

private def v35349640122 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v35349640122 : ¬ MinimalInterpreter v35349640122 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v35349638586 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v35349638586 : ¬ MinimalInterpreter v35349638586 :=
  chain_cut false 2 (by decide)

private def v35349794426 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v35349794426 : ¬ MinimalInterpreter v35349794426 :=
  chain_cut false 2 (by decide)

private def v35349793722 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v35349793722 : ¬ MinimalInterpreter v35349793722 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v35350384250 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v35350384250 : ¬ MinimalInterpreter v35350384250 :=
  chain_cut false 6 (by decide)

private def v35350383546 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v35350383546 : ¬ MinimalInterpreter v35350383546 :=
  w_cut false 0 (by decide)

theorem row168 : BadRow (row ⟨1,2,2,2,4,3⟩ [1,1] [0,1,2,0]) := by
  have h : row ⟨1,2,2,2,4,3⟩ [1,1] [0,1,2,0] = [v35349646970,v35349646266,v35349640826,v35349640122,v35349638586,v35349794426,v35349793722,v35350384250,v35350383546] := by decide
  rw [h]
  exact (.cons (no_v35349646970) (.cons (no_v35349646266) (.cons (no_v35349640826) (.cons (no_v35349640122) (.cons (no_v35349638586) (.cons (no_v35349794426) (.cons (no_v35349793722) (.cons (no_v35350384250) (.cons (no_v35350383546) .nil)))))))))

private def v35349647158 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v35349647158 : ¬ MinimalInterpreter v35349647158 :=
  chain_cut false 2 (by decide)

private def v35349646294 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v35349646294 : ¬ MinimalInterpreter v35349646294 :=
  chain_cut false 2 (by decide)

private def v35349641014 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v35349641014 : ¬ MinimalInterpreter v35349641014 :=
  chain_cut false 2 (by decide)

private def v35349640150 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v35349640150 : ¬ MinimalInterpreter v35349640150 :=
  chain_cut false 2 (by decide)

private def v35349638614 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v35349638614 : ¬ MinimalInterpreter v35349638614 :=
  chain_cut false 2 (by decide)

private def v35349794614 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v35349794614 : ¬ MinimalInterpreter v35349794614 :=
  chain_cut false 2 (by decide)

private def v35349793750 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v35349793750 : ¬ MinimalInterpreter v35349793750 :=
  chain_cut false 2 (by decide)

private def v35350384438 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v35350384438 : ¬ MinimalInterpreter v35350384438 :=
  dead_cut (b := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))) 1 (by decide) (by decide)

private def v35350383574 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v35350383574 : ¬ MinimalInterpreter v35350383574 :=
  chain_cut false 5 (by decide)

theorem row169 : BadRow (row ⟨1,2,2,2,4,3⟩ [1,1] [0,2,0,1]) := by
  have h : row ⟨1,2,2,2,4,3⟩ [1,1] [0,2,0,1] = [v35349647158,v35349646294,v35349641014,v35349640150,v35349638614,v35349794614,v35349793750,v35350384438,v35350383574] := by decide
  rw [h]
  exact (.cons (no_v35349647158) (.cons (no_v35349646294) (.cons (no_v35349641014) (.cons (no_v35349640150) (.cons (no_v35349638614) (.cons (no_v35349794614) (.cons (no_v35349793750) (.cons (no_v35350384438) (.cons (no_v35350383574) .nil)))))))))

private def v35349647162 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v35349647162 : ¬ MinimalInterpreter v35349647162 :=
  chain_cut false 2 (by decide)

private def v35349646298 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v35349646298 : ¬ MinimalInterpreter v35349646298 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v35349641018 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v35349641018 : ¬ MinimalInterpreter v35349641018 :=
  chain_cut false 2 (by decide)

private def v35349640154 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v35349640154 : ¬ MinimalInterpreter v35349640154 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v35349638618 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v35349638618 : ¬ MinimalInterpreter v35349638618 :=
  chain_cut false 2 (by decide)

private def v35349794618 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v35349794618 : ¬ MinimalInterpreter v35349794618 :=
  chain_cut false 2 (by decide)

private def v35349793754 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v35349793754 : ¬ MinimalInterpreter v35349793754 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v35350384442 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v35350384442 : ¬ MinimalInterpreter v35350384442 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v35350383578 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v35350383578 : ¬ MinimalInterpreter v35350383578 :=
  w_cut false 0 (by decide)

theorem row170 : BadRow (row ⟨1,2,2,2,4,3⟩ [1,1] [0,2,1,0]) := by
  have h : row ⟨1,2,2,2,4,3⟩ [1,1] [0,2,1,0] = [v35349647162,v35349646298,v35349641018,v35349640154,v35349638618,v35349794618,v35349793754,v35350384442,v35350383578] := by decide
  rw [h]
  exact (.cons (no_v35349647162) (.cons (no_v35349646298) (.cons (no_v35349641018) (.cons (no_v35349640154) (.cons (no_v35349638618) (.cons (no_v35349794618) (.cons (no_v35349793754) (.cons (no_v35350384442) (.cons (no_v35350383578) .nil)))))))))

private def v35349653102 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))))))
private theorem no_v35349653102 : ¬ MinimalInterpreter v35349653102 :=
  chain_cut false 2 (by decide)

private def v35349652910 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))))
private theorem no_v35349652910 : ¬ MinimalInterpreter v35349652910 :=
  chain_cut false 2 (by decide)

private def v35349641838 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))))))
private theorem no_v35349641838 : ¬ MinimalInterpreter v35349641838 :=
  chain_cut false 2 (by decide)

private def v35349641646 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))))
private theorem no_v35349641646 : ¬ MinimalInterpreter v35349641646 :=
  chain_cut false 2 (by decide)

private def v35349638830 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))))
private theorem no_v35349638830 : ¬ MinimalInterpreter v35349638830 :=
  chain_cut false 2 (by decide)

theorem row171 : BadRow (row ⟨1,2,2,2,4,3⟩ [1,1] [1,0,0,2]) := by
  have h : row ⟨1,2,2,2,4,3⟩ [1,1] [1,0,0,2] = [v35349653102,v35349652910,v35349641838,v35349641646,v35349638830] := by decide
  rw [h]
  exact (.cons (no_v35349653102) (.cons (no_v35349652910) (.cons (no_v35349641838) (.cons (no_v35349641646) (.cons (no_v35349638830) .nil)))))

theorem row172 : BadRow (row ⟨1,2,2,2,4,3⟩ [1,1] [1,0,1,1]) := by
  have h : row ⟨1,2,2,2,4,3⟩ [1,1] [1,0,1,1] = [] := by decide
  rw [h]
  exact .nil

private def v35349653114 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private theorem no_v35349653114 : ¬ MinimalInterpreter v35349653114 :=
  chain_cut false 2 (by decide)

private def v35349652922 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private theorem no_v35349652922 : ¬ MinimalInterpreter v35349652922 :=
  chain_cut false 2 (by decide)

private def v35349641850 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))
private theorem no_v35349641850 : ¬ MinimalInterpreter v35349641850 :=
  chain_cut false 2 (by decide)

private def v35349641658 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))))
private theorem no_v35349641658 : ¬ MinimalInterpreter v35349641658 :=
  chain_cut false 2 (by decide)

private def v35349638842 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))))
private theorem no_v35349638842 : ¬ MinimalInterpreter v35349638842 :=
  chain_cut false 2 (by decide)

theorem row173 : BadRow (row ⟨1,2,2,2,4,3⟩ [1,1] [1,0,2,0]) := by
  have h : row ⟨1,2,2,2,4,3⟩ [1,1] [1,0,2,0] = [v35349653114,v35349652922,v35349641850,v35349641658,v35349638842] := by decide
  rw [h]
  exact (.cons (no_v35349653114) (.cons (no_v35349652922) (.cons (no_v35349641850) (.cons (no_v35349641658) (.cons (no_v35349638842) .nil)))))

end Blc.SelfintSingleObject.Rows37
