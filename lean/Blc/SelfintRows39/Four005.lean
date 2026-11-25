import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v701157205622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1)))))))))
private theorem no_v701157205622 : ¬ MinimalInterpreter v701157205622 :=
  chain_cut false 2 (by decide)
private def v701157205430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1))))))))
private theorem no_v701157205430 : ¬ MinimalInterpreter v701157205430 :=
  chain_cut false 2 (by decide)
private def v701157177974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1))))))))
private theorem no_v701157177974 : ¬ MinimalInterpreter v701157177974 :=
  chain_cut false 2 (by decide)
private def v701157177782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1)))))))
private theorem no_v701157177782 : ¬ MinimalInterpreter v701157177782 :=
  chain_cut false 2 (by decide)
private def v701157170870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1)))))))
private theorem no_v701157170870 : ¬ MinimalInterpreter v701157170870 :=
  chain_cut false 2 (by decide)
private def v701156484726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 1))))))))
private theorem no_v701156484726 : ¬ MinimalInterpreter v701156484726 :=
  chain_cut false 2 (by decide)
private def v701156484534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 1)) (.var 1)))))))
private theorem no_v701156484534 : ¬ MinimalInterpreter v701156484534 :=
  chain_cut false 2 (by decide)
private def v701156457078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.app (.var 1) (.var 1)))))))
private theorem no_v701156457078 : ¬ MinimalInterpreter v701156457078 :=
  chain_cut false 2 (by decide)
private def v701156276854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 1) (.var 1)))))))
private theorem no_v701156276854 : ¬ MinimalInterpreter v701156276854 :=
  chain_cut false 2 (by decide)
private def v701156456886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1)))) (.var 1))))))
private theorem no_v701156456886 : ¬ MinimalInterpreter v701156456886 :=
  chain_cut false 2 (by decide)
private def v701156449974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1))) (.var 1))))))
private theorem no_v701156449974 : ¬ MinimalInterpreter v701156449974 :=
  chain_cut false 2 (by decide)
private def v701156276662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1))) (.var 1))))))
private theorem no_v701156276662 : ¬ MinimalInterpreter v701156276662 :=
  chain_cut false 2 (by decide)
private def v701156269750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1)) (.var 1))))))
private theorem no_v701156269750 : ¬ MinimalInterpreter v701156269750 :=
  chain_cut false 2 (by decide)
private def v701156224694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1)) (.var 1))))))
private theorem no_v701156224694 : ¬ MinimalInterpreter v701156224694 :=
  chain_cut false 2 (by decide)
private def v701168215670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1)))))))))
private theorem no_v701168215670 : ¬ MinimalInterpreter v701168215670 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168215478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1))))))))
private theorem no_v701168215478 : ¬ MinimalInterpreter v701168215478 :=
  chain_cut false 9 (by decide)
private def v701168188022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1))))))))
private theorem no_v701168188022 : ¬ MinimalInterpreter v701168188022 :=
  w_cut false 0 (by decide)
private def v701168187830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1)))))))
private theorem no_v701168187830 : ¬ MinimalInterpreter v701168187830 :=
  chain_cut false 10 (by decide)
private def v701168180918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1)))))))
private theorem no_v701168180918 : ¬ MinimalInterpreter v701168180918 :=
  w_cut false 0 (by decide)
private def v701165500854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))) (.var 1)))))
private theorem no_v701165500854 : ¬ MinimalInterpreter v701165500854 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701165493942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))) (.var 1)))))
private theorem no_v701165493942 : ¬ MinimalInterpreter v701165493942 :=
  w_cut false 0 (by decide)
