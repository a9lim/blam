import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def atom2156154 : Term := (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))
private def v725045110690 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))) (.lam (.var 0)))
private theorem no_v725045110690 : ¬ MinimalInterpreter v725045110690 :=
  chain_cut false 2 (by decide)
private def v700901811834 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private theorem no_v700901811834 : ¬ MinimalInterpreter v700901811834 :=
  chain_cut false 2 (by decide)
private def v699291199098 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private theorem no_v699291199098 : ¬ MinimalInterpreter v699291199098 :=
  chain_cut false 2 (by decide)
private def v699089872506 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private theorem no_v699089872506 : ¬ MinimalInterpreter v699089872506 :=
  chain_cut false 3 (by decide)
theorem atom2156154false : BadRow (sources false 2 4 atom2156154) := by
  have h : sources false 2 4 atom2156154 = [v725045110690,v700901811834,v699291199098,v699089872506] := by decide +kernel
  rw [h]
  exact (.cons (no_v725045110690) (.cons (no_v700901811834) (.cons (no_v699291199098) (.cons (no_v699089872506) .nil))))

private def v593578138090 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))) (.var 0)))
private theorem no_v593578138090 : ¬ MinimalInterpreter v593578138090 :=
  chain_cut false 2 (by decide)
private def v603661067898 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))))
private theorem no_v603661067898 : ¬ MinimalInterpreter v603661067898 :=
  chain_cut true 2 (by decide)
private def v597015558682 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597015558682 : ¬ MinimalInterpreter v597015558682 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655603834 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))))
private theorem no_v587655603834 : ¬ MinimalInterpreter v587655603834 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218616954 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v597218616954 : ¬ MinimalInterpreter v597218616954 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2156154true : BadRow (sources true 2 4 atom2156154) := by
  have h : sources true 2 4 atom2156154 = [v593578138090,v603661067898,v597015558682,v587655603834,v597218616954] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578138090) (.cons (no_v603661067898) (.cons (no_v597015558682) (.cons (no_v587655603834) (.cons (no_v597218616954) .nil)))))

private def atom2155962 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))
private def v725045107618 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))) (.lam (.var 0)))
private theorem no_v725045107618 : ¬ MinimalInterpreter v725045107618 :=
  chain_cut false 2 (by decide)
private def v700901811642 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private theorem no_v700901811642 : ¬ MinimalInterpreter v700901811642 :=
  chain_cut false 2 (by decide)
private def v699291198906 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private theorem no_v699291198906 : ¬ MinimalInterpreter v699291198906 :=
  chain_cut false 2 (by decide)
private def v699089872314 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private theorem no_v699089872314 : ¬ MinimalInterpreter v699089872314 :=
  chain_cut false 3 (by decide)
theorem atom2155962false : BadRow (sources false 2 4 atom2155962) := by
  have h : sources false 2 4 atom2155962 = [v725045107618,v700901811642,v699291198906,v699089872314] := by decide +kernel
  rw [h]
  exact (.cons (no_v725045107618) (.cons (no_v700901811642) (.cons (no_v699291198906) (.cons (no_v699089872314) .nil))))

private def v593578137322 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))) (.var 0)))
private theorem no_v593578137322 : ¬ MinimalInterpreter v593578137322 :=
  chain_cut false 2 (by decide)
private def v603661067706 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))))))
private theorem no_v603661067706 : ¬ MinimalInterpreter v603661067706 :=
  chain_cut true 2 (by decide)
private def v597015509530 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597015509530 : ¬ MinimalInterpreter v597015509530 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655603642 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))))))
private theorem no_v587655603642 : ¬ MinimalInterpreter v587655603642 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218616762 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v597218616762 : ¬ MinimalInterpreter v597218616762 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2155962true : BadRow (sources true 2 4 atom2155962) := by
  have h : sources true 2 4 atom2155962 = [v593578137322,v603661067706,v597015509530,v587655603642,v597218616762] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578137322) (.cons (no_v603661067706) (.cons (no_v597015509530) (.cons (no_v587655603642) (.cons (no_v597218616762) .nil)))))

private def atom2144890 : Term := (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))
private def v725044930466 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))) (.lam (.var 0)))
private theorem no_v725044930466 : ¬ MinimalInterpreter v725044930466 :=
  chain_cut false 2 (by decide)
private def v700901800570 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))
private theorem no_v700901800570 : ¬ MinimalInterpreter v700901800570 :=
  chain_cut false 2 (by decide)
private def v699291187834 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))
private theorem no_v699291187834 : ¬ MinimalInterpreter v699291187834 :=
  chain_cut false 2 (by decide)
private def v699089861242 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))
private theorem no_v699089861242 : ¬ MinimalInterpreter v699089861242 :=
  chain_cut false 3 (by decide)
theorem atom2144890false : BadRow (sources false 2 4 atom2144890) := by
  have h : sources false 2 4 atom2144890 = [v725044930466,v700901800570,v699291187834,v699089861242] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044930466) (.cons (no_v700901800570) (.cons (no_v699291187834) (.cons (no_v699089861242) .nil))))

private def v593578093034 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))) (.var 0)))
private theorem no_v593578093034 : ¬ MinimalInterpreter v593578093034 :=
  chain_cut false 2 (by decide)
private def v603661056634 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))))
private theorem no_v603661056634 : ¬ MinimalInterpreter v603661056634 :=
  chain_cut true 2 (by decide)
