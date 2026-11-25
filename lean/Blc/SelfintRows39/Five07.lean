import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def atom2150010 : Term := (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))
private def v725045012386 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))))) (.lam (.var 0)))
private theorem no_v725045012386 : ¬ MinimalInterpreter v725045012386 :=
  chain_cut false 2 (by decide)
private def v700901805690 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v700901805690 : ¬ MinimalInterpreter v700901805690 :=
  chain_cut false 2 (by decide)
private def v699291192954 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v699291192954 : ¬ MinimalInterpreter v699291192954 :=
  chain_cut false 2 (by decide)
private def v699089866362 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v699089866362 : ¬ MinimalInterpreter v699089866362 :=
  chain_cut false 3 (by decide)
theorem atom2150010false : BadRow (sources false 2 4 atom2150010) := by
  have h : sources false 2 4 atom2150010 = [v725045012386,v700901805690,v699291192954,v699089866362] := by decide +kernel
  rw [h]
  exact (.cons (no_v725045012386) (.cons (no_v700901805690) (.cons (no_v699291192954) (.cons (no_v699089866362) .nil))))

private def v593578113514 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))))) (.var 0)))
private theorem no_v593578113514 : ¬ MinimalInterpreter v593578113514 :=
  chain_cut false 2 (by decide)
private def v603661061754 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v603661061754 : ¬ MinimalInterpreter v603661061754 :=
  chain_cut true 2 (by decide)
private def v597013985818 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597013985818 : ¬ MinimalInterpreter v597013985818 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655597690 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v587655597690 : ¬ MinimalInterpreter v587655597690 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218610810 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v597218610810 : ¬ MinimalInterpreter v597218610810 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2150010true : BadRow (sources true 2 4 atom2150010) := by
  have h : sources true 2 4 atom2150010 = [v593578113514,v603661061754,v597013985818,v587655597690,v597218610810] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578113514) (.cons (no_v603661061754) (.cons (no_v597013985818) (.cons (no_v587655597690) (.cons (no_v597218610810) .nil)))))

private def atom2149306 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))
private def v725045001122 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.lam (.var 0)))
private theorem no_v725045001122 : ¬ MinimalInterpreter v725045001122 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.lam (.var 0))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.var 0))))
private def v700901804986 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v700901804986 : ¬ MinimalInterpreter v700901804986 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v699291192250 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v699291192250 : ¬ MinimalInterpreter v699291192250 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v699089865658 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v699089865658 : ¬ MinimalInterpreter v699089865658 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom2149306false : BadRow (sources false 2 4 atom2149306) := by
  have h : sources false 2 4 atom2149306 = [v725045001122,v700901804986,v699291192250,v699089865658] := by decide +kernel
  rw [h]
  exact (.cons (no_v725045001122) (.cons (no_v700901804986) (.cons (no_v699291192250) (.cons (no_v699089865658) .nil))))

private def v593578110698 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.var 0)))
private theorem no_v593578110698 : ¬ MinimalInterpreter v593578110698 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.var 0)) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0)))
private def v603661061050 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v603661061050 : ¬ MinimalInterpreter v603661061050 :=
  so_cut false 0 (show SO (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v597013805594 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597013805594 : ¬ MinimalInterpreter v597013805594 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v587655596986 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v587655596986 : ¬ MinimalInterpreter v587655596986 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v597218610106 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v597218610106 : ¬ MinimalInterpreter v597218610106 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom2149306true : BadRow (sources true 2 4 atom2149306) := by
  have h : sources true 2 4 atom2149306 = [v593578110698,v603661061050,v597013805594,v587655596986,v597218610106] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578110698) (.cons (no_v603661061050) (.cons (no_v597013805594) (.cons (no_v587655596986) (.cons (no_v597218610106) .nil)))))

private def atom2143866 : Term := (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))))
private def v725044914082 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))))))) (.lam (.var 0)))
private theorem no_v725044914082 : ¬ MinimalInterpreter v725044914082 :=
  chain_cut false 2 (by decide)
private def v700901799546 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v700901799546 : ¬ MinimalInterpreter v700901799546 :=
  chain_cut false 2 (by decide)
private def v699291186810 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v699291186810 : ¬ MinimalInterpreter v699291186810 :=
  chain_cut false 2 (by decide)
private def v699089860218 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v699089860218 : ¬ MinimalInterpreter v699089860218 :=
  chain_cut false 3 (by decide)
theorem atom2143866false : BadRow (sources false 2 4 atom2143866) := by
  have h : sources false 2 4 atom2143866 = [v725044914082,v700901799546,v699291186810,v699089860218] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044914082) (.cons (no_v700901799546) (.cons (no_v699291186810) (.cons (no_v699089860218) .nil))))

private def v593578088938 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))))))) (.var 0)))
private theorem no_v593578088938 : ¬ MinimalInterpreter v593578088938 :=
  chain_cut false 2 (by decide)
private def v603661055610 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))))))))
private theorem no_v603661055610 : ¬ MinimalInterpreter v603661055610 :=
  chain_cut true 2 (by decide)
private def v597012412954 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597012412954 : ¬ MinimalInterpreter v597012412954 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655591546 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))))))))
private theorem no_v587655591546 : ¬ MinimalInterpreter v587655591546 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218604666 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v597218604666 : ¬ MinimalInterpreter v597218604666 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2143866true : BadRow (sources true 2 4 atom2143866) := by
  have h : sources true 2 4 atom2143866 = [v593578088938,v603661055610,v597012412954,v587655591546,v597218604666] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578088938) (.cons (no_v603661055610) (.cons (no_v597012412954) (.cons (no_v587655591546) (.cons (no_v597218604666) .nil)))))

private def atom2143162 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))
private def v725044902818 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) (.lam (.var 0)))
private theorem no_v725044902818 : ¬ MinimalInterpreter v725044902818 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) (.lam (.var 0))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.var 0))))
private def v700901798842 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v700901798842 : ¬ MinimalInterpreter v700901798842 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v699291186106 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v699291186106 : ¬ MinimalInterpreter v699291186106 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v699089859514 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v699089859514 : ¬ MinimalInterpreter v699089859514 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom2143162false : BadRow (sources false 2 4 atom2143162) := by
  have h : sources false 2 4 atom2143162 = [v725044902818,v700901798842,v699291186106,v699089859514] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044902818) (.cons (no_v700901798842) (.cons (no_v699291186106) (.cons (no_v699089859514) .nil))))

private def v593578086122 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) (.var 0)))
private theorem no_v593578086122 : ¬ MinimalInterpreter v593578086122 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) (.var 0)) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0)))
private def v603661054906 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))))
private theorem no_v603661054906 : ¬ MinimalInterpreter v603661054906 :=
  so_cut false 0 (show SO (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v597012232730 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597012232730 : ¬ MinimalInterpreter v597012232730 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v587655590842 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))))
private theorem no_v587655590842 : ¬ MinimalInterpreter v587655590842 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v597218603962 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v597218603962 : ¬ MinimalInterpreter v597218603962 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom2143162true : BadRow (sources true 2 4 atom2143162) := by
  have h : sources true 2 4 atom2143162 = [v593578086122,v603661054906,v597012232730,v587655590842,v597218603962] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578086122) (.cons (no_v603661054906) (.cons (no_v597012232730) (.cons (no_v587655590842) (.cons (no_v597218603962) .nil)))))

private def atom2141626 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))))
private def v725044878242 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))))) (.lam (.var 0)))
private theorem no_v725044878242 : ¬ MinimalInterpreter v725044878242 :=
  chain_cut false 2 (by decide)
