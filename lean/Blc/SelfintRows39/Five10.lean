import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def atom2156442 : Term := (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))
private def v725045115298 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))) (.lam (.var 0)))
private theorem no_v725045115298 : ¬ MinimalInterpreter v725045115298 :=
  chain_cut false 2 (by decide)
private def v700901812122 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v700901812122 : ¬ MinimalInterpreter v700901812122 :=
  chain_cut false 2 (by decide)
private def v699291199386 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v699291199386 : ¬ MinimalInterpreter v699291199386 :=
  chain_cut false 2 (by decide)
private def v699089872794 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v699089872794 : ¬ MinimalInterpreter v699089872794 :=
  chain_cut false 3 (by decide)
theorem atom2156442false : BadRow (sources false 2 4 atom2156442) := by
  have h : sources false 2 4 atom2156442 = [v725045115298,v700901812122,v699291199386,v699089872794] := by decide +kernel
  rw [h]
  exact (.cons (no_v725045115298) (.cons (no_v700901812122) (.cons (no_v699291199386) (.cons (no_v699089872794) .nil))))

private def v593578139242 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))) (.var 0)))
private theorem no_v593578139242 : ¬ MinimalInterpreter v593578139242 :=
  chain_cut false 2 (by decide)
private def v603661068186 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))))
private theorem no_v603661068186 : ¬ MinimalInterpreter v603661068186 :=
  chain_cut true 2 (by decide)
private def v597015632410 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597015632410 : ¬ MinimalInterpreter v597015632410 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655604122 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))))
private theorem no_v587655604122 : ¬ MinimalInterpreter v587655604122 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218617242 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v597218617242 : ¬ MinimalInterpreter v597218617242 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2156442true : BadRow (sources true 2 4 atom2156442) := by
  have h : sources true 2 4 atom2156442 = [v593578139242,v603661068186,v597015632410,v587655604122,v597218617242] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578139242) (.cons (no_v603661068186) (.cons (no_v597015632410) (.cons (no_v587655604122) (.cons (no_v597218617242) .nil)))))

private def atom2156010 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))
private def v725045108386 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))) (.lam (.var 0)))
private theorem no_v725045108386 : ¬ MinimalInterpreter v725045108386 :=
  chain_cut false 2 (by decide)
private def v700901811690 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v700901811690 : ¬ MinimalInterpreter v700901811690 :=
  chain_cut false 2 (by decide)
private def v699291198954 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v699291198954 : ¬ MinimalInterpreter v699291198954 :=
  chain_cut false 2 (by decide)
private def v699089872362 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v699089872362 : ¬ MinimalInterpreter v699089872362 :=
  chain_cut false 3 (by decide)
theorem atom2156010false : BadRow (sources false 2 4 atom2156010) := by
  have h : sources false 2 4 atom2156010 = [v725045108386,v700901811690,v699291198954,v699089872362] := by decide +kernel
  rw [h]
  exact (.cons (no_v725045108386) (.cons (no_v700901811690) (.cons (no_v699291198954) (.cons (no_v699089872362) .nil))))

private def v593578137514 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))) (.var 0)))
private theorem no_v593578137514 : ¬ MinimalInterpreter v593578137514 :=
  chain_cut false 2 (by decide)
private def v603661067754 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))))
private theorem no_v603661067754 : ¬ MinimalInterpreter v603661067754 :=
  chain_cut true 2 (by decide)
private def v597015521818 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597015521818 : ¬ MinimalInterpreter v597015521818 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655603690 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))))
private theorem no_v587655603690 : ¬ MinimalInterpreter v587655603690 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218616810 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v597218616810 : ¬ MinimalInterpreter v597218616810 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2156010true : BadRow (sources true 2 4 atom2156010) := by
  have h : sources true 2 4 atom2156010 = [v593578137514,v603661067754,v597015521818,v587655603690,v597218616810] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578137514) (.cons (no_v603661067754) (.cons (no_v597015521818) (.cons (no_v587655603690) (.cons (no_v597218616810) .nil)))))

