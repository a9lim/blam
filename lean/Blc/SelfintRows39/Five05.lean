import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem atoms15 : Every (fun b => ∀ lit, BadRow (sources lit 2 4 b)) (atoms 2 4 [0,0,0,3]) := by
  have h : atoms 2 4 [0,0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil
private def atom2149614 : Term := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))
private def v725045006050 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.lam (.var 0)))
private theorem no_v725045006050 : ¬ MinimalInterpreter v725045006050 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.lam (.var 0))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.var 0))))
private def v700901805294 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v700901805294 : ¬ MinimalInterpreter v700901805294 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v699291192558 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v699291192558 : ¬ MinimalInterpreter v699291192558 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v699089865966 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v699089865966 : ¬ MinimalInterpreter v699089865966 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom2149614false : BadRow (sources false 2 4 atom2149614) := by
  have h : sources false 2 4 atom2149614 = [v725045006050,v700901805294,v699291192558,v699089865966] := by decide +kernel
  rw [h]
  exact (.cons (no_v725045006050) (.cons (no_v700901805294) (.cons (no_v699291192558) (.cons (no_v699089865966) .nil))))

private def v593578111930 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.var 0)))
private theorem no_v593578111930 : ¬ MinimalInterpreter v593578111930 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.var 0)) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0)))
private def v603661061358 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v603661061358 : ¬ MinimalInterpreter v603661061358 :=
  so_cut false 0 (show SO (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v597013884442 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597013884442 : ¬ MinimalInterpreter v597013884442 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v587655597294 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v587655597294 : ¬ MinimalInterpreter v587655597294 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v597218610414 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v597218610414 : ¬ MinimalInterpreter v597218610414 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom2149614true : BadRow (sources true 2 4 atom2149614) := by
  have h : sources true 2 4 atom2149614 = [v593578111930,v603661061358,v597013884442,v587655597294,v597218610414] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578111930) (.cons (no_v603661061358) (.cons (no_v597013884442) (.cons (no_v587655597294) (.cons (no_v597218610414) .nil)))))

private def atom2149230 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))
private def v725044999906 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))))) (.lam (.var 0)))
private theorem no_v725044999906 : ¬ MinimalInterpreter v725044999906 :=
  chain_cut false 2 (by decide)
private def v700901804910 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v700901804910 : ¬ MinimalInterpreter v700901804910 :=
  chain_cut false 2 (by decide)
private def v699291192174 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v699291192174 : ¬ MinimalInterpreter v699291192174 :=
  chain_cut false 2 (by decide)
private def v699089865582 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v699089865582 : ¬ MinimalInterpreter v699089865582 :=
  chain_cut false 3 (by decide)
theorem atom2149230false : BadRow (sources false 2 4 atom2149230) := by
  have h : sources false 2 4 atom2149230 = [v725044999906,v700901804910,v699291192174,v699089865582] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044999906) (.cons (no_v700901804910) (.cons (no_v699291192174) (.cons (no_v699089865582) .nil))))

private def v593578110394 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))))) (.var 0)))
private theorem no_v593578110394 : ¬ MinimalInterpreter v593578110394 :=
  chain_cut false 2 (by decide)
private def v603661060974 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v603661060974 : ¬ MinimalInterpreter v603661060974 :=
  chain_cut true 2 (by decide)
private def v597013786138 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597013786138 : ¬ MinimalInterpreter v597013786138 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655596910 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v587655596910 : ¬ MinimalInterpreter v587655596910 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218610030 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v597218610030 : ¬ MinimalInterpreter v597218610030 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2149230true : BadRow (sources true 2 4 atom2149230) := by
  have h : sources true 2 4 atom2149230 = [v593578110394,v603661060974,v597013786138,v587655596910,v597218610030] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578110394) (.cons (no_v603661060974) (.cons (no_v597013786138) (.cons (no_v587655596910) (.cons (no_v597218610030) .nil)))))

private def atom2143470 : Term := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))
private def v725044907746 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) (.lam (.var 0)))
private theorem no_v725044907746 : ¬ MinimalInterpreter v725044907746 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) (.lam (.var 0))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.var 0))))
private def v700901799150 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v700901799150 : ¬ MinimalInterpreter v700901799150 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v699291186414 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v699291186414 : ¬ MinimalInterpreter v699291186414 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v699089859822 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v699089859822 : ¬ MinimalInterpreter v699089859822 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom2143470false : BadRow (sources false 2 4 atom2143470) := by
  have h : sources false 2 4 atom2143470 = [v725044907746,v700901799150,v699291186414,v699089859822] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044907746) (.cons (no_v700901799150) (.cons (no_v699291186414) (.cons (no_v699089859822) .nil))))

private def v593578087354 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) (.var 0)))
private theorem no_v593578087354 : ¬ MinimalInterpreter v593578087354 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) (.var 0)) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0)))
private def v603661055214 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))))
private theorem no_v603661055214 : ¬ MinimalInterpreter v603661055214 :=
  so_cut false 0 (show SO (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))) from (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v597012311578 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597012311578 : ¬ MinimalInterpreter v597012311578 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v587655591150 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))))