private def v700901797306 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v700901797306 : ¬ MinimalInterpreter v700901797306 :=
  chain_cut false 2 (by decide)
private def v699291184570 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v699291184570 : ¬ MinimalInterpreter v699291184570 :=
  chain_cut false 2 (by decide)
private def v699089857978 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v699089857978 : ¬ MinimalInterpreter v699089857978 :=
  chain_cut false 3 (by decide)
theorem atom2141626false : BadRow (sources false 2 4 atom2141626) := by
  have h : sources false 2 4 atom2141626 = [v725044878242,v700901797306,v699291184570,v699089857978] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044878242) (.cons (no_v700901797306) (.cons (no_v699291184570) (.cons (no_v699089857978) .nil))))

private def v593578079978 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))))) (.var 0)))
private theorem no_v593578079978 : ¬ MinimalInterpreter v593578079978 :=
  chain_cut false 2 (by decide)
private def v603661053370 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))))))))
private theorem no_v603661053370 : ¬ MinimalInterpreter v603661053370 :=
  chain_cut true 2 (by decide)
private def v597011839514 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597011839514 : ¬ MinimalInterpreter v597011839514 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655589306 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))))))))
private theorem no_v587655589306 : ¬ MinimalInterpreter v587655589306 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218602426 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v597218602426 : ¬ MinimalInterpreter v597218602426 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2141626true : BadRow (sources true 2 4 atom2141626) := by
  have h : sources true 2 4 atom2141626 = [v593578079978,v603661053370,v597011839514,v587655589306,v597218602426] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578079978) (.cons (no_v603661053370) (.cons (no_v597011839514) (.cons (no_v587655589306) (.cons (no_v597218602426) .nil)))))

private def atom2297466 : Term := (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))
private def v725047371682 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))) (.lam (.var 0)))
private theorem no_v725047371682 : ¬ MinimalInterpreter v725047371682 :=
  chain_cut false 2 (by decide)
private def v700901953146 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v700901953146 : ¬ MinimalInterpreter v700901953146 :=
  chain_cut false 2 (by decide)
private def v699291340410 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v699291340410 : ¬ MinimalInterpreter v699291340410 :=
  chain_cut false 2 (by decide)
private def v699090013818 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v699090013818 : ¬ MinimalInterpreter v699090013818 :=
  chain_cut false 4 (by decide)
theorem atom2297466false : BadRow (sources false 2 4 atom2297466) := by
  have h : sources false 2 4 atom2297466 = [v725047371682,v700901953146,v699291340410,v699090013818] := by decide +kernel
  rw [h]
  exact (.cons (no_v725047371682) (.cons (no_v700901953146) (.cons (no_v699291340410) (.cons (no_v699090013818) .nil))))

private def v593578703338 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))) (.var 0)))
private theorem no_v593578703338 : ¬ MinimalInterpreter v593578703338 :=
  chain_cut false 2 (by decide)
private def v603661209210 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v603661209210 : ¬ MinimalInterpreter v603661209210 :=
  chain_cut true 2 (by decide)
private def v597051734554 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597051734554 : ¬ MinimalInterpreter v597051734554 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655745146 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v587655745146 : ¬ MinimalInterpreter v587655745146 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218758266 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v597218758266 : ¬ MinimalInterpreter v597218758266 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2297466true : BadRow (sources true 2 4 atom2297466) := by
  have h : sources true 2 4 atom2297466 = [v593578703338,v603661209210,v597051734554,v587655745146,v597218758266] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578703338) (.cons (no_v603661209210) (.cons (no_v597051734554) (.cons (no_v587655745146) (.cons (no_v597218758266) .nil)))))

private def atom2296762 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))
private def v725047360418 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.lam (.var 0)))
private theorem no_v725047360418 : ¬ MinimalInterpreter v725047360418 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.lam (.var 0))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.var 0))))
private def v700901952442 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v700901952442 : ¬ MinimalInterpreter v700901952442 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v699291339706 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v699291339706 : ¬ MinimalInterpreter v699291339706 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v699090013114 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v699090013114 : ¬ MinimalInterpreter v699090013114 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom2296762false : BadRow (sources false 2 4 atom2296762) := by
  have h : sources false 2 4 atom2296762 = [v725047360418,v700901952442,v699291339706,v699090013114] := by decide +kernel
  rw [h]
  exact (.cons (no_v725047360418) (.cons (no_v700901952442) (.cons (no_v699291339706) (.cons (no_v699090013114) .nil))))

private def v593578700522 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.var 0)))
private theorem no_v593578700522 : ¬ MinimalInterpreter v593578700522 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.var 0)) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))) (.var 0)))
private def v603661208506 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v603661208506 : ¬ MinimalInterpreter v603661208506 :=
  so_cut false 0 (show SO (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v597051554330 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597051554330 : ¬ MinimalInterpreter v597051554330 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v587655744442 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v587655744442 : ¬ MinimalInterpreter v587655744442 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v597218757562 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v597218757562 : ¬ MinimalInterpreter v597218757562 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom2296762true : BadRow (sources true 2 4 atom2296762) := by
  have h : sources true 2 4 atom2296762 = [v593578700522,v603661208506,v597051554330,v587655744442,v597218757562] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578700522) (.cons (no_v603661208506) (.cons (no_v597051554330) (.cons (no_v587655744442) (.cons (no_v597218757562) .nil)))))

private def atom2887290 : Term := (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))
private def v725056808866 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))) (.lam (.var 0)))
private theorem no_v725056808866 : ¬ MinimalInterpreter v725056808866 :=
  chain_cut false 7 (by decide)
private def v700140389914 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v700140389914 : ¬ MinimalInterpreter v700140389914 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0)))) (.app (.var 1) (.app (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (.var 0))) (.var 0) (by decide) (by decide)))))
private def v700140389986 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))
private theorem no_v700140389986 : ¬ MinimalInterpreter v700140389986 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0)))) (.app (.var 1) (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (.var 0))) (.var 0) (by decide) (by decide)))))
private def v700902542970 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v700902542970 : ¬ MinimalInterpreter v700902542970 :=
  chain_cut false 3 (by decide)
private def v700140389794 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))
private theorem no_v700140389794 : ¬ MinimalInterpreter v700140389794 :=
  so_cut false 1 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0)))) (.app (.var 1) (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (.var 0))) (.var 0) (by decide) (by decide)))))
private def v699291930234 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v699291930234 : ¬ MinimalInterpreter v699291930234 :=
  chain_cut false 7 (by decide)
private def v700140389770 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))
private theorem no_v700140389770 : ¬ MinimalInterpreter v700140389770 :=
  so_cut false 1 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0)))) (.app (.var 1) (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (.var 0))) (.var 0) (by decide) (by decide)))))
private def v699090603642 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v699090603642 : ¬ MinimalInterpreter v699090603642 :=
  chain_cut false 2 (by decide)
theorem atom2887290false : BadRow (sources false 2 4 atom2887290) := by
  have h : sources false 2 4 atom2887290 = [v725056808866,v700140389914,v700140389986,v700902542970,v700140389794,v699291930234,v700140389770,v699090603642] := by decide +kernel
  rw [h]
  exact (.cons (no_v725056808866) (.cons (no_v700140389914) (.cons (no_v700140389986) (.cons (no_v700902542970) (.cons (no_v700140389794) (.cons (no_v699291930234) (.cons (no_v700140389770) (.cons (no_v699090603642) .nil))))))))