private def atom2145178 : Term := (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))
private def v725044935074 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) (.lam (.var 0)))
private theorem no_v725044935074 : ¬ MinimalInterpreter v725044935074 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) (.lam (.var 0))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.var 0))))
private def v700901800858 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v700901800858 : ¬ MinimalInterpreter v700901800858 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v699291188122 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v699291188122 : ¬ MinimalInterpreter v699291188122 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v699089861530 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v699089861530 : ¬ MinimalInterpreter v699089861530 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom2145178false : BadRow (sources false 2 4 atom2145178) := by
  have h : sources false 2 4 atom2145178 = [v725044935074,v700901800858,v699291188122,v699089861530] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044935074) (.cons (no_v700901800858) (.cons (no_v699291188122) (.cons (no_v699089861530) .nil))))

private def v593578094186 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) (.var 0)))
private theorem no_v593578094186 : ¬ MinimalInterpreter v593578094186 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) (.var 0)) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0)))
private def v603661056922 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))))
private theorem no_v603661056922 : ¬ MinimalInterpreter v603661056922 :=
  so_cut false 0 (show SO (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))) from (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v597012748826 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597012748826 : ¬ MinimalInterpreter v597012748826 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v587655592858 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))))
private theorem no_v587655592858 : ¬ MinimalInterpreter v587655592858 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v597218605978 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v597218605978 : ¬ MinimalInterpreter v597218605978 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom2145178true : BadRow (sources true 2 4 atom2145178) := by
  have h : sources true 2 4 atom2145178 = [v593578094186,v603661056922,v597012748826,v587655592858,v597218605978] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578094186) (.cons (no_v603661056922) (.cons (no_v597012748826) (.cons (no_v587655592858) (.cons (no_v597218605978) .nil)))))

private def atom2144746 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))
private def v725044928162 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))) (.lam (.var 0)))
private theorem no_v725044928162 : ¬ MinimalInterpreter v725044928162 :=
  chain_cut false 2 (by decide)
private def v700901800426 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v700901800426 : ¬ MinimalInterpreter v700901800426 :=
  chain_cut false 2 (by decide)
private def v699291187690 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v699291187690 : ¬ MinimalInterpreter v699291187690 :=
  chain_cut false 2 (by decide)
private def v699089861098 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v699089861098 : ¬ MinimalInterpreter v699089861098 :=
  chain_cut false 3 (by decide)
theorem atom2144746false : BadRow (sources false 2 4 atom2144746) := by
  have h : sources false 2 4 atom2144746 = [v725044928162,v700901800426,v699291187690,v699089861098] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044928162) (.cons (no_v700901800426) (.cons (no_v699291187690) (.cons (no_v699089861098) .nil))))

private def v593578092458 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))) (.var 0)))
private theorem no_v593578092458 : ¬ MinimalInterpreter v593578092458 :=
  chain_cut false 2 (by decide)
private def v603661056490 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))))
private theorem no_v603661056490 : ¬ MinimalInterpreter v603661056490 :=
  chain_cut true 2 (by decide)
private def v597012638234 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597012638234 : ¬ MinimalInterpreter v597012638234 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655592426 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))))
private theorem no_v587655592426 : ¬ MinimalInterpreter v587655592426 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218605546 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v597218605546 : ¬ MinimalInterpreter v597218605546 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2144746true : BadRow (sources true 2 4 atom2144746) := by
  have h : sources true 2 4 atom2144746 = [v593578092458,v603661056490,v597012638234,v587655592426,v597218605546] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578092458) (.cons (no_v603661056490) (.cons (no_v597012638234) (.cons (no_v587655592426) (.cons (no_v597218605546) .nil)))))