theorem row30 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [1,2,0,1,1]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [1,2,0,1,1] = [v701157205622,v701157205430,v701157177974,v701157177782,v701157170870,v701156484726,v701156484534,v701156457078,v701156276854,v701156456886,v701156449974,v701156276662,v701156269750,v701156224694,v701168215670,v701168215478,v701168188022,v701168187830,v701168180918,v701165500854,v701165493942] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157205622) (.cons (no_v701157205430) (.cons (no_v701157177974) (.cons (no_v701157177782) (.cons (no_v701157170870) (.cons (no_v701156484726) (.cons (no_v701156484534) (.cons (no_v701156457078) (.cons (no_v701156276854) (.cons (no_v701156456886) (.cons (no_v701156449974) (.cons (no_v701156276662) (.cons (no_v701156269750) (.cons (no_v701156224694) (.cons (no_v701168215670) (.cons (no_v701168215478) (.cons (no_v701168188022) (.cons (no_v701168187830) (.cons (no_v701168180918) (.cons (no_v701165500854) (.cons (no_v701165493942) .nil)))))))))))))))))))))

private def v701157205626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v701157205626 : ¬ MinimalInterpreter v701157205626 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157205434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v701157205434 : ¬ MinimalInterpreter v701157205434 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157177978 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v701157177978 : ¬ MinimalInterpreter v701157177978 :=
  chain_cut true 4 (by decide)
private def v701157177786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v701157177786 : ¬ MinimalInterpreter v701157177786 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157170874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v701157170874 : ¬ MinimalInterpreter v701157170874 :=
  chain_cut true 4 (by decide)
private def v701156484730 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private theorem no_v701156484730 : ¬ MinimalInterpreter v701156484730 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156484538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private theorem no_v701156484538 : ¬ MinimalInterpreter v701156484538 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156457082 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.app (.var 2) (.var 0)))))))
private theorem no_v701156457082 : ¬ MinimalInterpreter v701156457082 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156276858 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 2) (.var 0)))))))
private theorem no_v701156276858 : ¬ MinimalInterpreter v701156276858 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156456890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 2)))) (.var 0))))))
private theorem no_v701156456890 : ¬ MinimalInterpreter v701156456890 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156449978 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 2))) (.var 0))))))
private theorem no_v701156449978 : ¬ MinimalInterpreter v701156449978 :=
  chain_cut true 4 (by decide)
private def v701156276666 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 2))) (.var 0))))))
private theorem no_v701156276666 : ¬ MinimalInterpreter v701156276666 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156269754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 2)) (.var 0))))))
private theorem no_v701156269754 : ¬ MinimalInterpreter v701156269754 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156224698 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 2)) (.var 0))))))
private theorem no_v701156224698 : ¬ MinimalInterpreter v701156224698 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem row31 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [1,2,0,2,0]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [1,2,0,2,0] = [v701157205626,v701157205434,v701157177978,v701157177786,v701157170874,v701156484730,v701156484538,v701156457082,v701156276858,v701156456890,v701156449978,v701156276666,v701156269754,v701156224698] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157205626) (.cons (no_v701157205434) (.cons (no_v701157177978) (.cons (no_v701157177786) (.cons (no_v701157170874) (.cons (no_v701156484730) (.cons (no_v701156484538) (.cons (no_v701156457082) (.cons (no_v701156276858) (.cons (no_v701156456890) (.cons (no_v701156449978) (.cons (no_v701156276666) (.cons (no_v701156269754) (.cons (no_v701156224698) .nil))))))))))))))

private def v701157205814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1)))))))))
private theorem no_v701157205814 : ¬ MinimalInterpreter v701157205814 :=
  chain_cut false 2 (by decide)
private def v701157205462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1))))))))
private theorem no_v701157205462 : ¬ MinimalInterpreter v701157205462 :=
  chain_cut false 2 (by decide)
private def v701157178166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1))))))))
private theorem no_v701157178166 : ¬ MinimalInterpreter v701157178166 :=
  chain_cut false 2 (by decide)
private def v701157177814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1)))))))
private theorem no_v701157177814 : ¬ MinimalInterpreter v701157177814 :=
  chain_cut false 2 (by decide)
private def v701157170902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1)))))))
private theorem no_v701157170902 : ¬ MinimalInterpreter v701157170902 :=
  chain_cut false 2 (by decide)
private def v701156484918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.app (.var 0) (.var 1))))))))
private theorem no_v701156484918 : ¬ MinimalInterpreter v701156484918 :=
  chain_cut false 2 (by decide)
