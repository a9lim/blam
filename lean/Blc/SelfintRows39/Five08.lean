import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem atoms24 : Every (fun b => ∀ lit, BadRow (sources lit 2 4 b)) (atoms 2 4 [0,3,0,0]) := by
  have h : atoms 2 4 [0,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil
private def atom2156142 : Term := (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))))
private def v725045110498 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))))) (.lam (.var 0)))
private theorem no_v725045110498 : ¬ MinimalInterpreter v725045110498 :=
  chain_cut false 2 (by decide)
private def v700901811822 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))))))
private theorem no_v700901811822 : ¬ MinimalInterpreter v700901811822 :=
  chain_cut false 2 (by decide)
private def v699291199086 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))))))
private theorem no_v699291199086 : ¬ MinimalInterpreter v699291199086 :=
  chain_cut false 2 (by decide)
private def v699089872494 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))))))
private theorem no_v699089872494 : ¬ MinimalInterpreter v699089872494 :=
  chain_cut false 3 (by decide)
theorem atom2156142false : BadRow (sources false 2 4 atom2156142) := by
  have h : sources false 2 4 atom2156142 = [v725045110498,v700901811822,v699291199086,v699089872494] := by decide +kernel
  rw [h]
  exact (.cons (no_v725045110498) (.cons (no_v700901811822) (.cons (no_v699291199086) (.cons (no_v699089872494) .nil))))

private def v593578138042 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))))) (.var 0)))
private theorem no_v593578138042 : ¬ MinimalInterpreter v593578138042 :=
  chain_cut false 2 (by decide)
private def v603661067886 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))))))))
private theorem no_v603661067886 : ¬ MinimalInterpreter v603661067886 :=
  chain_cut true 2 (by decide)
private def v597015555610 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597015555610 : ¬ MinimalInterpreter v597015555610 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655603822 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))))))))
private theorem no_v587655603822 : ¬ MinimalInterpreter v587655603822 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218616942 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))))))
private theorem no_v597218616942 : ¬ MinimalInterpreter v597218616942 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2156142true : BadRow (sources true 2 4 atom2156142) := by
  have h : sources true 2 4 atom2156142 = [v593578138042,v603661067886,v597015555610,v587655603822,v597218616942] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578138042) (.cons (no_v603661067886) (.cons (no_v597015555610) (.cons (no_v587655603822) (.cons (no_v597218616942) .nil)))))

private def atom2155950 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))
private def v725045107426 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))) (.lam (.var 0)))
private theorem no_v725045107426 : ¬ MinimalInterpreter v725045107426 :=
  chain_cut false 2 (by decide)
private def v700901811630 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))))
private theorem no_v700901811630 : ¬ MinimalInterpreter v700901811630 :=
  chain_cut false 2 (by decide)
private def v699291198894 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))))
private theorem no_v699291198894 : ¬ MinimalInterpreter v699291198894 :=
  chain_cut false 2 (by decide)
private def v699089872302 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))))
private theorem no_v699089872302 : ¬ MinimalInterpreter v699089872302 :=
  chain_cut false 3 (by decide)
theorem atom2155950false : BadRow (sources false 2 4 atom2155950) := by
  have h : sources false 2 4 atom2155950 = [v725045107426,v700901811630,v699291198894,v699089872302] := by decide +kernel
  rw [h]
  exact (.cons (no_v725045107426) (.cons (no_v700901811630) (.cons (no_v699291198894) (.cons (no_v699089872302) .nil))))

private def v593578137274 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))) (.var 0)))
private theorem no_v593578137274 : ¬ MinimalInterpreter v593578137274 :=
  chain_cut false 2 (by decide)
private def v603661067694 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))))))
private theorem no_v603661067694 : ¬ MinimalInterpreter v603661067694 :=
  chain_cut true 2 (by decide)
private def v597015506458 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597015506458 : ¬ MinimalInterpreter v597015506458 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655603630 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))))))
private theorem no_v587655603630 : ¬ MinimalInterpreter v587655603630 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218616750 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))))
private theorem no_v597218616750 : ¬ MinimalInterpreter v597218616750 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2155950true : BadRow (sources true 2 4 atom2155950) := by
  have h : sources true 2 4 atom2155950 = [v593578137274,v603661067694,v597015506458,v587655603630,v597218616750] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578137274) (.cons (no_v603661067694) (.cons (no_v597015506458) (.cons (no_v587655603630) (.cons (no_v597218616750) .nil)))))

private def atom2144878 : Term := (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))))
private def v725044930274 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))) (.lam (.var 0)))
private theorem no_v725044930274 : ¬ MinimalInterpreter v725044930274 :=
  chain_cut false 2 (by decide)
private def v700901800558 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))))))
private theorem no_v700901800558 : ¬ MinimalInterpreter v700901800558 :=
  chain_cut false 2 (by decide)
private def v699291187822 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))))))
private theorem no_v699291187822 : ¬ MinimalInterpreter v699291187822 :=
  chain_cut false 2 (by decide)
private def v699089861230 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))))))
private theorem no_v699089861230 : ¬ MinimalInterpreter v699089861230 :=
  chain_cut false 3 (by decide)
theorem atom2144878false : BadRow (sources false 2 4 atom2144878) := by
  have h : sources false 2 4 atom2144878 = [v725044930274,v700901800558,v699291187822,v699089861230] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044930274) (.cons (no_v700901800558) (.cons (no_v699291187822) (.cons (no_v699089861230) .nil))))

private def v593578092986 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))) (.var 0)))
private theorem no_v593578092986 : ¬ MinimalInterpreter v593578092986 :=
  chain_cut false 2 (by decide)