private def atom2141930 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))
private def v725044883106 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) (.lam (.var 0)))
private theorem no_v725044883106 : ¬ MinimalInterpreter v725044883106 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) (.lam (.var 0))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.var 0))))
private def v700901797610 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v700901797610 : ¬ MinimalInterpreter v700901797610 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v699291184874 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v699291184874 : ¬ MinimalInterpreter v699291184874 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v699089858282 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v699089858282 : ¬ MinimalInterpreter v699089858282 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom2141930false : BadRow (sources false 2 4 atom2141930) := by
  have h : sources false 2 4 atom2141930 = [v725044883106,v700901797610,v699291184874,v699089858282] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044883106) (.cons (no_v700901797610) (.cons (no_v699291184874) (.cons (no_v699089858282) .nil))))

private def v593578081194 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) (.var 0)))
private theorem no_v593578081194 : ¬ MinimalInterpreter v593578081194 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) (.var 0)) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0)))
private def v603661053674 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))))
private theorem no_v603661053674 : ¬ MinimalInterpreter v603661053674 :=
  so_cut false 0 (show SO (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))) from (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v597011917338 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597011917338 : ¬ MinimalInterpreter v597011917338 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v587655589610 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))))
private theorem no_v587655589610 : ¬ MinimalInterpreter v587655589610 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v597218602730 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v597218602730 : ¬ MinimalInterpreter v597218602730 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom2141930true : BadRow (sources true 2 4 atom2141930) := by
  have h : sources true 2 4 atom2141930 = [v593578081194,v603661053674,v597011917338,v587655589610,v597218602730] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578081194) (.cons (no_v603661053674) (.cons (no_v597011917338) (.cons (no_v587655589610) (.cons (no_v597218602730) .nil)))))

theorem atoms30 : Every (fun b => ∀ lit, BadRow (sources lit 2 4 b)) (atoms 2 4 [1,2,0,0]) := by
  have h : atoms 2 4 [1,2,0,0] = [atom2156442,atom2156010,atom2145178,atom2144746,atom2141930] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom2156442false | exact atom2156442true) (.cons (fun lit => by cases lit <;> first | exact atom2156010false | exact atom2156010true) (.cons (fun lit => by cases lit <;> first | exact atom2145178false | exact atom2145178true) (.cons (fun lit => by cases lit <;> first | exact atom2144746false | exact atom2144746true) (.cons (fun lit => by cases lit <;> first | exact atom2141930false | exact atom2141930true) .nil)))))
private def atom2159414 : Term := (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))
private def v725045162850 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))) (.lam (.var 0)))
private theorem no_v725045162850 : ¬ MinimalInterpreter v725045162850 :=
  chain_cut false 2 (by decide)
private def v700901815094 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v700901815094 : ¬ MinimalInterpreter v700901815094 :=
  chain_cut false 2 (by decide)
private def v699291202358 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v699291202358 : ¬ MinimalInterpreter v699291202358 :=
  chain_cut false 2 (by decide)
private def v699089875766 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v699089875766 : ¬ MinimalInterpreter v699089875766 :=
  chain_cut false 3 (by decide)
theorem atom2159414false : BadRow (sources false 2 4 atom2159414) := by
  have h : sources false 2 4 atom2159414 = [v725045162850,v700901815094,v699291202358,v699089875766] := by decide +kernel
  rw [h]
  exact (.cons (no_v725045162850) (.cons (no_v700901815094) (.cons (no_v699291202358) (.cons (no_v699089875766) .nil))))

private def v593578151130 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))) (.var 0)))
private theorem no_v593578151130 : ¬ MinimalInterpreter v593578151130 :=
  chain_cut false 2 (by decide)
private def v603661071158 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))))
private theorem no_v603661071158 : ¬ MinimalInterpreter v603661071158 :=
  chain_cut true 2 (by decide)