private def v593581062634 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))) (.var 0)))
private theorem no_v593581062634 : ¬ MinimalInterpreter v593581062634 :=
  chain_cut false 7 (by decide)
private def v603661799034 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v603661799034 : ¬ MinimalInterpreter v603661799034 :=
  chain_cut true 6 (by decide)
private def v597202729498 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597202729498 : ¬ MinimalInterpreter v597202729498 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587656334970 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v587656334970 : ¬ MinimalInterpreter v587656334970 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587351959066 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v587351959066 : ¬ MinimalInterpreter v587351959066 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597219348090 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v597219348090 : ¬ MinimalInterpreter v597219348090 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2887290true : BadRow (sources true 2 4 atom2887290) := by
  have h : sources true 2 4 atom2887290 = [v593581062634,v603661799034,v597202729498,v587656334970,v587351959066,v597219348090] := by decide +kernel
  rw [h]
  exact (.cons (no_v593581062634) (.cons (no_v603661799034) (.cons (no_v597202729498) (.cons (no_v587656334970) (.cons (no_v587351959066) (.cons (no_v597219348090) .nil))))))

private def atom2886586 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))
private def v725056797602 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.lam (.var 0)))
private theorem no_v725056797602 : ¬ MinimalInterpreter v725056797602 :=
  w_cut false 0 (by decide)
private def v700128855578 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v700128855578 : ¬ MinimalInterpreter v700128855578 :=
  w_cut false 0 (by decide)
private def v700128855650 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))
private theorem no_v700128855650 : ¬ MinimalInterpreter v700128855650 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))))))
private def v700902542266 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v700902542266 : ¬ MinimalInterpreter v700902542266 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v700128855458 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))
private theorem no_v700128855458 : ¬ MinimalInterpreter v700128855458 :=
  w_cut false 0 (by decide)
private def v699291929530 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v699291929530 : ¬ MinimalInterpreter v699291929530 :=
  w_cut false 0 (by decide)
private def v700128855434 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))
private theorem no_v700128855434 : ¬ MinimalInterpreter v700128855434 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0)))))
private def v699090602938 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v699090602938 : ¬ MinimalInterpreter v699090602938 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem atom2886586false : BadRow (sources false 2 4 atom2886586) := by
  have h : sources false 2 4 atom2886586 = [v725056797602,v700128855578,v700128855650,v700902542266,v700128855458,v699291929530,v700128855434,v699090602938] := by decide +kernel
  rw [h]
  exact (.cons (no_v725056797602) (.cons (no_v700128855578) (.cons (no_v700128855650) (.cons (no_v700902542266) (.cons (no_v700128855458) (.cons (no_v699291929530) (.cons (no_v700128855434) (.cons (no_v699090602938) .nil))))))))

private def v593581059818 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.var 0)))
private theorem no_v593581059818 : ¬ MinimalInterpreter v593581059818 :=
  w_cut false 0 (by decide)
private def v603661798330 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v603661798330 : ¬ MinimalInterpreter v603661798330 :=
  so_cut false 0 (show SO (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v597202549274 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597202549274 : ¬ MinimalInterpreter v597202549274 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v587656334266 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v587656334266 : ¬ MinimalInterpreter v587656334266 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v587349075482 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v587349075482 : ¬ MinimalInterpreter v587349075482 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))))
private def v597219347386 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v597219347386 : ¬ MinimalInterpreter v597219347386 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem atom2886586true : BadRow (sources true 2 4 atom2886586) := by
  have h : sources true 2 4 atom2886586 = [v593581059818,v603661798330,v597202549274,v587656334266,v587349075482,v597219347386] := by decide +kernel
  rw [h]
  exact (.cons (no_v593581059818) (.cons (no_v603661798330) (.cons (no_v597202549274) (.cons (no_v587656334266) (.cons (no_v587349075482) (.cons (no_v597219347386) .nil))))))

theorem atoms21 : Every (fun b => ∀ lit, BadRow (sources lit 2 4 b)) (atoms 2 4 [0,1,2,0]) := by
  have h : atoms 2 4 [0,1,2,0] = [atom2150010,atom2149306,atom2143866,atom2143162,atom2141626,atom2297466,atom2296762,atom2887290,atom2886586] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom2150010false | exact atom2150010true) (.cons (fun lit => by cases lit <;> first | exact atom2149306false | exact atom2149306true) (.cons (fun lit => by cases lit <;> first | exact atom2143866false | exact atom2143866true) (.cons (fun lit => by cases lit <;> first | exact atom2143162false | exact atom2143162true) (.cons (fun lit => by cases lit <;> first | exact atom2141626false | exact atom2141626true) (.cons (fun lit => by cases lit <;> first | exact atom2297466false | exact atom2297466true) (.cons (fun lit => by cases lit <;> first | exact atom2296762false | exact atom2296762true) (.cons (fun lit => by cases lit <;> first | exact atom2887290false | exact atom2887290true) (.cons (fun lit => by cases lit <;> first | exact atom2886586false | exact atom2886586true) .nil)))))))))
private def atom2150198 : Term := (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))))
private def v725045015394 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))))) (.lam (.var 0)))
private theorem no_v725045015394 : ¬ MinimalInterpreter v725045015394 :=
  chain_cut false 2 (by decide)
private def v700901805878 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v700901805878 : ¬ MinimalInterpreter v700901805878 :=
  chain_cut false 2 (by decide)
private def v699291193142 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v699291193142 : ¬ MinimalInterpreter v699291193142 :=
  chain_cut false 2 (by decide)
private def v699089866550 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v699089866550 : ¬ MinimalInterpreter v699089866550 :=
  chain_cut false 3 (by decide)
theorem atom2150198false : BadRow (sources false 2 4 atom2150198) := by
  have h : sources false 2 4 atom2150198 = [v725045015394,v700901805878,v699291193142,v699089866550] := by decide +kernel
  rw [h]
  exact (.cons (no_v725045015394) (.cons (no_v700901805878) (.cons (no_v699291193142) (.cons (no_v699089866550) .nil))))

private def v593578114266 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))))) (.var 0)))
private theorem no_v593578114266 : ¬ MinimalInterpreter v593578114266 :=
  chain_cut false 2 (by decide)
private def v603661061942 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v603661061942 : ¬ MinimalInterpreter v603661061942 :=
  chain_cut true 2 (by decide)
private def v597014033946 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597014033946 : ¬ MinimalInterpreter v597014033946 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655597878 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v587655597878 : ¬ MinimalInterpreter v587655597878 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218610998 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v597218610998 : ¬ MinimalInterpreter v597218610998 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2150198true : BadRow (sources true 2 4 atom2150198) := by
  have h : sources true 2 4 atom2150198 = [v593578114266,v603661061942,v597014033946,v587655597878,v597218610998] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578114266) (.cons (no_v603661061942) (.cons (no_v597014033946) (.cons (no_v587655597878) (.cons (no_v597218610998) .nil)))))

private def atom2149334 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))))
private def v725045001570 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))))) (.lam (.var 0)))
private theorem no_v725045001570 : ¬ MinimalInterpreter v725045001570 :=
  chain_cut false 2 (by decide)
private def v700901805014 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v700901805014 : ¬ MinimalInterpreter v700901805014 :=
  chain_cut false 2 (by decide)
private def v699291192278 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v699291192278 : ¬ MinimalInterpreter v699291192278 :=
  chain_cut false 2 (by decide)
