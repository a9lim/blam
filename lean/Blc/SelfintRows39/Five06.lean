import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem atoms18 : Every (fun b => ∀ lit, BadRow (sources lit 2 4 b)) (atoms 2 4 [0,0,3,0]) := by
  have h : atoms 2 4 [0,0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil
private def atom2149998 : Term := (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))
private def v725045012194 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))) (.lam (.var 0)))
private theorem no_v725045012194 : ¬ MinimalInterpreter v725045012194 :=
  chain_cut false 2 (by decide)
private def v700901805678 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v700901805678 : ¬ MinimalInterpreter v700901805678 :=
  chain_cut false 2 (by decide)
private def v699291192942 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v699291192942 : ¬ MinimalInterpreter v699291192942 :=
  chain_cut false 2 (by decide)
private def v699089866350 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v699089866350 : ¬ MinimalInterpreter v699089866350 :=
  chain_cut false 3 (by decide)
theorem atom2149998false : BadRow (sources false 2 4 atom2149998) := by
  have h : sources false 2 4 atom2149998 = [v725045012194,v700901805678,v699291192942,v699089866350] := by decide +kernel
  rw [h]
  exact (.cons (no_v725045012194) (.cons (no_v700901805678) (.cons (no_v699291192942) (.cons (no_v699089866350) .nil))))

private def v593578113466 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))) (.var 0)))
private theorem no_v593578113466 : ¬ MinimalInterpreter v593578113466 :=
  chain_cut false 2 (by decide)
private def v603661061742 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v603661061742 : ¬ MinimalInterpreter v603661061742 :=
  chain_cut true 2 (by decide)
private def v597013982746 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597013982746 : ¬ MinimalInterpreter v597013982746 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655597678 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v587655597678 : ¬ MinimalInterpreter v587655597678 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218610798 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v597218610798 : ¬ MinimalInterpreter v597218610798 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2149998true : BadRow (sources true 2 4 atom2149998) := by
  have h : sources true 2 4 atom2149998 = [v593578113466,v603661061742,v597013982746,v587655597678,v597218610798] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578113466) (.cons (no_v603661061742) (.cons (no_v597013982746) (.cons (no_v587655597678) (.cons (no_v597218610798) .nil)))))

private def atom2149294 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))))
private def v725045000930 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.lam (.var 0)))
private theorem no_v725045000930 : ¬ MinimalInterpreter v725045000930 :=
  chain_cut false 2 (by decide)
private def v700901804974 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v700901804974 : ¬ MinimalInterpreter v700901804974 :=
  chain_cut false 2 (by decide)
private def v699291192238 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v699291192238 : ¬ MinimalInterpreter v699291192238 :=
  chain_cut false 2 (by decide)
private def v699089865646 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v699089865646 : ¬ MinimalInterpreter v699089865646 :=
  chain_cut false 3 (by decide)
theorem atom2149294false : BadRow (sources false 2 4 atom2149294) := by
  have h : sources false 2 4 atom2149294 = [v725045000930,v700901804974,v699291192238,v699089865646] := by decide +kernel
  rw [h]
  exact (.cons (no_v725045000930) (.cons (no_v700901804974) (.cons (no_v699291192238) (.cons (no_v699089865646) .nil))))

private def v593578110650 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.var 0)))
private theorem no_v593578110650 : ¬ MinimalInterpreter v593578110650 :=
  chain_cut false 2 (by decide)
private def v603661061038 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v603661061038 : ¬ MinimalInterpreter v603661061038 :=
  chain_cut true 2 (by decide)
private def v597013802522 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597013802522 : ¬ MinimalInterpreter v597013802522 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655596974 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v587655596974 : ¬ MinimalInterpreter v587655596974 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218610094 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v597218610094 : ¬ MinimalInterpreter v597218610094 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2149294true : BadRow (sources true 2 4 atom2149294) := by
  have h : sources true 2 4 atom2149294 = [v593578110650,v603661061038,v597013802522,v587655596974,v597218610094] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578110650) (.cons (no_v603661061038) (.cons (no_v597013802522) (.cons (no_v587655596974) (.cons (no_v597218610094) .nil)))))