private def v701156484566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 1) (.var 0)) (.var 1)))))))
private theorem no_v701156484566 : ¬ MinimalInterpreter v701156484566 :=
  chain_cut false 2 (by decide)
private def v701156457270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 1)))))))
private theorem no_v701156457270 : ¬ MinimalInterpreter v701156457270 :=
  chain_cut false 2 (by decide)
private def v701156277046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.app (.var 0) (.var 1)))))))
private theorem no_v701156277046 : ¬ MinimalInterpreter v701156277046 :=
  chain_cut false 2 (by decide)
private def v701156456918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0)))) (.var 1))))))
private theorem no_v701156456918 : ¬ MinimalInterpreter v701156456918 :=
  chain_cut false 2 (by decide)
private def v701156450006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 1))))))
private theorem no_v701156450006 : ¬ MinimalInterpreter v701156450006 :=
  chain_cut false 2 (by decide)
private def v701156276694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0))) (.var 1))))))
private theorem no_v701156276694 : ¬ MinimalInterpreter v701156276694 :=
  chain_cut false 2 (by decide)
private def v701156269782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.var 1))))))
private theorem no_v701156269782 : ¬ MinimalInterpreter v701156269782 :=
  chain_cut false 2 (by decide)
private def v701156224726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.var 1))))))
private theorem no_v701156224726 : ¬ MinimalInterpreter v701156224726 :=
  chain_cut false 2 (by decide)
private def v701168215862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1)))))))))
private theorem no_v701168215862 : ¬ MinimalInterpreter v701168215862 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168215510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1))))))))
private theorem no_v701168215510 : ¬ MinimalInterpreter v701168215510 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168188214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1))))))))
private theorem no_v701168188214 : ¬ MinimalInterpreter v701168188214 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701168187862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1)))))))
private theorem no_v701168187862 : ¬ MinimalInterpreter v701168187862 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701168180950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1)))))))
private theorem no_v701168180950 : ¬ MinimalInterpreter v701168180950 :=
  chain_cut true 9 (by decide)
private def v701165500886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))) (.var 1)))))
private theorem no_v701165500886 : ¬ MinimalInterpreter v701165500886 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701165493974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.var 1)))))
private theorem no_v701165493974 : ¬ MinimalInterpreter v701165493974 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.var 1))) (.app (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 1)) (.var 0) (by decide) (by decide)))))
theorem row32 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [1,2,1,0,1]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [1,2,1,0,1] = [v701157205814,v701157205462,v701157178166,v701157177814,v701157170902,v701156484918,v701156484566,v701156457270,v701156277046,v701156456918,v701156450006,v701156276694,v701156269782,v701156224726,v701168215862,v701168215510,v701168188214,v701168187862,v701168180950,v701165500886,v701165493974] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157205814) (.cons (no_v701157205462) (.cons (no_v701157178166) (.cons (no_v701157177814) (.cons (no_v701157170902) (.cons (no_v701156484918) (.cons (no_v701156484566) (.cons (no_v701156457270) (.cons (no_v701156277046) (.cons (no_v701156456918) (.cons (no_v701156450006) (.cons (no_v701156276694) (.cons (no_v701156269782) (.cons (no_v701156224726) (.cons (no_v701168215862) (.cons (no_v701168215510) (.cons (no_v701168188214) (.cons (no_v701168187862) (.cons (no_v701168180950) (.cons (no_v701165500886) (.cons (no_v701165493974) .nil)))))))))))))))))))))

private def v701157205818 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0)))))))))
private theorem no_v701157205818 : ¬ MinimalInterpreter v701157205818 :=
  chain_cut false 2 (by decide)
private def v701157205466 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))))
private theorem no_v701157205466 : ¬ MinimalInterpreter v701157205466 :=
  chain_cut false 2 (by decide)
private def v701157178170 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0))))))))
private theorem no_v701157178170 : ¬ MinimalInterpreter v701157178170 :=
  chain_cut false 2 (by decide)