private theorem no_v587655591150 : ¬ MinimalInterpreter v587655591150 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v597218604270 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v597218604270 : ¬ MinimalInterpreter v597218604270 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom2143470true : BadRow (sources true 2 4 atom2143470) := by
  have h : sources true 2 4 atom2143470 = [v593578087354,v603661055214,v597012311578,v587655591150,v597218604270] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578087354) (.cons (no_v603661055214) (.cons (no_v597012311578) (.cons (no_v587655591150) (.cons (no_v597218604270) .nil)))))

private def atom2143086 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))
private def v725044901602 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))))) (.lam (.var 0)))
private theorem no_v725044901602 : ¬ MinimalInterpreter v725044901602 :=
  chain_cut false 2 (by decide)
private def v700901798766 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v700901798766 : ¬ MinimalInterpreter v700901798766 :=
  chain_cut false 2 (by decide)
private def v699291186030 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v699291186030 : ¬ MinimalInterpreter v699291186030 :=
  chain_cut false 2 (by decide)
private def v699089859438 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v699089859438 : ¬ MinimalInterpreter v699089859438 :=
  chain_cut false 3 (by decide)
theorem atom2143086false : BadRow (sources false 2 4 atom2143086) := by
  have h : sources false 2 4 atom2143086 = [v725044901602,v700901798766,v699291186030,v699089859438] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044901602) (.cons (no_v700901798766) (.cons (no_v699291186030) (.cons (no_v699089859438) .nil))))

private def v593578085818 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))))) (.var 0)))
private theorem no_v593578085818 : ¬ MinimalInterpreter v593578085818 :=
  chain_cut false 2 (by decide)
private def v603661054830 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))))))
private theorem no_v603661054830 : ¬ MinimalInterpreter v603661054830 :=
  chain_cut true 2 (by decide)
private def v597012213274 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597012213274 : ¬ MinimalInterpreter v597012213274 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655590766 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))))))
private theorem no_v587655590766 : ¬ MinimalInterpreter v587655590766 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218603886 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v597218603886 : ¬ MinimalInterpreter v597218603886 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2143086true : BadRow (sources true 2 4 atom2143086) := by
  have h : sources true 2 4 atom2143086 = [v593578085818,v603661054830,v597012213274,v587655590766,v597218603886] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578085818) (.cons (no_v603661054830) (.cons (no_v597012213274) (.cons (no_v587655590766) (.cons (no_v597218603886) .nil)))))

private def atom2141550 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))
private def v725044877026 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))) (.lam (.var 0)))
private theorem no_v725044877026 : ¬ MinimalInterpreter v725044877026 :=
  chain_cut false 2 (by decide)
private def v700901797230 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v700901797230 : ¬ MinimalInterpreter v700901797230 :=
  chain_cut false 2 (by decide)
private def v699291184494 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v699291184494 : ¬ MinimalInterpreter v699291184494 :=
  chain_cut false 2 (by decide)
private def v699089857902 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v699089857902 : ¬ MinimalInterpreter v699089857902 :=
  chain_cut false 3 (by decide)
theorem atom2141550false : BadRow (sources false 2 4 atom2141550) := by
  have h : sources false 2 4 atom2141550 = [v725044877026,v700901797230,v699291184494,v699089857902] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044877026) (.cons (no_v700901797230) (.cons (no_v699291184494) (.cons (no_v699089857902) .nil))))

private def v593578079674 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))) (.var 0)))
private theorem no_v593578079674 : ¬ MinimalInterpreter v593578079674 :=
  chain_cut false 2 (by decide)
private def v603661053294 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))))
private theorem no_v603661053294 : ¬ MinimalInterpreter v603661053294 :=
  chain_cut true 2 (by decide)
private def v597011820058 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597011820058 : ¬ MinimalInterpreter v597011820058 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655589230 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))))
private theorem no_v587655589230 : ¬ MinimalInterpreter v587655589230 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218602350 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v597218602350 : ¬ MinimalInterpreter v597218602350 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2141550true : BadRow (sources true 2 4 atom2141550) := by
  have h : sources true 2 4 atom2141550 = [v593578079674,v603661053294,v597011820058,v587655589230,v597218602350] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578079674) (.cons (no_v603661053294) (.cons (no_v597011820058) (.cons (no_v587655589230) (.cons (no_v597218602350) .nil)))))