private def v699089865686 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v699089865686 : ¬ MinimalInterpreter v699089865686 :=
  chain_cut false 3 (by decide)
theorem atom2149334false : BadRow (sources false 2 4 atom2149334) := by
  have h : sources false 2 4 atom2149334 = [v725045001570,v700901805014,v699291192278,v699089865686] := by decide +kernel
  rw [h]
  exact (.cons (no_v725045001570) (.cons (no_v700901805014) (.cons (no_v699291192278) (.cons (no_v699089865686) .nil))))

private def v593578110810 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))))) (.var 0)))
private theorem no_v593578110810 : ¬ MinimalInterpreter v593578110810 :=
  chain_cut false 2 (by decide)
private def v603661061078 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v603661061078 : ¬ MinimalInterpreter v603661061078 :=
  chain_cut true 2 (by decide)
private def v597013812762 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597013812762 : ¬ MinimalInterpreter v597013812762 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655597014 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v587655597014 : ¬ MinimalInterpreter v587655597014 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218610134 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v597218610134 : ¬ MinimalInterpreter v597218610134 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2149334true : BadRow (sources true 2 4 atom2149334) := by
  have h : sources true 2 4 atom2149334 = [v593578110810,v603661061078,v597013812762,v587655597014,v597218610134] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578110810) (.cons (no_v603661061078) (.cons (no_v597013812762) (.cons (no_v587655597014) (.cons (no_v597218610134) .nil)))))

private def atom2144054 : Term := (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))))
private def v725044917090 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))))) (.lam (.var 0)))
private theorem no_v725044917090 : ¬ MinimalInterpreter v725044917090 :=
  chain_cut false 2 (by decide)
private def v700901799734 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v700901799734 : ¬ MinimalInterpreter v700901799734 :=
  chain_cut false 2 (by decide)
private def v699291186998 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v699291186998 : ¬ MinimalInterpreter v699291186998 :=
  chain_cut false 2 (by decide)
private def v699089860406 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v699089860406 : ¬ MinimalInterpreter v699089860406 :=
  chain_cut false 3 (by decide)
theorem atom2144054false : BadRow (sources false 2 4 atom2144054) := by
  have h : sources false 2 4 atom2144054 = [v725044917090,v700901799734,v699291186998,v699089860406] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044917090) (.cons (no_v700901799734) (.cons (no_v699291186998) (.cons (no_v699089860406) .nil))))

private def v593578089690 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))))) (.var 0)))
private theorem no_v593578089690 : ¬ MinimalInterpreter v593578089690 :=
  chain_cut false 2 (by decide)
private def v603661055798 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))))))))
private theorem no_v603661055798 : ¬ MinimalInterpreter v603661055798 :=
  chain_cut true 2 (by decide)
private def v597012461082 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597012461082 : ¬ MinimalInterpreter v597012461082 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655591734 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))))))))
private theorem no_v587655591734 : ¬ MinimalInterpreter v587655591734 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218604854 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v597218604854 : ¬ MinimalInterpreter v597218604854 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2144054true : BadRow (sources true 2 4 atom2144054) := by
  have h : sources true 2 4 atom2144054 = [v593578089690,v603661055798,v597012461082,v587655591734,v597218604854] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578089690) (.cons (no_v603661055798) (.cons (no_v597012461082) (.cons (no_v587655591734) (.cons (no_v597218604854) .nil)))))

private def atom2143190 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))))
private def v725044903266 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))))) (.lam (.var 0)))
private theorem no_v725044903266 : ¬ MinimalInterpreter v725044903266 :=
  chain_cut false 2 (by decide)
private def v700901798870 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v700901798870 : ¬ MinimalInterpreter v700901798870 :=
  chain_cut false 2 (by decide)
private def v699291186134 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v699291186134 : ¬ MinimalInterpreter v699291186134 :=
  chain_cut false 2 (by decide)
private def v699089859542 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v699089859542 : ¬ MinimalInterpreter v699089859542 :=
  chain_cut false 3 (by decide)
theorem atom2143190false : BadRow (sources false 2 4 atom2143190) := by
  have h : sources false 2 4 atom2143190 = [v725044903266,v700901798870,v699291186134,v699089859542] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044903266) (.cons (no_v700901798870) (.cons (no_v699291186134) (.cons (no_v699089859542) .nil))))

private def v593578086234 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))))) (.var 0)))
private theorem no_v593578086234 : ¬ MinimalInterpreter v593578086234 :=
  chain_cut false 2 (by decide)
private def v603661054934 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))))))))
private theorem no_v603661054934 : ¬ MinimalInterpreter v603661054934 :=
  chain_cut true 2 (by decide)
private def v597012239898 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597012239898 : ¬ MinimalInterpreter v597012239898 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655590870 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))))))))
private theorem no_v587655590870 : ¬ MinimalInterpreter v587655590870 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218603990 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v597218603990 : ¬ MinimalInterpreter v597218603990 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2143190true : BadRow (sources true 2 4 atom2143190) := by
  have h : sources true 2 4 atom2143190 = [v593578086234,v603661054934,v597012239898,v587655590870,v597218603990] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578086234) (.cons (no_v603661054934) (.cons (no_v597012239898) (.cons (no_v587655590870) (.cons (no_v597218603990) .nil)))))

private def atom2141654 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))
private def v725044878690 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))) (.lam (.var 0)))
private theorem no_v725044878690 : ¬ MinimalInterpreter v725044878690 :=
  chain_cut false 2 (by decide)
private def v700901797334 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v700901797334 : ¬ MinimalInterpreter v700901797334 :=
  chain_cut false 2 (by decide)
private def v699291184598 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v699291184598 : ¬ MinimalInterpreter v699291184598 :=
  chain_cut false 2 (by decide)
private def v699089858006 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v699089858006 : ¬ MinimalInterpreter v699089858006 :=
  chain_cut false 3 (by decide)
theorem atom2141654false : BadRow (sources false 2 4 atom2141654) := by
  have h : sources false 2 4 atom2141654 = [v725044878690,v700901797334,v699291184598,v699089858006] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044878690) (.cons (no_v700901797334) (.cons (no_v699291184598) (.cons (no_v699089858006) .nil))))

private def v593578080090 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))) (.var 0)))
private theorem no_v593578080090 : ¬ MinimalInterpreter v593578080090 :=
  chain_cut false 2 (by decide)
private def v603661053398 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))))))
private theorem no_v603661053398 : ¬ MinimalInterpreter v603661053398 :=
  chain_cut true 2 (by decide)
private def v597011846682 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597011846682 : ¬ MinimalInterpreter v597011846682 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655589334 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))))))
private theorem no_v587655589334 : ¬ MinimalInterpreter v587655589334 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218602454 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v597218602454 : ¬ MinimalInterpreter v597218602454 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2141654true : BadRow (sources true 2 4 atom2141654) := by
  have h : sources true 2 4 atom2141654 = [v593578080090,v603661053398,v597011846682,v587655589334,v597218602454] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578080090) (.cons (no_v603661053398) (.cons (no_v597011846682) (.cons (no_v587655589334) (.cons (no_v597218602454) .nil)))))

private def atom2297654 : Term := (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))
private def v725047374690 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))) (.lam (.var 0)))
private theorem no_v725047374690 : ¬ MinimalInterpreter v725047374690 :=
  chain_cut false 2 (by decide)
private def v700901953334 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v700901953334 : ¬ MinimalInterpreter v700901953334 :=
  chain_cut false 2 (by decide)