private def v701157177818 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))))
private theorem no_v701157177818 : ¬ MinimalInterpreter v701157177818 :=
  chain_cut false 2 (by decide)
private def v701157170906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))))))
private theorem no_v701157170906 : ¬ MinimalInterpreter v701157170906 :=
  chain_cut false 2 (by decide)
private def v701156484922 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 0))))))))
private theorem no_v701156484922 : ¬ MinimalInterpreter v701156484922 :=
  chain_cut false 2 (by decide)
private def v701156484570 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 0)))))))
private theorem no_v701156484570 : ¬ MinimalInterpreter v701156484570 :=
  chain_cut false 2 (by decide)
private def v701156457274 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)))))))
private theorem no_v701156457274 : ¬ MinimalInterpreter v701156457274 :=
  chain_cut false 2 (by decide)
private def v701156277050 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.app (.var 1) (.var 0)))))))
private theorem no_v701156277050 : ¬ MinimalInterpreter v701156277050 :=
  chain_cut false 2 (by decide)
private def v701156456922 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 1)))) (.var 0))))))
private theorem no_v701156456922 : ¬ MinimalInterpreter v701156456922 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 1)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 1)))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 1)))) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156450010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 1))) (.var 0))))))
private theorem no_v701156450010 : ¬ MinimalInterpreter v701156450010 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 1))) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156276698 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 1))) (.var 0))))))
private theorem no_v701156276698 : ¬ MinimalInterpreter v701156276698 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 1))) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156269786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 1)) (.var 0))))))
private theorem no_v701156269786 : ¬ MinimalInterpreter v701156269786 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 1)) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156224730 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 1)) (.var 0))))))
private theorem no_v701156224730 : ¬ MinimalInterpreter v701156224730 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701168215866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0)))))))))
private theorem no_v701168215866 : ¬ MinimalInterpreter v701168215866 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168215514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))))
private theorem no_v701168215514 : ¬ MinimalInterpreter v701168215514 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168188218 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0))))))))
private theorem no_v701168188218 : ¬ MinimalInterpreter v701168188218 :=
  chain_cut true 9 (by decide)
private def v701168187866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))))
private theorem no_v701168187866 : ¬ MinimalInterpreter v701168187866 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701168180954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))))))
private theorem no_v701168180954 : ¬ MinimalInterpreter v701168180954 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem row33 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [1,2,1,1,0]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [1,2,1,1,0] = [v701157205818,v701157205466,v701157178170,v701157177818,v701157170906,v701156484922,v701156484570,v701156457274,v701156277050,v701156456922,v701156450010,v701156276698,v701156269786,v701156224730,v701168215866,v701168215514,v701168188218,v701168187866,v701168180954] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157205818) (.cons (no_v701157205466) (.cons (no_v701157178170) (.cons (no_v701157177818) (.cons (no_v701157170906) (.cons (no_v701156484922) (.cons (no_v701156484570) (.cons (no_v701156457274) (.cons (no_v701156277050) (.cons (no_v701156456922) (.cons (no_v701156450010) (.cons (no_v701156276698) (.cons (no_v701156269786) (.cons (no_v701156224730) (.cons (no_v701168215866) (.cons (no_v701168215514) (.cons (no_v701168188218) (.cons (no_v701168187866) (.cons (no_v701168180954) .nil)))))))))))))))))))

private def v701157205914 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v701157205914 : ¬ MinimalInterpreter v701157205914 :=
  chain_cut true 5 (by decide)
private def v701157205482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v701157205482 : ¬ MinimalInterpreter v701157205482 :=
  chain_cut true 9 (by decide)
private def v701157178266 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v701157178266 : ¬ MinimalInterpreter v701157178266 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157177834 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v701157177834 : ¬ MinimalInterpreter v701157177834 :=
  chain_cut true 6 (by decide)