private def atom2297070 : Term := (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))
private def v725047365346 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.lam (.var 0)))
private theorem no_v725047365346 : ¬ MinimalInterpreter v725047365346 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.lam (.var 0))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.var 0))))
private def v700901952750 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v700901952750 : ¬ MinimalInterpreter v700901952750 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v699291340014 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v699291340014 : ¬ MinimalInterpreter v699291340014 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v699090013422 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v699090013422 : ¬ MinimalInterpreter v699090013422 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom2297070false : BadRow (sources false 2 4 atom2297070) := by
  have h : sources false 2 4 atom2297070 = [v725047365346,v700901952750,v699291340014,v699090013422] := by decide +kernel
  rw [h]
  exact (.cons (no_v725047365346) (.cons (no_v700901952750) (.cons (no_v699291340014) (.cons (no_v699090013422) .nil))))

private def v593578701754 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.var 0)))
private theorem no_v593578701754 : ¬ MinimalInterpreter v593578701754 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.var 0)) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))) (.var 0)))
private def v603661208814 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v603661208814 : ¬ MinimalInterpreter v603661208814 :=
  so_cut false 0 (show SO (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v597051633178 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597051633178 : ¬ MinimalInterpreter v597051633178 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v587655744750 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v587655744750 : ¬ MinimalInterpreter v587655744750 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v597218757870 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v597218757870 : ¬ MinimalInterpreter v597218757870 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom2297070true : BadRow (sources true 2 4 atom2297070) := by
  have h : sources true 2 4 atom2297070 = [v593578701754,v603661208814,v597051633178,v587655744750,v597218757870] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578701754) (.cons (no_v603661208814) (.cons (no_v597051633178) (.cons (no_v587655744750) (.cons (no_v597218757870) .nil)))))

private def atom2296686 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))
private def v725047359202 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))) (.lam (.var 0)))
private theorem no_v725047359202 : ¬ MinimalInterpreter v725047359202 :=
  chain_cut false 2 (by decide)
private def v700901952366 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v700901952366 : ¬ MinimalInterpreter v700901952366 :=
  chain_cut false 2 (by decide)
private def v699291339630 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v699291339630 : ¬ MinimalInterpreter v699291339630 :=
  chain_cut false 2 (by decide)
private def v699090013038 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v699090013038 : ¬ MinimalInterpreter v699090013038 :=
  chain_cut false 4 (by decide)
theorem atom2296686false : BadRow (sources false 2 4 atom2296686) := by
  have h : sources false 2 4 atom2296686 = [v725047359202,v700901952366,v699291339630,v699090013038] := by decide +kernel
  rw [h]
  exact (.cons (no_v725047359202) (.cons (no_v700901952366) (.cons (no_v699291339630) (.cons (no_v699090013038) .nil))))

private def v593578700218 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))) (.var 0)))
private theorem no_v593578700218 : ¬ MinimalInterpreter v593578700218 :=
  chain_cut false 2 (by decide)
private def v603661208430 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v603661208430 : ¬ MinimalInterpreter v603661208430 :=
  chain_cut true 2 (by decide)
private def v597051534874 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597051534874 : ¬ MinimalInterpreter v597051534874 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655744366 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v587655744366 : ¬ MinimalInterpreter v587655744366 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218757486 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v597218757486 : ¬ MinimalInterpreter v597218757486 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2296686true : BadRow (sources true 2 4 atom2296686) := by
  have h : sources true 2 4 atom2296686 = [v593578700218,v603661208430,v597051534874,v587655744366,v597218757486] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578700218) (.cons (no_v603661208430) (.cons (no_v597051534874) (.cons (no_v587655744366) (.cons (no_v597218757486) .nil)))))

private def atom2886894 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))
private def v725056802530 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.lam (.var 0)))
private theorem no_v725056802530 : ¬ MinimalInterpreter v725056802530 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.lam (.var 0))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))) (so_closed_lam (by decide) (.var 0))))
private def v700133901850 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v700133901850 : ¬ MinimalInterpreter v700133901850 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))))
private def v700133901922 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))
private theorem no_v700133901922 : ¬ MinimalInterpreter v700133901922 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))))))
private def v700902542574 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v700902542574 : ¬ MinimalInterpreter v700902542574 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v700133901730 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))
private theorem no_v700133901730 : ¬ MinimalInterpreter v700133901730 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0))))))
private def v699291929838 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v699291929838 : ¬ MinimalInterpreter v699291929838 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v700133901706 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))
private theorem no_v700133901706 : ¬ MinimalInterpreter v700133901706 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0)))))
private def v699090603246 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v699090603246 : ¬ MinimalInterpreter v699090603246 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem atom2886894false : BadRow (sources false 2 4 atom2886894) := by
  have h : sources false 2 4 atom2886894 = [v725056802530,v700133901850,v700133901922,v700902542574,v700133901730,v699291929838,v700133901706,v699090603246] := by decide +kernel
  rw [h]
  exact (.cons (no_v725056802530) (.cons (no_v700133901850) (.cons (no_v700133901922) (.cons (no_v700902542574) (.cons (no_v700133901730) (.cons (no_v699291929838) (.cons (no_v700133901706) (.cons (no_v699090603246) .nil))))))))