private def v699291340598 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v699291340598 : ¬ MinimalInterpreter v699291340598 :=
  chain_cut false 2 (by decide)
private def v699090014006 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v699090014006 : ¬ MinimalInterpreter v699090014006 :=
  chain_cut false 4 (by decide)
theorem atom2297654false : BadRow (sources false 2 4 atom2297654) := by
  have h : sources false 2 4 atom2297654 = [v725047374690,v700901953334,v699291340598,v699090014006] := by decide +kernel
  rw [h]
  exact (.cons (no_v725047374690) (.cons (no_v700901953334) (.cons (no_v699291340598) (.cons (no_v699090014006) .nil))))

private def v593578704090 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))) (.var 0)))
private theorem no_v593578704090 : ¬ MinimalInterpreter v593578704090 :=
  chain_cut false 2 (by decide)
private def v603661209398 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v603661209398 : ¬ MinimalInterpreter v603661209398 :=
  chain_cut true 2 (by decide)
private def v597051782682 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597051782682 : ¬ MinimalInterpreter v597051782682 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655745334 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v587655745334 : ¬ MinimalInterpreter v587655745334 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218758454 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v597218758454 : ¬ MinimalInterpreter v597218758454 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2297654true : BadRow (sources true 2 4 atom2297654) := by
  have h : sources true 2 4 atom2297654 = [v593578704090,v603661209398,v597051782682,v587655745334,v597218758454] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578704090) (.cons (no_v603661209398) (.cons (no_v597051782682) (.cons (no_v587655745334) (.cons (no_v597218758454) .nil)))))

private def atom2296790 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))
private def v725047360866 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))) (.lam (.var 0)))
private theorem no_v725047360866 : ¬ MinimalInterpreter v725047360866 :=
  chain_cut false 2 (by decide)
private def v700901952470 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v700901952470 : ¬ MinimalInterpreter v700901952470 :=
  chain_cut false 2 (by decide)
private def v699291339734 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v699291339734 : ¬ MinimalInterpreter v699291339734 :=
  chain_cut false 2 (by decide)
private def v699090013142 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v699090013142 : ¬ MinimalInterpreter v699090013142 :=
  chain_cut false 4 (by decide)
theorem atom2296790false : BadRow (sources false 2 4 atom2296790) := by
  have h : sources false 2 4 atom2296790 = [v725047360866,v700901952470,v699291339734,v699090013142] := by decide +kernel
  rw [h]
  exact (.cons (no_v725047360866) (.cons (no_v700901952470) (.cons (no_v699291339734) (.cons (no_v699090013142) .nil))))

private def v593578700634 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))) (.var 0)))
private theorem no_v593578700634 : ¬ MinimalInterpreter v593578700634 :=
  chain_cut false 2 (by decide)
private def v603661208534 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v603661208534 : ¬ MinimalInterpreter v603661208534 :=
  chain_cut true 2 (by decide)
private def v597051561498 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597051561498 : ¬ MinimalInterpreter v597051561498 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655744470 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v587655744470 : ¬ MinimalInterpreter v587655744470 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218757590 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v597218757590 : ¬ MinimalInterpreter v597218757590 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2296790true : BadRow (sources true 2 4 atom2296790) := by
  have h : sources true 2 4 atom2296790 = [v593578700634,v603661208534,v597051561498,v587655744470,v597218757590] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578700634) (.cons (no_v603661208534) (.cons (no_v597051561498) (.cons (no_v587655744470) (.cons (no_v597218757590) .nil)))))

private def atom2887478 : Term := (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))
private def v725056811874 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))) (.lam (.var 0)))
private theorem no_v725056811874 : ¬ MinimalInterpreter v725056811874 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v700143470106 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v700143470106 : ¬ MinimalInterpreter v700143470106 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 1)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 1)))) (.app (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)))))
private def v700143470178 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))
private theorem no_v700143470178 : ¬ MinimalInterpreter v700143470178 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.app (.var 0) (.var 1)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.app (.var 0) (.var 1)))) (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)))))
private def v700902543158 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v700902543158 : ¬ MinimalInterpreter v700902543158 :=
  chain_cut false 3 (by decide)
private def v700143469986 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))
private theorem no_v700143469986 : ¬ MinimalInterpreter v700143469986 :=
  so_cut false 1 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.var 1)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.var 1)))) (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)))))
private def v699291930422 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v699291930422 : ¬ MinimalInterpreter v699291930422 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v700143469962 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))
private theorem no_v700143469962 : ¬ MinimalInterpreter v700143469962 :=
  so_cut false 1 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.var 0) (.var 1)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.var 0) (.var 1)))) (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)))))
private def v699090603830 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v699090603830 : ¬ MinimalInterpreter v699090603830 :=
  chain_cut false 2 (by decide)
theorem atom2887478false : BadRow (sources false 2 4 atom2887478) := by
  have h : sources false 2 4 atom2887478 = [v725056811874,v700143470106,v700143470178,v700902543158,v700143469986,v699291930422,v700143469962,v699090603830] := by decide +kernel
  rw [h]
  exact (.cons (no_v725056811874) (.cons (no_v700143470106) (.cons (no_v700143470178) (.cons (no_v700902543158) (.cons (no_v700143469986) (.cons (no_v699291930422) (.cons (no_v700143469962) (.cons (no_v699090603830) .nil))))))))

private def v593581063386 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))) (.var 0)))
private theorem no_v593581063386 : ¬ MinimalInterpreter v593581063386 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v603661799222 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v603661799222 : ¬ MinimalInterpreter v603661799222 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597202777626 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597202777626 : ¬ MinimalInterpreter v597202777626 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587656335158 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v587656335158 : ¬ MinimalInterpreter v587656335158 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587352729114 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v587352729114 : ¬ MinimalInterpreter v587352729114 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597219348278 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v597219348278 : ¬ MinimalInterpreter v597219348278 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2887478true : BadRow (sources true 2 4 atom2887478) := by
  have h : sources true 2 4 atom2887478 = [v593581063386,v603661799222,v597202777626,v587656335158,v587352729114,v597219348278] := by decide +kernel
  rw [h]
  exact (.cons (no_v593581063386) (.cons (no_v603661799222) (.cons (no_v597202777626) (.cons (no_v587656335158) (.cons (no_v587352729114) (.cons (no_v597219348278) .nil))))))

private def atom2886614 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))
private def v725056798050 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))) (.lam (.var 0)))
private theorem no_v725056798050 : ¬ MinimalInterpreter v725056798050 :=
  chain_cut false 6 (by decide)
private def v700129314330 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v700129314330 : ¬ MinimalInterpreter v700129314330 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))) (.app (.app (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)))))
private def v700129314402 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))
private theorem no_v700129314402 : ¬ MinimalInterpreter v700129314402 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0)) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0)) (.var 1))) (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)))))
private def v700902542294 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v700902542294 : ¬ MinimalInterpreter v700902542294 :=
  chain_cut false 3 (by decide)
private def v700129314210 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))
private theorem no_v700129314210 : ¬ MinimalInterpreter v700129314210 :=
  so_cut false 1 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0)) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0)) (.var 1))) (.app (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)))))
private def v699291929558 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v699291929558 : ¬ MinimalInterpreter v699291929558 :=
  chain_cut false 6 (by decide)
private def v700129314186 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))
private theorem no_v700129314186 : ¬ MinimalInterpreter v700129314186 :=
  so_cut false 1 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0)) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0)) (.var 1))) (.app (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)))))
private def v699090602966 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v699090602966 : ¬ MinimalInterpreter v699090602966 :=
  chain_cut false 2 (by decide)