private def v597016393242 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597016393242 : ¬ MinimalInterpreter v597016393242 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655607094 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))))
private theorem no_v587655607094 : ¬ MinimalInterpreter v587655607094 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218620214 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v597218620214 : ¬ MinimalInterpreter v597218620214 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2159414true : BadRow (sources true 2 4 atom2159414) := by
  have h : sources true 2 4 atom2159414 = [v593578151130,v603661071158,v597016393242,v587655607094,v597218620214] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578151130) (.cons (no_v603661071158) (.cons (no_v597016393242) (.cons (no_v587655607094) (.cons (no_v597218620214) .nil)))))

private def atom2159318 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))
private def v725045161314 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.var 0)))
private theorem no_v725045161314 : ¬ MinimalInterpreter v725045161314 :=
  chain_cut false 2 (by decide)
private def v700901814998 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v700901814998 : ¬ MinimalInterpreter v700901814998 :=
  chain_cut false 2 (by decide)
private def v699291202262 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v699291202262 : ¬ MinimalInterpreter v699291202262 :=
  chain_cut false 2 (by decide)
private def v699089875670 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v699089875670 : ¬ MinimalInterpreter v699089875670 :=
  chain_cut false 3 (by decide)
theorem atom2159318false : BadRow (sources false 2 4 atom2159318) := by
  have h : sources false 2 4 atom2159318 = [v725045161314,v700901814998,v699291202262,v699089875670] := by decide +kernel
  rw [h]
  exact (.cons (no_v725045161314) (.cons (no_v700901814998) (.cons (no_v699291202262) (.cons (no_v699089875670) .nil))))

private def v593578150746 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.var 0)))
private theorem no_v593578150746 : ¬ MinimalInterpreter v593578150746 :=
  chain_cut false 2 (by decide)
private def v603661071062 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))))
private theorem no_v603661071062 : ¬ MinimalInterpreter v603661071062 :=
  chain_cut true 2 (by decide)
private def v597016368666 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597016368666 : ¬ MinimalInterpreter v597016368666 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655606998 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))))
private theorem no_v587655606998 : ¬ MinimalInterpreter v587655606998 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218620118 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v597218620118 : ¬ MinimalInterpreter v597218620118 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2159318true : BadRow (sources true 2 4 atom2159318) := by
  have h : sources true 2 4 atom2159318 = [v593578150746,v603661071062,v597016368666,v587655606998,v597218620118] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578150746) (.cons (no_v603661071062) (.cons (no_v597016368666) (.cons (no_v587655606998) (.cons (no_v597218620118) .nil)))))

private def atom2145590 : Term := (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))
private def v725044941666 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))) (.lam (.var 0)))
private theorem no_v725044941666 : ¬ MinimalInterpreter v725044941666 :=
  chain_cut false 2 (by decide)
private def v700901801270 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v700901801270 : ¬ MinimalInterpreter v700901801270 :=
  chain_cut false 2 (by decide)
private def v699291188534 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v699291188534 : ¬ MinimalInterpreter v699291188534 :=
  chain_cut false 2 (by decide)
private def v699089861942 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v699089861942 : ¬ MinimalInterpreter v699089861942 :=
  chain_cut false 3 (by decide)
theorem atom2145590false : BadRow (sources false 2 4 atom2145590) := by
  have h : sources false 2 4 atom2145590 = [v725044941666,v700901801270,v699291188534,v699089861942] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044941666) (.cons (no_v700901801270) (.cons (no_v699291188534) (.cons (no_v699089861942) .nil))))

private def v593578095834 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))) (.var 0)))
private theorem no_v593578095834 : ¬ MinimalInterpreter v593578095834 :=
  chain_cut false 2 (by decide)
private def v603661057334 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))))
private theorem no_v603661057334 : ¬ MinimalInterpreter v603661057334 :=
  chain_cut true 2 (by decide)