private def v593581061050 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.var 0)))
private theorem no_v593581061050 : ¬ MinimalInterpreter v593581061050 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.var 0)) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))) (.var 0)))
private def v603661798638 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v603661798638 : ¬ MinimalInterpreter v603661798638 :=
  so_cut false 0 (show SO (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v597202628122 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597202628122 : ¬ MinimalInterpreter v597202628122 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v587656334574 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v587656334574 : ¬ MinimalInterpreter v587656334574 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v587350337050 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v587350337050 : ¬ MinimalInterpreter v587350337050 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))))
private def v597219347694 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v597219347694 : ¬ MinimalInterpreter v597219347694 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem atom2886894true : BadRow (sources true 2 4 atom2886894) := by
  have h : sources true 2 4 atom2886894 = [v593581061050,v603661798638,v597202628122,v587656334574,v587350337050,v597219347694] := by decide +kernel
  rw [h]
  exact (.cons (no_v593581061050) (.cons (no_v603661798638) (.cons (no_v597202628122) (.cons (no_v587656334574) (.cons (no_v587350337050) (.cons (no_v597219347694) .nil))))))

private def atom2886510 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))
private def v725056796386 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))) (.lam (.var 0)))
private theorem no_v725056796386 : ¬ MinimalInterpreter v725056796386 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v700127610394 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v700127610394 : ¬ MinimalInterpreter v700127610394 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (.var 0) (by decide) (by decide)))))
private def v700127610466 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))
private theorem no_v700127610466 : ¬ MinimalInterpreter v700127610466 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))))) (.var 0) (by decide) (by decide)))))
private def v700902542190 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v700902542190 : ¬ MinimalInterpreter v700902542190 :=
  chain_cut false 3 (by decide)
private def v700127610274 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))
private theorem no_v700127610274 : ¬ MinimalInterpreter v700127610274 :=
  so_cut false 1 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0))))) (.var 0) (by decide) (by decide)))))
private def v699291929454 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v699291929454 : ¬ MinimalInterpreter v699291929454 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v700127610250 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))
private theorem no_v700127610250 : ¬ MinimalInterpreter v700127610250 :=
  so_cut false 1 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0)))) (.var 0) (by decide) (by decide)))))
private def v699090602862 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v699090602862 : ¬ MinimalInterpreter v699090602862 :=
  chain_cut false 2 (by decide)
theorem atom2886510false : BadRow (sources false 2 4 atom2886510) := by
  have h : sources false 2 4 atom2886510 = [v725056796386,v700127610394,v700127610466,v700902542190,v700127610274,v699291929454,v700127610250,v699090602862] := by decide +kernel
  rw [h]
  exact (.cons (no_v725056796386) (.cons (no_v700127610394) (.cons (no_v700127610466) (.cons (no_v700902542190) (.cons (no_v700127610274) (.cons (no_v699291929454) (.cons (no_v700127610250) (.cons (no_v699090602862) .nil))))))))

private def v593581059514 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))) (.var 0)))
private theorem no_v593581059514 : ¬ MinimalInterpreter v593581059514 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v603661798254 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v603661798254 : ¬ MinimalInterpreter v603661798254 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597202529818 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597202529818 : ¬ MinimalInterpreter v597202529818 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587656334190 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v587656334190 : ¬ MinimalInterpreter v587656334190 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587348764186 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v587348764186 : ¬ MinimalInterpreter v587348764186 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597219347310 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v597219347310 : ¬ MinimalInterpreter v597219347310 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2886510true : BadRow (sources true 2 4 atom2886510) := by
  have h : sources true 2 4 atom2886510 = [v593581059514,v603661798254,v597202529818,v587656334190,v587348764186,v597219347310] := by decide +kernel
  rw [h]
  exact (.cons (no_v593581059514) (.cons (no_v603661798254) (.cons (no_v597202529818) (.cons (no_v587656334190) (.cons (no_v587348764186) (.cons (no_v597219347310) .nil))))))

theorem atoms16 : Every (fun b => ∀ lit, BadRow (sources lit 2 4 b)) (atoms 2 4 [0,0,1,2]) := by
  have h : atoms 2 4 [0,0,1,2] = [atom2149614,atom2149230,atom2143470,atom2143086,atom2141550,atom2297070,atom2296686,atom2886894,atom2886510] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom2149614false | exact atom2149614true) (.cons (fun lit => by cases lit <;> first | exact atom2149230false | exact atom2149230true) (.cons (fun lit => by cases lit <;> first | exact atom2143470false | exact atom2143470true) (.cons (fun lit => by cases lit <;> first | exact atom2143086false | exact atom2143086true) (.cons (fun lit => by cases lit <;> first | exact atom2141550false | exact atom2141550true) (.cons (fun lit => by cases lit <;> first | exact atom2297070false | exact atom2297070true) (.cons (fun lit => by cases lit <;> first | exact atom2296686false | exact atom2296686true) (.cons (fun lit => by cases lit <;> first | exact atom2886894false | exact atom2886894true) (.cons (fun lit => by cases lit <;> first | exact atom2886510false | exact atom2886510true) .nil)))))))))