private def atom2143854 : Term := (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))))
private def v725044913890 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))))) (.lam (.var 0)))
private theorem no_v725044913890 : ¬ MinimalInterpreter v725044913890 :=
  chain_cut false 2 (by decide)
private def v700901799534 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v700901799534 : ¬ MinimalInterpreter v700901799534 :=
  chain_cut false 2 (by decide)
private def v699291186798 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v699291186798 : ¬ MinimalInterpreter v699291186798 :=
  chain_cut false 2 (by decide)
private def v699089860206 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v699089860206 : ¬ MinimalInterpreter v699089860206 :=
  chain_cut false 3 (by decide)
theorem atom2143854false : BadRow (sources false 2 4 atom2143854) := by
  have h : sources false 2 4 atom2143854 = [v725044913890,v700901799534,v699291186798,v699089860206] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044913890) (.cons (no_v700901799534) (.cons (no_v699291186798) (.cons (no_v699089860206) .nil))))

private def v593578088890 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))))) (.var 0)))
private theorem no_v593578088890 : ¬ MinimalInterpreter v593578088890 :=
  chain_cut false 2 (by decide)
private def v603661055598 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))))))))
private theorem no_v603661055598 : ¬ MinimalInterpreter v603661055598 :=
  chain_cut true 2 (by decide)
private def v597012409882 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597012409882 : ¬ MinimalInterpreter v597012409882 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655591534 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))))))))
private theorem no_v587655591534 : ¬ MinimalInterpreter v587655591534 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218604654 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v597218604654 : ¬ MinimalInterpreter v597218604654 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2143854true : BadRow (sources true 2 4 atom2143854) := by
  have h : sources true 2 4 atom2143854 = [v593578088890,v603661055598,v597012409882,v587655591534,v597218604654] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578088890) (.cons (no_v603661055598) (.cons (no_v597012409882) (.cons (no_v587655591534) (.cons (no_v597218604654) .nil)))))

private def atom2143150 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))
private def v725044902626 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))) (.lam (.var 0)))
private theorem no_v725044902626 : ¬ MinimalInterpreter v725044902626 :=
  chain_cut false 2 (by decide)
private def v700901798830 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v700901798830 : ¬ MinimalInterpreter v700901798830 :=
  chain_cut false 2 (by decide)
private def v699291186094 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v699291186094 : ¬ MinimalInterpreter v699291186094 :=
  chain_cut false 2 (by decide)
private def v699089859502 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v699089859502 : ¬ MinimalInterpreter v699089859502 :=
  chain_cut false 3 (by decide)
theorem atom2143150false : BadRow (sources false 2 4 atom2143150) := by
  have h : sources false 2 4 atom2143150 = [v725044902626,v700901798830,v699291186094,v699089859502] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044902626) (.cons (no_v700901798830) (.cons (no_v699291186094) (.cons (no_v699089859502) .nil))))

private def v593578086074 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))) (.var 0)))
private theorem no_v593578086074 : ¬ MinimalInterpreter v593578086074 :=
  chain_cut false 2 (by decide)
private def v603661054894 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))))))
private theorem no_v603661054894 : ¬ MinimalInterpreter v603661054894 :=
  chain_cut true 2 (by decide)
private def v597012229658 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597012229658 : ¬ MinimalInterpreter v597012229658 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655590830 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))))))
private theorem no_v587655590830 : ¬ MinimalInterpreter v587655590830 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218603950 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v597218603950 : ¬ MinimalInterpreter v597218603950 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2143150true : BadRow (sources true 2 4 atom2143150) := by
  have h : sources true 2 4 atom2143150 = [v593578086074,v603661054894,v597012229658,v587655590830,v597218603950] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578086074) (.cons (no_v603661054894) (.cons (no_v597012229658) (.cons (no_v587655590830) (.cons (no_v597218603950) .nil)))))

private def atom2141614 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))
private def v725044878050 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))))) (.lam (.var 0)))
private theorem no_v725044878050 : ¬ MinimalInterpreter v725044878050 :=
  chain_cut false 2 (by decide)
private def v700901797294 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v700901797294 : ¬ MinimalInterpreter v700901797294 :=
  chain_cut false 2 (by decide)