theorem atom2886614false : BadRow (sources false 2 4 atom2886614) := by
  have h : sources false 2 4 atom2886614 = [v725056798050,v700129314330,v700129314402,v700902542294,v700129314210,v699291929558,v700129314186,v699090602966] := by decide +kernel
  rw [h]
  exact (.cons (no_v725056798050) (.cons (no_v700129314330) (.cons (no_v700129314402) (.cons (no_v700902542294) (.cons (no_v700129314210) (.cons (no_v699291929558) (.cons (no_v700129314186) (.cons (no_v699090602966) .nil))))))))

private def v593581059930 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))) (.var 0)))
private theorem no_v593581059930 : ¬ MinimalInterpreter v593581059930 :=
  chain_cut false 6 (by decide)
private def v603661798358 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v603661798358 : ¬ MinimalInterpreter v603661798358 :=
  chain_cut true 5 (by decide)
private def v597202556442 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597202556442 : ¬ MinimalInterpreter v597202556442 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587656334294 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v587656334294 : ¬ MinimalInterpreter v587656334294 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587349190170 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v587349190170 : ¬ MinimalInterpreter v587349190170 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597219347414 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v597219347414 : ¬ MinimalInterpreter v597219347414 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2886614true : BadRow (sources true 2 4 atom2886614) := by
  have h : sources true 2 4 atom2886614 = [v593581059930,v603661798358,v597202556442,v587656334294,v587349190170,v597219347414] := by decide +kernel
  rw [h]
  exact (.cons (no_v593581059930) (.cons (no_v603661798358) (.cons (no_v597202556442) (.cons (no_v587656334294) (.cons (no_v587349190170) (.cons (no_v597219347414) .nil))))))

theorem atoms22 : Every (fun b => ∀ lit, BadRow (sources lit 2 4 b)) (atoms 2 4 [0,2,0,1]) := by
  have h : atoms 2 4 [0,2,0,1] = [atom2150198,atom2149334,atom2144054,atom2143190,atom2141654,atom2297654,atom2296790,atom2887478,atom2886614] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom2150198false | exact atom2150198true) (.cons (fun lit => by cases lit <;> first | exact atom2149334false | exact atom2149334true) (.cons (fun lit => by cases lit <;> first | exact atom2144054false | exact atom2144054true) (.cons (fun lit => by cases lit <;> first | exact atom2143190false | exact atom2143190true) (.cons (fun lit => by cases lit <;> first | exact atom2141654false | exact atom2141654true) (.cons (fun lit => by cases lit <;> first | exact atom2297654false | exact atom2297654true) (.cons (fun lit => by cases lit <;> first | exact atom2296790false | exact atom2296790true) (.cons (fun lit => by cases lit <;> first | exact atom2887478false | exact atom2887478true) (.cons (fun lit => by cases lit <;> first | exact atom2886614false | exact atom2886614true) .nil)))))))))
private def atom2150202 : Term := (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))))
private def v725045015458 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))))) (.lam (.var 0)))
private theorem no_v725045015458 : ¬ MinimalInterpreter v725045015458 :=
  chain_cut false 2 (by decide)
private def v700901805882 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v700901805882 : ¬ MinimalInterpreter v700901805882 :=
  chain_cut false 2 (by decide)
private def v699291193146 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v699291193146 : ¬ MinimalInterpreter v699291193146 :=
  chain_cut false 2 (by decide)
private def v699089866554 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v699089866554 : ¬ MinimalInterpreter v699089866554 :=
  chain_cut false 3 (by decide)
theorem atom2150202false : BadRow (sources false 2 4 atom2150202) := by
  have h : sources false 2 4 atom2150202 = [v725045015458,v700901805882,v699291193146,v699089866554] := by decide +kernel
  rw [h]
  exact (.cons (no_v725045015458) (.cons (no_v700901805882) (.cons (no_v699291193146) (.cons (no_v699089866554) .nil))))

private def v593578114282 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))))) (.var 0)))
private theorem no_v593578114282 : ¬ MinimalInterpreter v593578114282 :=
  chain_cut false 2 (by decide)
private def v603661061946 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v603661061946 : ¬ MinimalInterpreter v603661061946 :=
  chain_cut true 2 (by decide)
private def v597014034970 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597014034970 : ¬ MinimalInterpreter v597014034970 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655597882 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v587655597882 : ¬ MinimalInterpreter v587655597882 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218611002 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v597218611002 : ¬ MinimalInterpreter v597218611002 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2150202true : BadRow (sources true 2 4 atom2150202) := by
  have h : sources true 2 4 atom2150202 = [v593578114282,v603661061946,v597014034970,v587655597882,v597218611002] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578114282) (.cons (no_v603661061946) (.cons (no_v597014034970) (.cons (no_v587655597882) (.cons (no_v597218611002) .nil)))))

private def atom2149338 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))
private def v725045001634 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.lam (.var 0)))
private theorem no_v725045001634 : ¬ MinimalInterpreter v725045001634 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.lam (.var 0))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.var 0))))
private def v700901805018 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v700901805018 : ¬ MinimalInterpreter v700901805018 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v699291192282 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v699291192282 : ¬ MinimalInterpreter v699291192282 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v699089865690 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v699089865690 : ¬ MinimalInterpreter v699089865690 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom2149338false : BadRow (sources false 2 4 atom2149338) := by
  have h : sources false 2 4 atom2149338 = [v725045001634,v700901805018,v699291192282,v699089865690] := by decide +kernel
  rw [h]
  exact (.cons (no_v725045001634) (.cons (no_v700901805018) (.cons (no_v699291192282) (.cons (no_v699089865690) .nil))))

private def v593578110826 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.var 0)))
private theorem no_v593578110826 : ¬ MinimalInterpreter v593578110826 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.var 0)) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0)))
private def v603661061082 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v603661061082 : ¬ MinimalInterpreter v603661061082 :=
  so_cut false 0 (show SO (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v597013813786 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597013813786 : ¬ MinimalInterpreter v597013813786 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v587655597018 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v587655597018 : ¬ MinimalInterpreter v587655597018 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v597218610138 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v597218610138 : ¬ MinimalInterpreter v597218610138 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom2149338true : BadRow (sources true 2 4 atom2149338) := by
  have h : sources true 2 4 atom2149338 = [v593578110826,v603661061082,v597013813786,v587655597018,v597218610138] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578110826) (.cons (no_v603661061082) (.cons (no_v597013813786) (.cons (no_v587655597018) (.cons (no_v597218610138) .nil)))))

private def atom2144058 : Term := (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))))
private def v725044917154 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))))) (.lam (.var 0)))
private theorem no_v725044917154 : ¬ MinimalInterpreter v725044917154 :=
  chain_cut false 2 (by decide)
private def v700901799738 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v700901799738 : ¬ MinimalInterpreter v700901799738 :=
  chain_cut false 2 (by decide)
private def v699291187002 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v699291187002 : ¬ MinimalInterpreter v699291187002 :=
  chain_cut false 2 (by decide)
private def v699089860410 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v699089860410 : ¬ MinimalInterpreter v699089860410 :=
  chain_cut false 3 (by decide)
theorem atom2144058false : BadRow (sources false 2 4 atom2144058) := by
  have h : sources false 2 4 atom2144058 = [v725044917154,v700901799738,v699291187002,v699089860410] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044917154) (.cons (no_v700901799738) (.cons (no_v699291187002) (.cons (no_v699089860410) .nil))))