private def atom2149622 : Term := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))
private def v725045006178 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.lam (.var 0)))
private theorem no_v725045006178 : ¬ MinimalInterpreter v725045006178 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.lam (.var 0))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.var 0))))
private def v700901805302 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v700901805302 : ¬ MinimalInterpreter v700901805302 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v699291192566 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v699291192566 : ¬ MinimalInterpreter v699291192566 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v699089865974 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v699089865974 : ¬ MinimalInterpreter v699089865974 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom2149622false : BadRow (sources false 2 4 atom2149622) := by
  have h : sources false 2 4 atom2149622 = [v725045006178,v700901805302,v699291192566,v699089865974] := by decide +kernel
  rw [h]
  exact (.cons (no_v725045006178) (.cons (no_v700901805302) (.cons (no_v699291192566) (.cons (no_v699089865974) .nil))))

private def v593578111962 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.var 0)))
private theorem no_v593578111962 : ¬ MinimalInterpreter v593578111962 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.var 0)) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0)))
private def v603661061366 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v603661061366 : ¬ MinimalInterpreter v603661061366 :=
  so_cut false 0 (show SO (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v597013886490 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597013886490 : ¬ MinimalInterpreter v597013886490 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v587655597302 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v587655597302 : ¬ MinimalInterpreter v587655597302 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v597218610422 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v597218610422 : ¬ MinimalInterpreter v597218610422 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom2149622true : BadRow (sources true 2 4 atom2149622) := by
  have h : sources true 2 4 atom2149622 = [v593578111962,v603661061366,v597013886490,v587655597302,v597218610422] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578111962) (.cons (no_v603661061366) (.cons (no_v597013886490) (.cons (no_v587655597302) (.cons (no_v597218610422) .nil)))))

private def atom2149238 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))
private def v725045000034 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))))) (.lam (.var 0)))
private theorem no_v725045000034 : ¬ MinimalInterpreter v725045000034 :=
  chain_cut false 2 (by decide)
private def v700901804918 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v700901804918 : ¬ MinimalInterpreter v700901804918 :=
  chain_cut false 2 (by decide)
private def v699291192182 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v699291192182 : ¬ MinimalInterpreter v699291192182 :=
  chain_cut false 2 (by decide)
private def v699089865590 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v699089865590 : ¬ MinimalInterpreter v699089865590 :=
  chain_cut false 3 (by decide)
theorem atom2149238false : BadRow (sources false 2 4 atom2149238) := by
  have h : sources false 2 4 atom2149238 = [v725045000034,v700901804918,v699291192182,v699089865590] := by decide +kernel
  rw [h]
  exact (.cons (no_v725045000034) (.cons (no_v700901804918) (.cons (no_v699291192182) (.cons (no_v699089865590) .nil))))

private def v593578110426 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))))) (.var 0)))
private theorem no_v593578110426 : ¬ MinimalInterpreter v593578110426 :=
  chain_cut false 2 (by decide)
private def v603661060982 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v603661060982 : ¬ MinimalInterpreter v603661060982 :=
  chain_cut true 2 (by decide)
private def v597013788186 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597013788186 : ¬ MinimalInterpreter v597013788186 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655596918 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v587655596918 : ¬ MinimalInterpreter v587655596918 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218610038 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v597218610038 : ¬ MinimalInterpreter v597218610038 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2149238true : BadRow (sources true 2 4 atom2149238) := by
  have h : sources true 2 4 atom2149238 = [v593578110426,v603661060982,v597013788186,v587655596918,v597218610038] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578110426) (.cons (no_v603661060982) (.cons (no_v597013788186) (.cons (no_v587655596918) (.cons (no_v597218610038) .nil)))))

private def atom2143478 : Term := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))
private def v725044907874 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) (.lam (.var 0)))
private theorem no_v725044907874 : ¬ MinimalInterpreter v725044907874 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) (.lam (.var 0))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.var 0))))
private def v700901799158 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v700901799158 : ¬ MinimalInterpreter v700901799158 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v699291186422 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v699291186422 : ¬ MinimalInterpreter v699291186422 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v699089859830 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v699089859830 : ¬ MinimalInterpreter v699089859830 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom2143478false : BadRow (sources false 2 4 atom2143478) := by
  have h : sources false 2 4 atom2143478 = [v725044907874,v700901799158,v699291186422,v699089859830] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044907874) (.cons (no_v700901799158) (.cons (no_v699291186422) (.cons (no_v699089859830) .nil))))

private def v593578087386 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) (.var 0)))
private theorem no_v593578087386 : ¬ MinimalInterpreter v593578087386 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) (.var 0)) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0)))
private def v603661055222 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))))
private theorem no_v603661055222 : ¬ MinimalInterpreter v603661055222 :=
  so_cut false 0 (show SO (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))) from (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v597012313626 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597012313626 : ¬ MinimalInterpreter v597012313626 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v587655591158 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))))