private def v597012675098 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597012675098 : ¬ MinimalInterpreter v597012675098 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655592570 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))))
private theorem no_v587655592570 : ¬ MinimalInterpreter v587655592570 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218605690 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v597218605690 : ¬ MinimalInterpreter v597218605690 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2144890true : BadRow (sources true 2 4 atom2144890) := by
  have h : sources true 2 4 atom2144890 = [v593578093034,v603661056634,v597012675098,v587655592570,v597218605690] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578093034) (.cons (no_v603661056634) (.cons (no_v597012675098) (.cons (no_v587655592570) (.cons (no_v597218605690) .nil)))))

private def atom2144698 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))
private def v725044927394 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))) (.lam (.var 0)))
private theorem no_v725044927394 : ¬ MinimalInterpreter v725044927394 :=
  chain_cut false 2 (by decide)
private def v700901800378 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))))
private theorem no_v700901800378 : ¬ MinimalInterpreter v700901800378 :=
  chain_cut false 2 (by decide)
private def v699291187642 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))))
private theorem no_v699291187642 : ¬ MinimalInterpreter v699291187642 :=
  chain_cut false 2 (by decide)
private def v699089861050 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))))
private theorem no_v699089861050 : ¬ MinimalInterpreter v699089861050 :=
  chain_cut false 3 (by decide)
theorem atom2144698false : BadRow (sources false 2 4 atom2144698) := by
  have h : sources false 2 4 atom2144698 = [v725044927394,v700901800378,v699291187642,v699089861050] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044927394) (.cons (no_v700901800378) (.cons (no_v699291187642) (.cons (no_v699089861050) .nil))))

private def v593578092266 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))) (.var 0)))
private theorem no_v593578092266 : ¬ MinimalInterpreter v593578092266 :=
  chain_cut false 2 (by decide)
private def v603661056442 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))))))
private theorem no_v603661056442 : ¬ MinimalInterpreter v603661056442 :=
  chain_cut true 2 (by decide)
private def v597012625946 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597012625946 : ¬ MinimalInterpreter v597012625946 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655592378 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))))))
private theorem no_v587655592378 : ¬ MinimalInterpreter v587655592378 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218605498 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v597218605498 : ¬ MinimalInterpreter v597218605498 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2144698true : BadRow (sources true 2 4 atom2144698) := by
  have h : sources true 2 4 atom2144698 = [v593578092266,v603661056442,v597012625946,v587655592378,v597218605498] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578092266) (.cons (no_v603661056442) (.cons (no_v597012625946) (.cons (no_v587655592378) (.cons (no_v597218605498) .nil)))))

private def atom2141882 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))
private def v725044882338 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))) (.lam (.var 0)))
private theorem no_v725044882338 : ¬ MinimalInterpreter v725044882338 :=
  chain_cut false 2 (by decide)
private def v700901797562 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))))
private theorem no_v700901797562 : ¬ MinimalInterpreter v700901797562 :=
  chain_cut false 2 (by decide)
private def v699291184826 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))))
private theorem no_v699291184826 : ¬ MinimalInterpreter v699291184826 :=
  chain_cut false 2 (by decide)
private def v699089858234 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))))
private theorem no_v699089858234 : ¬ MinimalInterpreter v699089858234 :=
  chain_cut false 3 (by decide)
theorem atom2141882false : BadRow (sources false 2 4 atom2141882) := by
  have h : sources false 2 4 atom2141882 = [v725044882338,v700901797562,v699291184826,v699089858234] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044882338) (.cons (no_v700901797562) (.cons (no_v699291184826) (.cons (no_v699089858234) .nil))))

private def v593578081002 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))) (.var 0)))
private theorem no_v593578081002 : ¬ MinimalInterpreter v593578081002 :=
  chain_cut false 2 (by decide)
private def v603661053626 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))))))
private theorem no_v603661053626 : ¬ MinimalInterpreter v603661053626 :=
  chain_cut true 2 (by decide)
private def v597011905050 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597011905050 : ¬ MinimalInterpreter v597011905050 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655589562 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))))))
private theorem no_v587655589562 : ¬ MinimalInterpreter v587655589562 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218602682 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v597218602682 : ¬ MinimalInterpreter v597218602682 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2141882true : BadRow (sources true 2 4 atom2141882) := by
  have h : sources true 2 4 atom2141882 = [v593578081002,v603661053626,v597011905050,v587655589562,v597218602682] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578081002) (.cons (no_v603661053626) (.cons (no_v597011905050) (.cons (no_v587655589562) (.cons (no_v597218602682) .nil)))))

theorem atoms27 : Every (fun b => ∀ lit, BadRow (sources lit 2 4 b)) (atoms 2 4 [1,0,2,0]) := by
  have h : atoms 2 4 [1,0,2,0] = [atom2156154,atom2155962,atom2144890,atom2144698,atom2141882] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom2156154false | exact atom2156154true) (.cons (fun lit => by cases lit <;> first | exact atom2155962false | exact atom2155962true) (.cons (fun lit => by cases lit <;> first | exact atom2144890false | exact atom2144890true) (.cons (fun lit => by cases lit <;> first | exact atom2144698false | exact atom2144698true) (.cons (fun lit => by cases lit <;> first | exact atom2141882false | exact atom2141882true) .nil)))))
theorem atoms28 : Every (fun b => ∀ lit, BadRow (sources lit 2 4 b)) (atoms 2 4 [1,1,0,1]) := by
  have h : atoms 2 4 [1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil
theorem atoms29 : Every (fun b => ∀ lit, BadRow (sources lit 2 4 b)) (atoms 2 4 [1,1,1,0]) := by
  have h : atoms 2 4 [1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil
end Blc.SelfintSingleObject.Sat39