private def v699291184558 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v699291184558 : ¬ MinimalInterpreter v699291184558 :=
  chain_cut false 2 (by decide)
private def v699089857966 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v699089857966 : ¬ MinimalInterpreter v699089857966 :=
  chain_cut false 3 (by decide)
theorem atom2141614false : BadRow (sources false 2 4 atom2141614) := by
  have h : sources false 2 4 atom2141614 = [v725044878050,v700901797294,v699291184558,v699089857966] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044878050) (.cons (no_v700901797294) (.cons (no_v699291184558) (.cons (no_v699089857966) .nil))))

private def v593578079930 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))))) (.var 0)))
private theorem no_v593578079930 : ¬ MinimalInterpreter v593578079930 :=
  chain_cut false 2 (by decide)
private def v603661053358 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))))))
private theorem no_v603661053358 : ¬ MinimalInterpreter v603661053358 :=
  chain_cut true 2 (by decide)
private def v597011836442 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597011836442 : ¬ MinimalInterpreter v597011836442 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655589294 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))))))
private theorem no_v587655589294 : ¬ MinimalInterpreter v587655589294 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218602414 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v597218602414 : ¬ MinimalInterpreter v597218602414 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2141614true : BadRow (sources true 2 4 atom2141614) := by
  have h : sources true 2 4 atom2141614 = [v593578079930,v603661053358,v597011836442,v587655589294,v597218602414] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578079930) (.cons (no_v603661053358) (.cons (no_v597011836442) (.cons (no_v587655589294) (.cons (no_v597218602414) .nil)))))

private def atom2297454 : Term := (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))
private def v725047371490 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))) (.lam (.var 0)))
private theorem no_v725047371490 : ¬ MinimalInterpreter v725047371490 :=
  chain_cut false 2 (by decide)
private def v700901953134 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v700901953134 : ¬ MinimalInterpreter v700901953134 :=
  chain_cut false 2 (by decide)
private def v699291340398 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v699291340398 : ¬ MinimalInterpreter v699291340398 :=
  chain_cut false 2 (by decide)
private def v699090013806 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v699090013806 : ¬ MinimalInterpreter v699090013806 :=
  chain_cut false 4 (by decide)
theorem atom2297454false : BadRow (sources false 2 4 atom2297454) := by
  have h : sources false 2 4 atom2297454 = [v725047371490,v700901953134,v699291340398,v699090013806] := by decide +kernel
  rw [h]
  exact (.cons (no_v725047371490) (.cons (no_v700901953134) (.cons (no_v699291340398) (.cons (no_v699090013806) .nil))))

private def v593578703290 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))) (.var 0)))
private theorem no_v593578703290 : ¬ MinimalInterpreter v593578703290 :=
  chain_cut false 2 (by decide)
private def v603661209198 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v603661209198 : ¬ MinimalInterpreter v603661209198 :=
  chain_cut true 2 (by decide)
private def v597051731482 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597051731482 : ¬ MinimalInterpreter v597051731482 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655745134 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v587655745134 : ¬ MinimalInterpreter v587655745134 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218758254 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v597218758254 : ¬ MinimalInterpreter v597218758254 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2297454true : BadRow (sources true 2 4 atom2297454) := by
  have h : sources true 2 4 atom2297454 = [v593578703290,v603661209198,v597051731482,v587655745134,v597218758254] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578703290) (.cons (no_v603661209198) (.cons (no_v597051731482) (.cons (no_v587655745134) (.cons (no_v597218758254) .nil)))))

private def atom2296750 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))
private def v725047360226 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.lam (.var 0)))
private theorem no_v725047360226 : ¬ MinimalInterpreter v725047360226 :=
  chain_cut false 2 (by decide)
private def v700901952430 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v700901952430 : ¬ MinimalInterpreter v700901952430 :=
  chain_cut false 2 (by decide)
private def v699291339694 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v699291339694 : ¬ MinimalInterpreter v699291339694 :=
  chain_cut false 2 (by decide)
private def v699090013102 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v699090013102 : ¬ MinimalInterpreter v699090013102 :=
  chain_cut false 4 (by decide)