private theorem no_v587655591158 : ¬ MinimalInterpreter v587655591158 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v597218604278 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v597218604278 : ¬ MinimalInterpreter v597218604278 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom2143478true : BadRow (sources true 2 4 atom2143478) := by
  have h : sources true 2 4 atom2143478 = [v593578087386,v603661055222,v597012313626,v587655591158,v597218604278] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578087386) (.cons (no_v603661055222) (.cons (no_v597012313626) (.cons (no_v587655591158) (.cons (no_v597218604278) .nil)))))

private def atom2143094 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))
private def v725044901730 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)))))) (.lam (.var 0)))
private theorem no_v725044901730 : ¬ MinimalInterpreter v725044901730 :=
  chain_cut false 2 (by decide)
private def v700901798774 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v700901798774 : ¬ MinimalInterpreter v700901798774 :=
  chain_cut false 2 (by decide)
private def v699291186038 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v699291186038 : ¬ MinimalInterpreter v699291186038 :=
  chain_cut false 2 (by decide)
private def v699089859446 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v699089859446 : ¬ MinimalInterpreter v699089859446 :=
  chain_cut false 3 (by decide)
theorem atom2143094false : BadRow (sources false 2 4 atom2143094) := by
  have h : sources false 2 4 atom2143094 = [v725044901730,v700901798774,v699291186038,v699089859446] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044901730) (.cons (no_v700901798774) (.cons (no_v699291186038) (.cons (no_v699089859446) .nil))))

private def v593578085850 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)))))) (.var 0)))
private theorem no_v593578085850 : ¬ MinimalInterpreter v593578085850 :=
  chain_cut false 2 (by decide)
private def v603661054838 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))))))
private theorem no_v603661054838 : ¬ MinimalInterpreter v603661054838 :=
  chain_cut true 2 (by decide)
private def v597012215322 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597012215322 : ¬ MinimalInterpreter v597012215322 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655590774 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))))))
private theorem no_v587655590774 : ¬ MinimalInterpreter v587655590774 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218603894 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v597218603894 : ¬ MinimalInterpreter v597218603894 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2143094true : BadRow (sources true 2 4 atom2143094) := by
  have h : sources true 2 4 atom2143094 = [v593578085850,v603661054838,v597012215322,v587655590774,v597218603894] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578085850) (.cons (no_v603661054838) (.cons (no_v597012215322) (.cons (no_v587655590774) (.cons (no_v597218603894) .nil)))))

private def atom2141558 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))
private def v725044877154 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))) (.lam (.var 0)))
private theorem no_v725044877154 : ¬ MinimalInterpreter v725044877154 :=
  chain_cut false 2 (by decide)
private def v700901797238 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v700901797238 : ¬ MinimalInterpreter v700901797238 :=
  chain_cut false 2 (by decide)
private def v699291184502 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v699291184502 : ¬ MinimalInterpreter v699291184502 :=
  chain_cut false 2 (by decide)
private def v699089857910 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v699089857910 : ¬ MinimalInterpreter v699089857910 :=
  chain_cut false 3 (by decide)
theorem atom2141558false : BadRow (sources false 2 4 atom2141558) := by
  have h : sources false 2 4 atom2141558 = [v725044877154,v700901797238,v699291184502,v699089857910] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044877154) (.cons (no_v700901797238) (.cons (no_v699291184502) (.cons (no_v699089857910) .nil))))

private def v593578079706 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))) (.var 0)))
private theorem no_v593578079706 : ¬ MinimalInterpreter v593578079706 :=
  chain_cut false 2 (by decide)
private def v603661053302 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))))
private theorem no_v603661053302 : ¬ MinimalInterpreter v603661053302 :=
  chain_cut true 2 (by decide)
private def v597011822106 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597011822106 : ¬ MinimalInterpreter v597011822106 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655589238 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))))
private theorem no_v587655589238 : ¬ MinimalInterpreter v587655589238 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218602358 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v597218602358 : ¬ MinimalInterpreter v597218602358 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2141558true : BadRow (sources true 2 4 atom2141558) := by
  have h : sources true 2 4 atom2141558 = [v593578079706,v603661053302,v597011822106,v587655589238,v597218602358] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578079706) (.cons (no_v603661053302) (.cons (no_v597011822106) (.cons (no_v587655589238) (.cons (no_v597218602358) .nil)))))

private def atom2297078 : Term := (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))
private def v725047365474 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.lam (.var 0)))
private theorem no_v725047365474 : ¬ MinimalInterpreter v725047365474 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.lam (.var 0))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.var 0))))
private def v700901952758 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v700901952758 : ¬ MinimalInterpreter v700901952758 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v699291340022 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v699291340022 : ¬ MinimalInterpreter v699291340022 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v699090013430 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v699090013430 : ¬ MinimalInterpreter v699090013430 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom2297078false : BadRow (sources false 2 4 atom2297078) := by
  have h : sources false 2 4 atom2297078 = [v725047365474,v700901952758,v699291340022,v699090013430] := by decide +kernel
  rw [h]
  exact (.cons (no_v725047365474) (.cons (no_v700901952758) (.cons (no_v699291340022) (.cons (no_v699090013430) .nil))))