private def v597012854298 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597012854298 : ¬ MinimalInterpreter v597012854298 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655593270 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))))
private theorem no_v587655593270 : ¬ MinimalInterpreter v587655593270 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218606390 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v597218606390 : ¬ MinimalInterpreter v597218606390 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2145590true : BadRow (sources true 2 4 atom2145590) := by
  have h : sources true 2 4 atom2145590 = [v593578095834,v603661057334,v597012854298,v587655593270,v597218606390] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578095834) (.cons (no_v603661057334) (.cons (no_v597012854298) (.cons (no_v587655593270) (.cons (no_v597218606390) .nil)))))

private def atom2145494 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))
private def v725044940130 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))) (.lam (.var 0)))
private theorem no_v725044940130 : ¬ MinimalInterpreter v725044940130 :=
  chain_cut false 2 (by decide)
private def v700901801174 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v700901801174 : ¬ MinimalInterpreter v700901801174 :=
  chain_cut false 2 (by decide)
private def v699291188438 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v699291188438 : ¬ MinimalInterpreter v699291188438 :=
  chain_cut false 2 (by decide)
private def v699089861846 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v699089861846 : ¬ MinimalInterpreter v699089861846 :=
  chain_cut false 3 (by decide)
theorem atom2145494false : BadRow (sources false 2 4 atom2145494) := by
  have h : sources false 2 4 atom2145494 = [v725044940130,v700901801174,v699291188438,v699089861846] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044940130) (.cons (no_v700901801174) (.cons (no_v699291188438) (.cons (no_v699089861846) .nil))))

private def v593578095450 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))) (.var 0)))
private theorem no_v593578095450 : ¬ MinimalInterpreter v593578095450 :=
  chain_cut false 2 (by decide)
private def v603661057238 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))))
private theorem no_v603661057238 : ¬ MinimalInterpreter v603661057238 :=
  chain_cut true 2 (by decide)
private def v597012829722 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597012829722 : ¬ MinimalInterpreter v597012829722 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655593174 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))))
private theorem no_v587655593174 : ¬ MinimalInterpreter v587655593174 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218606294 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v597218606294 : ¬ MinimalInterpreter v597218606294 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2145494true : BadRow (sources true 2 4 atom2145494) := by
  have h : sources true 2 4 atom2145494 = [v593578095450,v603661057238,v597012829722,v587655593174,v597218606294] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578095450) (.cons (no_v603661057238) (.cons (no_v597012829722) (.cons (no_v587655593174) (.cons (no_v597218606294) .nil)))))

private def atom2142038 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))
private def v725044884834 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))) (.lam (.var 0)))
private theorem no_v725044884834 : ¬ MinimalInterpreter v725044884834 :=
  chain_cut false 2 (by decide)
private def v700901797718 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v700901797718 : ¬ MinimalInterpreter v700901797718 :=
  chain_cut false 2 (by decide)
private def v699291184982 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v699291184982 : ¬ MinimalInterpreter v699291184982 :=
  chain_cut false 2 (by decide)
private def v699089858390 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v699089858390 : ¬ MinimalInterpreter v699089858390 :=
  chain_cut false 3 (by decide)
theorem atom2142038false : BadRow (sources false 2 4 atom2142038) := by
  have h : sources false 2 4 atom2142038 = [v725044884834,v700901797718,v699291184982,v699089858390] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044884834) (.cons (no_v700901797718) (.cons (no_v699291184982) (.cons (no_v699089858390) .nil))))

private def v593578081626 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))) (.var 0)))
private theorem no_v593578081626 : ¬ MinimalInterpreter v593578081626 :=
  chain_cut false 2 (by decide)
private def v603661053782 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))))
private theorem no_v603661053782 : ¬ MinimalInterpreter v603661053782 :=
  chain_cut true 2 (by decide)