theorem atom2296750false : BadRow (sources false 2 4 atom2296750) := by
  have h : sources false 2 4 atom2296750 = [v725047360226,v700901952430,v699291339694,v699090013102] := by decide +kernel
  rw [h]
  exact (.cons (no_v725047360226) (.cons (no_v700901952430) (.cons (no_v699291339694) (.cons (no_v699090013102) .nil))))

private def v593578700474 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.var 0)))
private theorem no_v593578700474 : ¬ MinimalInterpreter v593578700474 :=
  chain_cut false 2 (by decide)
private def v603661208494 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v603661208494 : ¬ MinimalInterpreter v603661208494 :=
  chain_cut true 2 (by decide)
private def v597051551258 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597051551258 : ¬ MinimalInterpreter v597051551258 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655744430 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v587655744430 : ¬ MinimalInterpreter v587655744430 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218757550 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v597218757550 : ¬ MinimalInterpreter v597218757550 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2296750true : BadRow (sources true 2 4 atom2296750) := by
  have h : sources true 2 4 atom2296750 = [v593578700474,v603661208494,v597051551258,v587655744430,v597218757550] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578700474) (.cons (no_v603661208494) (.cons (no_v597051551258) (.cons (no_v587655744430) (.cons (no_v597218757550) .nil)))))

private def atom2887278 : Term := (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))
private def v725056808674 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))) (.lam (.var 0)))
private theorem no_v725056808674 : ¬ MinimalInterpreter v725056808674 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v700140193306 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v700140193306 : ¬ MinimalInterpreter v700140193306 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))))) (.var 0) (by decide) (by decide)))))
private def v700140193378 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))
private theorem no_v700140193378 : ¬ MinimalInterpreter v700140193378 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))))) (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))))) (.var 0) (by decide) (by decide)))))
private def v700902542958 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v700902542958 : ¬ MinimalInterpreter v700902542958 :=
  chain_cut false 3 (by decide)
private def v700140193186 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))
private theorem no_v700140193186 : ¬ MinimalInterpreter v700140193186 :=
  so_cut false 1 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))))) (.var 0) (by decide) (by decide)))))
private def v699291930222 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v699291930222 : ¬ MinimalInterpreter v699291930222 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v700140193162 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))
private theorem no_v700140193162 : ¬ MinimalInterpreter v700140193162 :=
  so_cut false 1 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))))) (.var 0) (by decide) (by decide)))))
private def v699090603630 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v699090603630 : ¬ MinimalInterpreter v699090603630 :=
  chain_cut false 2 (by decide)
theorem atom2887278false : BadRow (sources false 2 4 atom2887278) := by
  have h : sources false 2 4 atom2887278 = [v725056808674,v700140193306,v700140193378,v700902542958,v700140193186,v699291930222,v700140193162,v699090603630] := by decide +kernel
  rw [h]
  exact (.cons (no_v725056808674) (.cons (no_v700140193306) (.cons (no_v700140193378) (.cons (no_v700902542958) (.cons (no_v700140193186) (.cons (no_v699291930222) (.cons (no_v700140193162) (.cons (no_v699090603630) .nil))))))))

private def v593581062586 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))) (.var 0)))
private theorem no_v593581062586 : ¬ MinimalInterpreter v593581062586 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v603661799022 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v603661799022 : ¬ MinimalInterpreter v603661799022 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597202726426 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597202726426 : ¬ MinimalInterpreter v597202726426 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587656334958 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v587656334958 : ¬ MinimalInterpreter v587656334958 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587351909914 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v587351909914 : ¬ MinimalInterpreter v587351909914 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597219348078 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v597219348078 : ¬ MinimalInterpreter v597219348078 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2887278true : BadRow (sources true 2 4 atom2887278) := by
  have h : sources true 2 4 atom2887278 = [v593581062586,v603661799022,v597202726426,v587656334958,v587351909914,v597219348078] := by decide +kernel
  rw [h]
  exact (.cons (no_v593581062586) (.cons (no_v603661799022) (.cons (no_v597202726426) (.cons (no_v587656334958) (.cons (no_v587351909914) (.cons (no_v597219348078) .nil))))))