private def v593578701786 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.var 0)))
private theorem no_v593578701786 : ¬ MinimalInterpreter v593578701786 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.var 0)) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))) (.var 0)))
private def v603661208822 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v603661208822 : ¬ MinimalInterpreter v603661208822 :=
  so_cut false 0 (show SO (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v597051635226 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597051635226 : ¬ MinimalInterpreter v597051635226 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v587655744758 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v587655744758 : ¬ MinimalInterpreter v587655744758 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v597218757878 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v597218757878 : ¬ MinimalInterpreter v597218757878 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom2297078true : BadRow (sources true 2 4 atom2297078) := by
  have h : sources true 2 4 atom2297078 = [v593578701786,v603661208822,v597051635226,v587655744758,v597218757878] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578701786) (.cons (no_v603661208822) (.cons (no_v597051635226) (.cons (no_v587655744758) (.cons (no_v597218757878) .nil)))))

private def atom2296694 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))
private def v725047359330 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))) (.lam (.var 0)))
private theorem no_v725047359330 : ¬ MinimalInterpreter v725047359330 :=
  chain_cut false 2 (by decide)
private def v700901952374 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v700901952374 : ¬ MinimalInterpreter v700901952374 :=
  chain_cut false 2 (by decide)
private def v699291339638 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v699291339638 : ¬ MinimalInterpreter v699291339638 :=
  chain_cut false 2 (by decide)
private def v699090013046 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v699090013046 : ¬ MinimalInterpreter v699090013046 :=
  chain_cut false 4 (by decide)
theorem atom2296694false : BadRow (sources false 2 4 atom2296694) := by
  have h : sources false 2 4 atom2296694 = [v725047359330,v700901952374,v699291339638,v699090013046] := by decide +kernel
  rw [h]
  exact (.cons (no_v725047359330) (.cons (no_v700901952374) (.cons (no_v699291339638) (.cons (no_v699090013046) .nil))))

private def v593578700250 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))) (.var 0)))
private theorem no_v593578700250 : ¬ MinimalInterpreter v593578700250 :=
  chain_cut false 2 (by decide)
private def v603661208438 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v603661208438 : ¬ MinimalInterpreter v603661208438 :=
  chain_cut true 2 (by decide)
private def v597051536922 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597051536922 : ¬ MinimalInterpreter v597051536922 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655744374 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v587655744374 : ¬ MinimalInterpreter v587655744374 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218757494 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v597218757494 : ¬ MinimalInterpreter v597218757494 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2296694true : BadRow (sources true 2 4 atom2296694) := by
  have h : sources true 2 4 atom2296694 = [v593578700250,v603661208438,v597051536922,v587655744374,v597218757494] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578700250) (.cons (no_v603661208438) (.cons (no_v597051536922) (.cons (no_v587655744374) (.cons (no_v597218757494) .nil)))))

private def atom2886902 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))
private def v725056802658 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.lam (.var 0)))
private theorem no_v725056802658 : ¬ MinimalInterpreter v725056802658 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.lam (.var 0))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))) (so_closed_lam (by decide) (.var 0))))
private def v700134032922 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v700134032922 : ¬ MinimalInterpreter v700134032922 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))))
private def v700134032994 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))
private theorem no_v700134032994 : ¬ MinimalInterpreter v700134032994 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))))))
private def v700902542582 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v700902542582 : ¬ MinimalInterpreter v700902542582 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v700134032802 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))
private theorem no_v700134032802 : ¬ MinimalInterpreter v700134032802 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0))))))
private def v699291929846 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v699291929846 : ¬ MinimalInterpreter v699291929846 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v700134032778 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))
private theorem no_v700134032778 : ¬ MinimalInterpreter v700134032778 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0)))))
private def v699090603254 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v699090603254 : ¬ MinimalInterpreter v699090603254 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem atom2886902false : BadRow (sources false 2 4 atom2886902) := by
  have h : sources false 2 4 atom2886902 = [v725056802658,v700134032922,v700134032994,v700902542582,v700134032802,v699291929846,v700134032778,v699090603254] := by decide +kernel
  rw [h]
  exact (.cons (no_v725056802658) (.cons (no_v700134032922) (.cons (no_v700134032994) (.cons (no_v700902542582) (.cons (no_v700134032802) (.cons (no_v699291929846) (.cons (no_v700134032778) (.cons (no_v699090603254) .nil))))))))

private def v593581061082 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.var 0)))
private theorem no_v593581061082 : ¬ MinimalInterpreter v593581061082 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.var 0)) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))) (.var 0)))
private def v603661798646 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v603661798646 : ¬ MinimalInterpreter v603661798646 :=
  so_cut false 0 (show SO (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v597202630170 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597202630170 : ¬ MinimalInterpreter v597202630170 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v587656334582 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v587656334582 : ¬ MinimalInterpreter v587656334582 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v587350369818 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v587350369818 : ¬ MinimalInterpreter v587350369818 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))))