private def v603661056622 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))))))))
private theorem no_v603661056622 : ¬ MinimalInterpreter v603661056622 :=
  chain_cut true 2 (by decide)
private def v597012672026 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597012672026 : ¬ MinimalInterpreter v597012672026 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655592558 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))))))))
private theorem no_v587655592558 : ¬ MinimalInterpreter v587655592558 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218605678 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))))
private theorem no_v597218605678 : ¬ MinimalInterpreter v597218605678 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2144878true : BadRow (sources true 2 4 atom2144878) := by
  have h : sources true 2 4 atom2144878 = [v593578092986,v603661056622,v597012672026,v587655592558,v597218605678] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578092986) (.cons (no_v603661056622) (.cons (no_v597012672026) (.cons (no_v587655592558) (.cons (no_v597218605678) .nil)))))

private def atom2144686 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))
private def v725044927202 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))) (.lam (.var 0)))
private theorem no_v725044927202 : ¬ MinimalInterpreter v725044927202 :=
  chain_cut false 2 (by decide)
private def v700901800366 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))))
private theorem no_v700901800366 : ¬ MinimalInterpreter v700901800366 :=
  chain_cut false 2 (by decide)
private def v699291187630 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))))
private theorem no_v699291187630 : ¬ MinimalInterpreter v699291187630 :=
  chain_cut false 2 (by decide)
private def v699089861038 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))))
private theorem no_v699089861038 : ¬ MinimalInterpreter v699089861038 :=
  chain_cut false 3 (by decide)
theorem atom2144686false : BadRow (sources false 2 4 atom2144686) := by
  have h : sources false 2 4 atom2144686 = [v725044927202,v700901800366,v699291187630,v699089861038] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044927202) (.cons (no_v700901800366) (.cons (no_v699291187630) (.cons (no_v699089861038) .nil))))

private def v593578092218 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))) (.var 0)))
private theorem no_v593578092218 : ¬ MinimalInterpreter v593578092218 :=
  chain_cut false 2 (by decide)
private def v603661056430 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))))))
private theorem no_v603661056430 : ¬ MinimalInterpreter v603661056430 :=
  chain_cut true 2 (by decide)
private def v597012622874 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597012622874 : ¬ MinimalInterpreter v597012622874 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655592366 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))))))
private theorem no_v587655592366 : ¬ MinimalInterpreter v587655592366 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218605486 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))))
private theorem no_v597218605486 : ¬ MinimalInterpreter v597218605486 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2144686true : BadRow (sources true 2 4 atom2144686) := by
  have h : sources true 2 4 atom2144686 = [v593578092218,v603661056430,v597012622874,v587655592366,v597218605486] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578092218) (.cons (no_v603661056430) (.cons (no_v597012622874) (.cons (no_v587655592366) (.cons (no_v597218605486) .nil)))))

private def atom2141870 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))
private def v725044882146 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))) (.lam (.var 0)))
private theorem no_v725044882146 : ¬ MinimalInterpreter v725044882146 :=
  chain_cut false 2 (by decide)
private def v700901797550 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))))
private theorem no_v700901797550 : ¬ MinimalInterpreter v700901797550 :=
  chain_cut false 2 (by decide)
private def v699291184814 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))))
private theorem no_v699291184814 : ¬ MinimalInterpreter v699291184814 :=
  chain_cut false 2 (by decide)
private def v699089858222 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))))
private theorem no_v699089858222 : ¬ MinimalInterpreter v699089858222 :=
  chain_cut false 3 (by decide)
theorem atom2141870false : BadRow (sources false 2 4 atom2141870) := by
  have h : sources false 2 4 atom2141870 = [v725044882146,v700901797550,v699291184814,v699089858222] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044882146) (.cons (no_v700901797550) (.cons (no_v699291184814) (.cons (no_v699089858222) .nil))))

private def v593578080954 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))) (.var 0)))
private theorem no_v593578080954 : ¬ MinimalInterpreter v593578080954 :=
  chain_cut false 2 (by decide)
private def v603661053614 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))))))
private theorem no_v603661053614 : ¬ MinimalInterpreter v603661053614 :=
  chain_cut true 2 (by decide)
private def v597011901978 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597011901978 : ¬ MinimalInterpreter v597011901978 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655589550 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))))))
private theorem no_v587655589550 : ¬ MinimalInterpreter v587655589550 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218602670 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))))
private theorem no_v597218602670 : ¬ MinimalInterpreter v597218602670 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2141870true : BadRow (sources true 2 4 atom2141870) := by
  have h : sources true 2 4 atom2141870 = [v593578080954,v603661053614,v597011901978,v587655589550,v597218602670] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578080954) (.cons (no_v603661053614) (.cons (no_v597011901978) (.cons (no_v587655589550) (.cons (no_v597218602670) .nil)))))

theorem atoms25 : Every (fun b => ∀ lit, BadRow (sources lit 2 4 b)) (atoms 2 4 [1,0,0,2]) := by
  have h : atoms 2 4 [1,0,0,2] = [atom2156142,atom2155950,atom2144878,atom2144686,atom2141870] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom2156142false | exact atom2156142true) (.cons (fun lit => by cases lit <;> first | exact atom2155950false | exact atom2155950true) (.cons (fun lit => by cases lit <;> first | exact atom2144878false | exact atom2144878true) (.cons (fun lit => by cases lit <;> first | exact atom2144686false | exact atom2144686true) (.cons (fun lit => by cases lit <;> first | exact atom2141870false | exact atom2141870true) .nil)))))
theorem atoms26 : Every (fun b => ∀ lit, BadRow (sources lit 2 4 b)) (atoms 2 4 [1,0,1,1]) := by
  have h : atoms 2 4 [1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil
end Blc.SelfintSingleObject.Sat39