private def v597011944986 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597011944986 : ¬ MinimalInterpreter v597011944986 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655589718 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))))
private theorem no_v587655589718 : ¬ MinimalInterpreter v587655589718 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218602838 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v597218602838 : ¬ MinimalInterpreter v597218602838 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2142038true : BadRow (sources true 2 4 atom2142038) := by
  have h : sources true 2 4 atom2142038 = [v593578081626,v603661053782,v597011944986,v587655589718,v597218602838] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578081626) (.cons (no_v603661053782) (.cons (no_v597011944986) (.cons (no_v587655589718) (.cons (no_v597218602838) .nil)))))

theorem atoms31 : Every (fun b => ∀ lit, BadRow (sources lit 2 4 b)) (atoms 2 4 [2,0,0,1]) := by
  have h : atoms 2 4 [2,0,0,1] = [atom2159414,atom2159318,atom2145590,atom2145494,atom2142038] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom2159414false | exact atom2159414true) (.cons (fun lit => by cases lit <;> first | exact atom2159318false | exact atom2159318true) (.cons (fun lit => by cases lit <;> first | exact atom2145590false | exact atom2145590true) (.cons (fun lit => by cases lit <;> first | exact atom2145494false | exact atom2145494true) (.cons (fun lit => by cases lit <;> first | exact atom2142038false | exact atom2142038true) .nil)))))
private def atom2159418 : Term := (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))
private def v725045162914 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.lam (.var 0)))
private theorem no_v725045162914 : ¬ MinimalInterpreter v725045162914 :=
  chain_cut false 2 (by decide)
private def v700901815098 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v700901815098 : ¬ MinimalInterpreter v700901815098 :=
  chain_cut false 2 (by decide)
private def v699291202362 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v699291202362 : ¬ MinimalInterpreter v699291202362 :=
  chain_cut false 2 (by decide)
private def v699089875770 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v699089875770 : ¬ MinimalInterpreter v699089875770 :=
  chain_cut false 3 (by decide)
theorem atom2159418false : BadRow (sources false 2 4 atom2159418) := by
  have h : sources false 2 4 atom2159418 = [v725045162914,v700901815098,v699291202362,v699089875770] := by decide +kernel
  rw [h]
  exact (.cons (no_v725045162914) (.cons (no_v700901815098) (.cons (no_v699291202362) (.cons (no_v699089875770) .nil))))

private def v593578151146 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.var 0)))
private theorem no_v593578151146 : ¬ MinimalInterpreter v593578151146 :=
  chain_cut false 2 (by decide)
private def v603661071162 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))))
private theorem no_v603661071162 : ¬ MinimalInterpreter v603661071162 :=
  chain_cut true 2 (by decide)
private def v597016394266 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597016394266 : ¬ MinimalInterpreter v597016394266 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655607098 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))))
private theorem no_v587655607098 : ¬ MinimalInterpreter v587655607098 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218620218 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v597218620218 : ¬ MinimalInterpreter v597218620218 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2159418true : BadRow (sources true 2 4 atom2159418) := by
  have h : sources true 2 4 atom2159418 = [v593578151146,v603661071162,v597016394266,v587655607098,v597218620218] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578151146) (.cons (no_v603661071162) (.cons (no_v597016394266) (.cons (no_v587655607098) (.cons (no_v597218620218) .nil)))))

private def atom2159322 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))
private def v725045161378 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.var 0)))
private theorem no_v725045161378 : ¬ MinimalInterpreter v725045161378 :=
  chain_cut false 2 (by decide)
private def v700901815002 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v700901815002 : ¬ MinimalInterpreter v700901815002 :=
  chain_cut false 2 (by decide)
private def v699291202266 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v699291202266 : ¬ MinimalInterpreter v699291202266 :=
  chain_cut false 2 (by decide)
private def v699089875674 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v699089875674 : ¬ MinimalInterpreter v699089875674 :=
  chain_cut false 3 (by decide)