private def v597219347702 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v597219347702 : ¬ MinimalInterpreter v597219347702 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem atom2886902true : BadRow (sources true 2 4 atom2886902) := by
  have h : sources true 2 4 atom2886902 = [v593581061082,v603661798646,v597202630170,v587656334582,v587350369818,v597219347702] := by decide +kernel
  rw [h]
  exact (.cons (no_v593581061082) (.cons (no_v603661798646) (.cons (no_v597202630170) (.cons (no_v587656334582) (.cons (no_v587350369818) (.cons (no_v597219347702) .nil))))))

private def atom2886518 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))
private def v725056796514 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))) (.lam (.var 0)))
private theorem no_v725056796514 : ¬ MinimalInterpreter v725056796514 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v700127741466 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v700127741466 : ¬ MinimalInterpreter v700127741466 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0) (by decide) (by decide)))))
private def v700127741538 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))
private theorem no_v700127741538 : ¬ MinimalInterpreter v700127741538 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.var 1))) (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))))) (.var 1)) (.var 0) (by decide) (by decide)))))
private def v700902542198 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v700902542198 : ¬ MinimalInterpreter v700902542198 :=
  chain_cut false 3 (by decide)
private def v700127741346 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))
private theorem no_v700127741346 : ¬ MinimalInterpreter v700127741346 :=
  so_cut false 1 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))) (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0))))) (.var 1)) (.var 0) (by decide) (by decide)))))
private def v699291929462 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v699291929462 : ¬ MinimalInterpreter v699291929462 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v700127741322 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))
private theorem no_v700127741322 : ¬ MinimalInterpreter v700127741322 :=
  so_cut false 1 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1))) (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0)))) (.var 1)) (.var 0) (by decide) (by decide)))))
private def v699090602870 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v699090602870 : ¬ MinimalInterpreter v699090602870 :=
  chain_cut false 2 (by decide)
theorem atom2886518false : BadRow (sources false 2 4 atom2886518) := by
  have h : sources false 2 4 atom2886518 = [v725056796514,v700127741466,v700127741538,v700902542198,v700127741346,v699291929462,v700127741322,v699090602870] := by decide +kernel
  rw [h]
  exact (.cons (no_v725056796514) (.cons (no_v700127741466) (.cons (no_v700127741538) (.cons (no_v700902542198) (.cons (no_v700127741346) (.cons (no_v699291929462) (.cons (no_v700127741322) (.cons (no_v699090602870) .nil))))))))

private def v593581059546 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))) (.var 0)))
private theorem no_v593581059546 : ¬ MinimalInterpreter v593581059546 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v603661798262 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v603661798262 : ¬ MinimalInterpreter v603661798262 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597202531866 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597202531866 : ¬ MinimalInterpreter v597202531866 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587656334198 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v587656334198 : ¬ MinimalInterpreter v587656334198 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587348796954 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v587348796954 : ¬ MinimalInterpreter v587348796954 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597219347318 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v597219347318 : ¬ MinimalInterpreter v597219347318 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2886518true : BadRow (sources true 2 4 atom2886518) := by
  have h : sources true 2 4 atom2886518 = [v593581059546,v603661798262,v597202531866,v587656334198,v587348796954,v597219347318] := by decide +kernel
  rw [h]
  exact (.cons (no_v593581059546) (.cons (no_v603661798262) (.cons (no_v597202531866) (.cons (no_v587656334198) (.cons (no_v587348796954) (.cons (no_v597219347318) .nil))))))

theorem atoms17 : Every (fun b => ∀ lit, BadRow (sources lit 2 4 b)) (atoms 2 4 [0,0,2,1]) := by
  have h : atoms 2 4 [0,0,2,1] = [atom2149622,atom2149238,atom2143478,atom2143094,atom2141558,atom2297078,atom2296694,atom2886902,atom2886518] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom2149622false | exact atom2149622true) (.cons (fun lit => by cases lit <;> first | exact atom2149238false | exact atom2149238true) (.cons (fun lit => by cases lit <;> first | exact atom2143478false | exact atom2143478true) (.cons (fun lit => by cases lit <;> first | exact atom2143094false | exact atom2143094true) (.cons (fun lit => by cases lit <;> first | exact atom2141558false | exact atom2141558true) (.cons (fun lit => by cases lit <;> first | exact atom2297078false | exact atom2297078true) (.cons (fun lit => by cases lit <;> first | exact atom2296694false | exact atom2296694true) (.cons (fun lit => by cases lit <;> first | exact atom2886902false | exact atom2886902true) (.cons (fun lit => by cases lit <;> first | exact atom2886518false | exact atom2886518true) .nil)))))))))
end Blc.SelfintSingleObject.Sat39