private def atom2886574 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))
private def v725056797410 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.lam (.var 0)))
private theorem no_v725056797410 : ¬ MinimalInterpreter v725056797410 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v700128658970 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v700128658970 : ¬ MinimalInterpreter v700128658970 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (.var 0) (by decide) (by decide)))))
private def v700128659042 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))
private theorem no_v700128659042 : ¬ MinimalInterpreter v700128659042 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))) (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))))) (.var 0) (by decide) (by decide)))))
private def v700902542254 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v700902542254 : ¬ MinimalInterpreter v700902542254 :=
  chain_cut false 3 (by decide)
private def v700128658850 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))
private theorem no_v700128658850 : ¬ MinimalInterpreter v700128658850 :=
  so_cut false 1 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0))))) (.var 0) (by decide) (by decide)))))
private def v699291929518 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v699291929518 : ¬ MinimalInterpreter v699291929518 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v700128658826 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))
private theorem no_v700128658826 : ¬ MinimalInterpreter v700128658826 :=
  so_cut false 1 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0)))) (.var 0) (by decide) (by decide)))))
private def v699090602926 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v699090602926 : ¬ MinimalInterpreter v699090602926 :=
  chain_cut false 2 (by decide)
theorem atom2886574false : BadRow (sources false 2 4 atom2886574) := by
  have h : sources false 2 4 atom2886574 = [v725056797410,v700128658970,v700128659042,v700902542254,v700128658850,v699291929518,v700128658826,v699090602926] := by decide +kernel
  rw [h]
  exact (.cons (no_v725056797410) (.cons (no_v700128658970) (.cons (no_v700128659042) (.cons (no_v700902542254) (.cons (no_v700128658850) (.cons (no_v699291929518) (.cons (no_v700128658826) (.cons (no_v699090602926) .nil))))))))

private def v593581059770 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.var 0)))
private theorem no_v593581059770 : ¬ MinimalInterpreter v593581059770 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v603661798318 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v603661798318 : ¬ MinimalInterpreter v603661798318 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597202546202 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597202546202 : ¬ MinimalInterpreter v597202546202 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587656334254 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v587656334254 : ¬ MinimalInterpreter v587656334254 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587349026330 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v587349026330 : ¬ MinimalInterpreter v587349026330 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597219347374 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v597219347374 : ¬ MinimalInterpreter v597219347374 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2886574true : BadRow (sources true 2 4 atom2886574) := by
  have h : sources true 2 4 atom2886574 = [v593581059770,v603661798318,v597202546202,v587656334254,v587349026330,v597219347374] := by decide +kernel
  rw [h]
  exact (.cons (no_v593581059770) (.cons (no_v603661798318) (.cons (no_v597202546202) (.cons (no_v587656334254) (.cons (no_v587349026330) (.cons (no_v597219347374) .nil))))))

theorem atoms19 : Every (fun b => ∀ lit, BadRow (sources lit 2 4 b)) (atoms 2 4 [0,1,0,2]) := by
  have h : atoms 2 4 [0,1,0,2] = [atom2149998,atom2149294,atom2143854,atom2143150,atom2141614,atom2297454,atom2296750,atom2887278,atom2886574] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom2149998false | exact atom2149998true) (.cons (fun lit => by cases lit <;> first | exact atom2149294false | exact atom2149294true) (.cons (fun lit => by cases lit <;> first | exact atom2143854false | exact atom2143854true) (.cons (fun lit => by cases lit <;> first | exact atom2143150false | exact atom2143150true) (.cons (fun lit => by cases lit <;> first | exact atom2141614false | exact atom2141614true) (.cons (fun lit => by cases lit <;> first | exact atom2297454false | exact atom2297454true) (.cons (fun lit => by cases lit <;> first | exact atom2296750false | exact atom2296750true) (.cons (fun lit => by cases lit <;> first | exact atom2887278false | exact atom2887278true) (.cons (fun lit => by cases lit <;> first | exact atom2886574false | exact atom2886574true) .nil)))))))))
theorem atoms20 : Every (fun b => ∀ lit, BadRow (sources lit 2 4 b)) (atoms 2 4 [0,1,1,1]) := by
  have h : atoms 2 4 [0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil
end Blc.SelfintSingleObject.Sat39