theorem atom2159322false : BadRow (sources false 2 4 atom2159322) := by
  have h : sources false 2 4 atom2159322 = [v725045161378,v700901815002,v699291202266,v699089875674] := by decide +kernel
  rw [h]
  exact (.cons (no_v725045161378) (.cons (no_v700901815002) (.cons (no_v699291202266) (.cons (no_v699089875674) .nil))))

private def v593578150762 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.var 0)))
private theorem no_v593578150762 : ¬ MinimalInterpreter v593578150762 :=
  chain_cut false 2 (by decide)
private def v603661071066 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))))
private theorem no_v603661071066 : ¬ MinimalInterpreter v603661071066 :=
  chain_cut true 2 (by decide)
private def v597016369690 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597016369690 : ¬ MinimalInterpreter v597016369690 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655607002 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))))
private theorem no_v587655607002 : ¬ MinimalInterpreter v587655607002 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218620122 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v597218620122 : ¬ MinimalInterpreter v597218620122 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2159322true : BadRow (sources true 2 4 atom2159322) := by
  have h : sources true 2 4 atom2159322 = [v593578150762,v603661071066,v597016369690,v587655607002,v597218620122] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578150762) (.cons (no_v603661071066) (.cons (no_v597016369690) (.cons (no_v587655607002) (.cons (no_v597218620122) .nil)))))

private def atom2145594 : Term := (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))
private def v725044941730 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))) (.lam (.var 0)))
private theorem no_v725044941730 : ¬ MinimalInterpreter v725044941730 :=
  chain_cut false 2 (by decide)
private def v700901801274 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v700901801274 : ¬ MinimalInterpreter v700901801274 :=
  chain_cut false 2 (by decide)
private def v699291188538 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v699291188538 : ¬ MinimalInterpreter v699291188538 :=
  chain_cut false 2 (by decide)
private def v699089861946 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v699089861946 : ¬ MinimalInterpreter v699089861946 :=
  chain_cut false 3 (by decide)
theorem atom2145594false : BadRow (sources false 2 4 atom2145594) := by
  have h : sources false 2 4 atom2145594 = [v725044941730,v700901801274,v699291188538,v699089861946] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044941730) (.cons (no_v700901801274) (.cons (no_v699291188538) (.cons (no_v699089861946) .nil))))

private def v593578095850 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))) (.var 0)))
private theorem no_v593578095850 : ¬ MinimalInterpreter v593578095850 :=
  chain_cut false 2 (by decide)
private def v603661057338 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))))
private theorem no_v603661057338 : ¬ MinimalInterpreter v603661057338 :=
  chain_cut true 2 (by decide)
private def v597012855322 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597012855322 : ¬ MinimalInterpreter v597012855322 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655593274 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))))
private theorem no_v587655593274 : ¬ MinimalInterpreter v587655593274 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218606394 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v597218606394 : ¬ MinimalInterpreter v597218606394 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2145594true : BadRow (sources true 2 4 atom2145594) := by
  have h : sources true 2 4 atom2145594 = [v593578095850,v603661057338,v597012855322,v587655593274,v597218606394] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578095850) (.cons (no_v603661057338) (.cons (no_v597012855322) (.cons (no_v587655593274) (.cons (no_v597218606394) .nil)))))

private def atom2145498 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))
private def v725044940194 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))))) (.lam (.var 0)))
private theorem no_v725044940194 : ¬ MinimalInterpreter v725044940194 :=
  chain_cut false 2 (by decide)
private def v700901801178 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v700901801178 : ¬ MinimalInterpreter v700901801178 :=
  chain_cut false 2 (by decide)
private def v699291188442 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v699291188442 : ¬ MinimalInterpreter v699291188442 :=
  chain_cut false 2 (by decide)
private def v699089861850 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v699089861850 : ¬ MinimalInterpreter v699089861850 :=
  chain_cut false 3 (by decide)