private def v701157170922 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v701157170922 : ¬ MinimalInterpreter v701157170922 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156485018 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v701156485018 : ¬ MinimalInterpreter v701156485018 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156484586 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v701156484586 : ¬ MinimalInterpreter v701156484586 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156457370 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.app (.var 0) (.var 0)))))))
private theorem no_v701156457370 : ¬ MinimalInterpreter v701156457370 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))
private def v701156277146 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v701156277146 : ¬ MinimalInterpreter v701156277146 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156456938 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 2) (.var 0)))) (.var 0))))))
private theorem no_v701156456938 : ¬ MinimalInterpreter v701156456938 :=
  chain_cut true 5 (by decide)
private def v701156450026 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.var 0))) (.var 0))))))
private theorem no_v701156450026 : ¬ MinimalInterpreter v701156450026 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156276714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v701156276714 : ¬ MinimalInterpreter v701156276714 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156269802 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0)) (.var 0))))))
private theorem no_v701156269802 : ¬ MinimalInterpreter v701156269802 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))
private def v701156224746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v701156224746 : ¬ MinimalInterpreter v701156224746 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem row34 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [1,2,2,0,0]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [1,2,2,0,0] = [v701157205914,v701157205482,v701157178266,v701157177834,v701157170922,v701156485018,v701156484586,v701156457370,v701156277146,v701156456938,v701156450026,v701156276714,v701156269802,v701156224746] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157205914) (.cons (no_v701157205482) (.cons (no_v701157178266) (.cons (no_v701157177834) (.cons (no_v701157170922) (.cons (no_v701156485018) (.cons (no_v701156484586) (.cons (no_v701156457370) (.cons (no_v701156277146) (.cons (no_v701156456938) (.cons (no_v701156450026) (.cons (no_v701156276714) (.cons (no_v701156269802) (.cons (no_v701156224746) .nil))))))))))))))

private def v701157395694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v701157395694 : ¬ MinimalInterpreter v701157395694 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157395310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v701157395310 : ¬ MinimalInterpreter v701157395310 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157389550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v701157389550 : ¬ MinimalInterpreter v701157389550 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157389166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v701157389166 : ¬ MinimalInterpreter v701157389166 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157387630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v701157387630 : ¬ MinimalInterpreter v701157387630 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156510958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v701156510958 : ¬ MinimalInterpreter v701156510958 :=
  chain_cut false 4 (by decide)
private def v701156510574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v701156510574 : ¬ MinimalInterpreter v701156510574 :=
  chain_cut false 4 (by decide)
private def v701156504814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2)))))))
private theorem no_v701156504814 : ¬ MinimalInterpreter v701156504814 :=
  chain_cut false 4 (by decide)
private def v701156283630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v701156283630 : ¬ MinimalInterpreter v701156283630 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156504430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 2))))))
private theorem no_v701156504430 : ¬ MinimalInterpreter v701156504430 :=
  chain_cut false 4 (by decide)
private def v701156502894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 2))))))
private theorem no_v701156502894 : ¬ MinimalInterpreter v701156502894 :=
  chain_cut false 4 (by decide)
private def v701156283246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v701156283246 : ¬ MinimalInterpreter v701156283246 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v701156281710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)) (.var 2))))))
private theorem no_v701156281710 : ¬ MinimalInterpreter v701156281710 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v701156226414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v701156226414 : ¬ MinimalInterpreter v701156226414 :=
  chain_cut false 5 (by decide)
theorem row35 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [2,0,0,1,2]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [2,0,0,1,2] = [v701157395694,v701157395310,v701157389550,v701157389166,v701157387630,v701156510958,v701156510574,v701156504814,v701156283630,v701156504430,v701156502894,v701156283246,v701156281710,v701156226414] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157395694) (.cons (no_v701157395310) (.cons (no_v701157389550) (.cons (no_v701157389166) (.cons (no_v701157387630) (.cons (no_v701156510958) (.cons (no_v701156510574) (.cons (no_v701156504814) (.cons (no_v701156283630) (.cons (no_v701156504430) (.cons (no_v701156502894) (.cons (no_v701156283246) (.cons (no_v701156281710) (.cons (no_v701156226414) .nil))))))))))))))

end Blc.SelfintSingleObject.Rows39