private def v593578089706 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))))) (.var 0)))
private theorem no_v593578089706 : ¬ MinimalInterpreter v593578089706 :=
  chain_cut false 2 (by decide)
private def v603661055802 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))))))))
private theorem no_v603661055802 : ¬ MinimalInterpreter v603661055802 :=
  chain_cut true 2 (by decide)
private def v597012462106 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597012462106 : ¬ MinimalInterpreter v597012462106 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655591738 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))))))))
private theorem no_v587655591738 : ¬ MinimalInterpreter v587655591738 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218604858 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v597218604858 : ¬ MinimalInterpreter v597218604858 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2144058true : BadRow (sources true 2 4 atom2144058) := by
  have h : sources true 2 4 atom2144058 = [v593578089706,v603661055802,v597012462106,v587655591738,v597218604858] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578089706) (.cons (no_v603661055802) (.cons (no_v597012462106) (.cons (no_v587655591738) (.cons (no_v597218604858) .nil)))))

private def atom2143194 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))
private def v725044903330 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) (.lam (.var 0)))
private theorem no_v725044903330 : ¬ MinimalInterpreter v725044903330 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) (.lam (.var 0))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.var 0))))
private def v700901798874 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v700901798874 : ¬ MinimalInterpreter v700901798874 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v699291186138 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v699291186138 : ¬ MinimalInterpreter v699291186138 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v699089859546 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v699089859546 : ¬ MinimalInterpreter v699089859546 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom2143194false : BadRow (sources false 2 4 atom2143194) := by
  have h : sources false 2 4 atom2143194 = [v725044903330,v700901798874,v699291186138,v699089859546] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044903330) (.cons (no_v700901798874) (.cons (no_v699291186138) (.cons (no_v699089859546) .nil))))

private def v593578086250 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) (.var 0)))
private theorem no_v593578086250 : ¬ MinimalInterpreter v593578086250 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) (.var 0)) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0)))
private def v603661054938 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))))
private theorem no_v603661054938 : ¬ MinimalInterpreter v603661054938 :=
  so_cut false 0 (show SO (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))) from (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v597012240922 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597012240922 : ¬ MinimalInterpreter v597012240922 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v587655590874 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))))
private theorem no_v587655590874 : ¬ MinimalInterpreter v587655590874 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v597218603994 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v597218603994 : ¬ MinimalInterpreter v597218603994 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom2143194true : BadRow (sources true 2 4 atom2143194) := by
  have h : sources true 2 4 atom2143194 = [v593578086250,v603661054938,v597012240922,v587655590874,v597218603994] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578086250) (.cons (no_v603661054938) (.cons (no_v597012240922) (.cons (no_v587655590874) (.cons (no_v597218603994) .nil)))))

private def atom2141658 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))
private def v725044878754 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))) (.lam (.var 0)))
private theorem no_v725044878754 : ¬ MinimalInterpreter v725044878754 :=
  chain_cut false 2 (by decide)
private def v700901797338 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v700901797338 : ¬ MinimalInterpreter v700901797338 :=
  chain_cut false 2 (by decide)
private def v699291184602 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v699291184602 : ¬ MinimalInterpreter v699291184602 :=
  chain_cut false 2 (by decide)
private def v699089858010 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v699089858010 : ¬ MinimalInterpreter v699089858010 :=
  chain_cut false 3 (by decide)
theorem atom2141658false : BadRow (sources false 2 4 atom2141658) := by
  have h : sources false 2 4 atom2141658 = [v725044878754,v700901797338,v699291184602,v699089858010] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044878754) (.cons (no_v700901797338) (.cons (no_v699291184602) (.cons (no_v699089858010) .nil))))

private def v593578080106 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))) (.var 0)))
private theorem no_v593578080106 : ¬ MinimalInterpreter v593578080106 :=
  chain_cut false 2 (by decide)
private def v603661053402 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))))))
private theorem no_v603661053402 : ¬ MinimalInterpreter v603661053402 :=
  chain_cut true 2 (by decide)
private def v597011847706 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597011847706 : ¬ MinimalInterpreter v597011847706 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655589338 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))))))
private theorem no_v587655589338 : ¬ MinimalInterpreter v587655589338 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218602458 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v597218602458 : ¬ MinimalInterpreter v597218602458 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2141658true : BadRow (sources true 2 4 atom2141658) := by
  have h : sources true 2 4 atom2141658 = [v593578080106,v603661053402,v597011847706,v587655589338,v597218602458] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578080106) (.cons (no_v603661053402) (.cons (no_v597011847706) (.cons (no_v587655589338) (.cons (no_v597218602458) .nil)))))

private def atom2297658 : Term := (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))
private def v725047374754 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))) (.lam (.var 0)))
private theorem no_v725047374754 : ¬ MinimalInterpreter v725047374754 :=
  chain_cut false 2 (by decide)
private def v700901953338 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v700901953338 : ¬ MinimalInterpreter v700901953338 :=
  chain_cut false 2 (by decide)
private def v699291340602 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v699291340602 : ¬ MinimalInterpreter v699291340602 :=
  chain_cut false 2 (by decide)
private def v699090014010 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v699090014010 : ¬ MinimalInterpreter v699090014010 :=
  chain_cut false 4 (by decide)
theorem atom2297658false : BadRow (sources false 2 4 atom2297658) := by
  have h : sources false 2 4 atom2297658 = [v725047374754,v700901953338,v699291340602,v699090014010] := by decide +kernel
  rw [h]
  exact (.cons (no_v725047374754) (.cons (no_v700901953338) (.cons (no_v699291340602) (.cons (no_v699090014010) .nil))))

private def v593578704106 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))) (.var 0)))
private theorem no_v593578704106 : ¬ MinimalInterpreter v593578704106 :=
  chain_cut false 2 (by decide)
private def v603661209402 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v603661209402 : ¬ MinimalInterpreter v603661209402 :=
  chain_cut true 2 (by decide)
private def v597051783706 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597051783706 : ¬ MinimalInterpreter v597051783706 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655745338 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v587655745338 : ¬ MinimalInterpreter v587655745338 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218758458 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v597218758458 : ¬ MinimalInterpreter v597218758458 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2297658true : BadRow (sources true 2 4 atom2297658) := by
  have h : sources true 2 4 atom2297658 = [v593578704106,v603661209402,v597051783706,v587655745338,v597218758458] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578704106) (.cons (no_v603661209402) (.cons (no_v597051783706) (.cons (no_v587655745338) (.cons (no_v597218758458) .nil)))))

private def atom2296794 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))
private def v725047360930 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.lam (.var 0)))
private theorem no_v725047360930 : ¬ MinimalInterpreter v725047360930 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.lam (.var 0))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.var 0))))
private def v700901952474 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v700901952474 : ¬ MinimalInterpreter v700901952474 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v699291339738 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v699291339738 : ¬ MinimalInterpreter v699291339738 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v699090013146 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v699090013146 : ¬ MinimalInterpreter v699090013146 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom2296794false : BadRow (sources false 2 4 atom2296794) := by
  have h : sources false 2 4 atom2296794 = [v725047360930,v700901952474,v699291339738,v699090013146] := by decide +kernel
  rw [h]
  exact (.cons (no_v725047360930) (.cons (no_v700901952474) (.cons (no_v699291339738) (.cons (no_v699090013146) .nil))))