theorem atom2145498false : BadRow (sources false 2 4 atom2145498) := by
  have h : sources false 2 4 atom2145498 = [v725044940194,v700901801178,v699291188442,v699089861850] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044940194) (.cons (no_v700901801178) (.cons (no_v699291188442) (.cons (no_v699089861850) .nil))))

private def v593578095466 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))))) (.var 0)))
private theorem no_v593578095466 : ¬ MinimalInterpreter v593578095466 :=
  chain_cut false 2 (by decide)
private def v603661057242 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))))
private theorem no_v603661057242 : ¬ MinimalInterpreter v603661057242 :=
  chain_cut true 2 (by decide)
private def v597012830746 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597012830746 : ¬ MinimalInterpreter v597012830746 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655593178 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))))
private theorem no_v587655593178 : ¬ MinimalInterpreter v587655593178 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218606298 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v597218606298 : ¬ MinimalInterpreter v597218606298 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2145498true : BadRow (sources true 2 4 atom2145498) := by
  have h : sources true 2 4 atom2145498 = [v593578095466,v603661057242,v597012830746,v587655593178,v597218606298] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578095466) (.cons (no_v603661057242) (.cons (no_v597012830746) (.cons (no_v587655593178) (.cons (no_v597218606298) .nil)))))

private def atom2142042 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))
private def v725044884898 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))))) (.lam (.var 0)))
private theorem no_v725044884898 : ¬ MinimalInterpreter v725044884898 :=
  chain_cut false 2 (by decide)
private def v700901797722 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v700901797722 : ¬ MinimalInterpreter v700901797722 :=
  chain_cut false 2 (by decide)
private def v699291184986 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v699291184986 : ¬ MinimalInterpreter v699291184986 :=
  chain_cut false 2 (by decide)
private def v699089858394 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v699089858394 : ¬ MinimalInterpreter v699089858394 :=
  chain_cut false 3 (by decide)
theorem atom2142042false : BadRow (sources false 2 4 atom2142042) := by
  have h : sources false 2 4 atom2142042 = [v725044884898,v700901797722,v699291184986,v699089858394] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044884898) (.cons (no_v700901797722) (.cons (no_v699291184986) (.cons (no_v699089858394) .nil))))

private def v593578081642 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))))) (.var 0)))
private theorem no_v593578081642 : ¬ MinimalInterpreter v593578081642 :=
  chain_cut false 2 (by decide)
private def v603661053786 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))))
private theorem no_v603661053786 : ¬ MinimalInterpreter v603661053786 :=
  chain_cut true 2 (by decide)
private def v597011946010 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597011946010 : ¬ MinimalInterpreter v597011946010 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655589722 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))))
private theorem no_v587655589722 : ¬ MinimalInterpreter v587655589722 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218602842 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v597218602842 : ¬ MinimalInterpreter v597218602842 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2142042true : BadRow (sources true 2 4 atom2142042) := by
  have h : sources true 2 4 atom2142042 = [v593578081642,v603661053786,v597011946010,v587655589722,v597218602842] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578081642) (.cons (no_v603661053786) (.cons (no_v597011946010) (.cons (no_v587655589722) (.cons (no_v597218602842) .nil)))))

theorem atoms32 : Every (fun b => ∀ lit, BadRow (sources lit 2 4 b)) (atoms 2 4 [2,0,1,0]) := by
  have h : atoms 2 4 [2,0,1,0] = [atom2159418,atom2159322,atom2145594,atom2145498,atom2142042] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom2159418false | exact atom2159418true) (.cons (fun lit => by cases lit <;> first | exact atom2159322false | exact atom2159322true) (.cons (fun lit => by cases lit <;> first | exact atom2145594false | exact atom2145594true) (.cons (fun lit => by cases lit <;> first | exact atom2145498false | exact atom2145498true) (.cons (fun lit => by cases lit <;> first | exact atom2142042false | exact atom2142042true) .nil)))))
end Blc.SelfintSingleObject.Sat39