private def v593578700650 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.var 0)))
private theorem no_v593578700650 : ¬ MinimalInterpreter v593578700650 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.var 0)) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))) (.var 0)))
private def v603661208538 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v603661208538 : ¬ MinimalInterpreter v603661208538 :=
  so_cut false 0 (show SO (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v597051562522 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597051562522 : ¬ MinimalInterpreter v597051562522 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v587655744474 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v587655744474 : ¬ MinimalInterpreter v587655744474 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v597218757594 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v597218757594 : ¬ MinimalInterpreter v597218757594 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom2296794true : BadRow (sources true 2 4 atom2296794) := by
  have h : sources true 2 4 atom2296794 = [v593578700650,v603661208538,v597051562522,v587655744474,v597218757594] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578700650) (.cons (no_v603661208538) (.cons (no_v597051562522) (.cons (no_v587655744474) (.cons (no_v597218757594) .nil)))))

private def atom2887482 : Term := (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))
private def v725056811938 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))) (.lam (.var 0)))
private theorem no_v725056811938 : ¬ MinimalInterpreter v725056811938 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v700143535642 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v700143535642 : ¬ MinimalInterpreter v700143535642 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0)))) (.app (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)))))
private def v700143535714 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))
private theorem no_v700143535714 : ¬ MinimalInterpreter v700143535714 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.app (.var 1) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.app (.var 1) (.var 0)))) (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)))))
private def v700902543162 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v700902543162 : ¬ MinimalInterpreter v700902543162 :=
  chain_cut false 3 (by decide)
private def v700143535522 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))
private theorem no_v700143535522 : ¬ MinimalInterpreter v700143535522 :=
  so_cut false 1 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 1) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 1) (.var 0)))) (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)))))
private def v699291930426 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v699291930426 : ¬ MinimalInterpreter v699291930426 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v700143535498 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))
private theorem no_v700143535498 : ¬ MinimalInterpreter v700143535498 :=
  so_cut false 1 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.var 1) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.var 1) (.var 0)))) (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)))))
private def v699090603834 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v699090603834 : ¬ MinimalInterpreter v699090603834 :=
  chain_cut false 2 (by decide)
theorem atom2887482false : BadRow (sources false 2 4 atom2887482) := by
  have h : sources false 2 4 atom2887482 = [v725056811938,v700143535642,v700143535714,v700902543162,v700143535522,v699291930426,v700143535498,v699090603834] := by decide +kernel
  rw [h]
  exact (.cons (no_v725056811938) (.cons (no_v700143535642) (.cons (no_v700143535714) (.cons (no_v700902543162) (.cons (no_v700143535522) (.cons (no_v699291930426) (.cons (no_v700143535498) (.cons (no_v699090603834) .nil))))))))

private def v593581063402 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))) (.var 0)))
private theorem no_v593581063402 : ¬ MinimalInterpreter v593581063402 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v603661799226 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v603661799226 : ¬ MinimalInterpreter v603661799226 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597202778650 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597202778650 : ¬ MinimalInterpreter v597202778650 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587656335162 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v587656335162 : ¬ MinimalInterpreter v587656335162 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587352745498 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v587352745498 : ¬ MinimalInterpreter v587352745498 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597219348282 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v597219348282 : ¬ MinimalInterpreter v597219348282 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2887482true : BadRow (sources true 2 4 atom2887482) := by
  have h : sources true 2 4 atom2887482 = [v593581063402,v603661799226,v597202778650,v587656335162,v587352745498,v597219348282] := by decide +kernel
  rw [h]
  exact (.cons (no_v593581063402) (.cons (no_v603661799226) (.cons (no_v597202778650) (.cons (no_v587656335162) (.cons (no_v587352745498) (.cons (no_v597219348282) .nil))))))

private def atom2886618 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))
private def v725056798114 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.lam (.var 0)))
private theorem no_v725056798114 : ¬ MinimalInterpreter v725056798114 :=
  w_cut false 0 (by decide)
private def v700129379866 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v700129379866 : ¬ MinimalInterpreter v700129379866 :=
  w_cut false 0 (by decide)
private def v700129379938 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))
private theorem no_v700129379938 : ¬ MinimalInterpreter v700129379938 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))))))
private def v700902542298 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v700902542298 : ¬ MinimalInterpreter v700902542298 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v700129379746 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))
private theorem no_v700129379746 : ¬ MinimalInterpreter v700129379746 :=
  w_cut false 0 (by decide)
private def v699291929562 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v699291929562 : ¬ MinimalInterpreter v699291929562 :=
  w_cut false 0 (by decide)
private def v700129379722 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))
private theorem no_v700129379722 : ¬ MinimalInterpreter v700129379722 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0)))))
private def v699090602970 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v699090602970 : ¬ MinimalInterpreter v699090602970 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem atom2886618false : BadRow (sources false 2 4 atom2886618) := by
  have h : sources false 2 4 atom2886618 = [v725056798114,v700129379866,v700129379938,v700902542298,v700129379746,v699291929562,v700129379722,v699090602970] := by decide +kernel
  rw [h]
  exact (.cons (no_v725056798114) (.cons (no_v700129379866) (.cons (no_v700129379938) (.cons (no_v700902542298) (.cons (no_v700129379746) (.cons (no_v699291929562) (.cons (no_v700129379722) (.cons (no_v699090602970) .nil))))))))

private def v593581059946 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.var 0)))
private theorem no_v593581059946 : ¬ MinimalInterpreter v593581059946 :=
  w_cut false 0 (by decide)
private def v603661798362 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v603661798362 : ¬ MinimalInterpreter v603661798362 :=
  so_cut false 0 (show SO (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v597202557466 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597202557466 : ¬ MinimalInterpreter v597202557466 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v587656334298 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v587656334298 : ¬ MinimalInterpreter v587656334298 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v587349206554 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v587349206554 : ¬ MinimalInterpreter v587349206554 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))))
private def v597219347418 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v597219347418 : ¬ MinimalInterpreter v597219347418 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem atom2886618true : BadRow (sources true 2 4 atom2886618) := by
  have h : sources true 2 4 atom2886618 = [v593581059946,v603661798362,v597202557466,v587656334298,v587349206554,v597219347418] := by decide +kernel
  rw [h]
  exact (.cons (no_v593581059946) (.cons (no_v603661798362) (.cons (no_v597202557466) (.cons (no_v587656334298) (.cons (no_v587349206554) (.cons (no_v597219347418) .nil))))))

theorem atoms23 : Every (fun b => ∀ lit, BadRow (sources lit 2 4 b)) (atoms 2 4 [0,2,1,0]) := by
  have h : atoms 2 4 [0,2,1,0] = [atom2150202,atom2149338,atom2144058,atom2143194,atom2141658,atom2297658,atom2296794,atom2887482,atom2886618] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom2150202false | exact atom2150202true) (.cons (fun lit => by cases lit <;> first | exact atom2149338false | exact atom2149338true) (.cons (fun lit => by cases lit <;> first | exact atom2144058false | exact atom2144058true) (.cons (fun lit => by cases lit <;> first | exact atom2143194false | exact atom2143194true) (.cons (fun lit => by cases lit <;> first | exact atom2141658false | exact atom2141658true) (.cons (fun lit => by cases lit <;> first | exact atom2297658false | exact atom2297658true) (.cons (fun lit => by cases lit <;> first | exact atom2296794false | exact atom2296794true) (.cons (fun lit => by cases lit <;> first | exact atom2887482false | exact atom2887482true) (.cons (fun lit => by cases lit <;> first | exact atom2886618false | exact atom2886618true) .nil)))))))))
end Blc.SelfintSingleObject.Sat39
