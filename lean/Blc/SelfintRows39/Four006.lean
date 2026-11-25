import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v701157395702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v701157395702 : ¬ MinimalInterpreter v701157395702 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157395318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v701157395318 : ¬ MinimalInterpreter v701157395318 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157389558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v701157389558 : ¬ MinimalInterpreter v701157389558 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157389174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v701157389174 : ¬ MinimalInterpreter v701157389174 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157387638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v701157387638 : ¬ MinimalInterpreter v701157387638 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156510966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v701156510966 : ¬ MinimalInterpreter v701156510966 :=
  chain_cut false 4 (by decide)
private def v701156510582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v701156510582 : ¬ MinimalInterpreter v701156510582 :=
  chain_cut false 4 (by decide)
private def v701156504822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1)))))))
private theorem no_v701156504822 : ¬ MinimalInterpreter v701156504822 :=
  chain_cut false 4 (by decide)
private def v701156283638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v701156283638 : ¬ MinimalInterpreter v701156283638 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156504438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 2)))) (.var 1))))))
private theorem no_v701156504438 : ¬ MinimalInterpreter v701156504438 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156502902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 1))))))
private theorem no_v701156502902 : ¬ MinimalInterpreter v701156502902 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156283254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v701156283254 : ¬ MinimalInterpreter v701156283254 :=
  chain_cut false 4 (by decide)
private def v701156281718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 2)) (.var 1))))))
private theorem no_v701156281718 : ¬ MinimalInterpreter v701156281718 :=
  chain_cut false 4 (by decide)
private def v701156226422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v701156226422 : ¬ MinimalInterpreter v701156226422 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
theorem row36 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [2,0,0,2,1]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [2,0,0,2,1] = [v701157395702,v701157395318,v701157389558,v701157389174,v701157387638,v701156510966,v701156510582,v701156504822,v701156283638,v701156504438,v701156502902,v701156283254,v701156281718,v701156226422] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157395702) (.cons (no_v701157395318) (.cons (no_v701157389558) (.cons (no_v701157389174) (.cons (no_v701157387638) (.cons (no_v701156510966) (.cons (no_v701156510582) (.cons (no_v701156504822) (.cons (no_v701156283638) (.cons (no_v701156504438) (.cons (no_v701156502902) (.cons (no_v701156283254) (.cons (no_v701156281718) (.cons (no_v701156226422) .nil))))))))))))))

private def v701157396078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v701157396078 : ¬ MinimalInterpreter v701157396078 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157395374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v701157395374 : ¬ MinimalInterpreter v701157395374 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157389934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v701157389934 : ¬ MinimalInterpreter v701157389934 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157389230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v701157389230 : ¬ MinimalInterpreter v701157389230 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157387694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v701157387694 : ¬ MinimalInterpreter v701157387694 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156511342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v701156511342 : ¬ MinimalInterpreter v701156511342 :=
  chain_cut false 4 (by decide)
private def v701156510638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v701156510638 : ¬ MinimalInterpreter v701156510638 :=
  chain_cut false 4 (by decide)
private def v701156505198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 2)))))))
private theorem no_v701156505198 : ¬ MinimalInterpreter v701156505198 :=
  chain_cut false 4 (by decide)
private def v701156284014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v701156284014 : ¬ MinimalInterpreter v701156284014 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v701156504494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 2))))))
private theorem no_v701156504494 : ¬ MinimalInterpreter v701156504494 :=
  chain_cut false 4 (by decide)
private def v701156502958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 2))))))
private theorem no_v701156502958 : ¬ MinimalInterpreter v701156502958 :=
  chain_cut false 4 (by decide)
private def v701156283310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v701156283310 : ¬ MinimalInterpreter v701156283310 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156281774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)) (.var 2))))))
private theorem no_v701156281774 : ¬ MinimalInterpreter v701156281774 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156226478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v701156226478 : ¬ MinimalInterpreter v701156226478 :=
  chain_cut false 5 (by decide)
theorem row37 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [2,0,1,0,2]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [2,0,1,0,2] = [v701157396078,v701157395374,v701157389934,v701157389230,v701157387694,v701156511342,v701156510638,v701156505198,v701156284014,v701156504494,v701156502958,v701156283310,v701156281774,v701156226478] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157396078) (.cons (no_v701157395374) (.cons (no_v701157389934) (.cons (no_v701157389230) (.cons (no_v701157387694) (.cons (no_v701156511342) (.cons (no_v701156510638) (.cons (no_v701156505198) (.cons (no_v701156284014) (.cons (no_v701156504494) (.cons (no_v701156502958) (.cons (no_v701156283310) (.cons (no_v701156281774) (.cons (no_v701156226478) .nil))))))))))))))

private def v701157396086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 1)))))))))
private theorem no_v701157396086 : ¬ MinimalInterpreter v701157396086 :=
  chain_cut false 2 (by decide)
private def v701157395382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))))))))
private theorem no_v701157395382 : ¬ MinimalInterpreter v701157395382 :=
  chain_cut false 2 (by decide)
private def v701157389942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))))))
private theorem no_v701157389942 : ¬ MinimalInterpreter v701157389942 :=
  chain_cut false 2 (by decide)
private def v701157389238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))))))
private theorem no_v701157389238 : ¬ MinimalInterpreter v701157389238 :=
  chain_cut false 2 (by decide)
private def v701157387702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))))))
private theorem no_v701157387702 : ¬ MinimalInterpreter v701157387702 :=
  chain_cut false 2 (by decide)
private def v701156511350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 1))))))))
private theorem no_v701156511350 : ¬ MinimalInterpreter v701156511350 :=
  chain_cut false 2 (by decide)
private def v701156510646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 1)))))))
private theorem no_v701156510646 : ¬ MinimalInterpreter v701156510646 :=
  chain_cut false 2 (by decide)
private def v701156505206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.app (.var 1) (.var 1)))))))
private theorem no_v701156505206 : ¬ MinimalInterpreter v701156505206 :=
  chain_cut false 2 (by decide)
private def v701156284022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.app (.var 1) (.var 1)))))))
private theorem no_v701156284022 : ¬ MinimalInterpreter v701156284022 :=
  chain_cut false 2 (by decide)
private def v701156504502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1)))) (.var 1))))))
private theorem no_v701156504502 : ¬ MinimalInterpreter v701156504502 :=
  chain_cut false 2 (by decide)
private def v701156502966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1))) (.var 1))))))
private theorem no_v701156502966 : ¬ MinimalInterpreter v701156502966 :=
  chain_cut false 2 (by decide)
private def v701156283318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1))) (.var 1))))))
private theorem no_v701156283318 : ¬ MinimalInterpreter v701156283318 :=
  chain_cut false 2 (by decide)
private def v701156281782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1)) (.var 1))))))
private theorem no_v701156281782 : ¬ MinimalInterpreter v701156281782 :=
  chain_cut false 2 (by decide)
private def v701156226486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1)) (.var 1))))))
private theorem no_v701156226486 : ¬ MinimalInterpreter v701156226486 :=
  chain_cut false 2 (by decide)
theorem row38 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [2,0,1,1,1]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [2,0,1,1,1] = [v701157396086,v701157395382,v701157389942,v701157389238,v701157387702,v701156511350,v701156510646,v701156505206,v701156284022,v701156504502,v701156502966,v701156283318,v701156281782,v701156226486] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157396086) (.cons (no_v701157395382) (.cons (no_v701157389942) (.cons (no_v701157389238) (.cons (no_v701157387702) (.cons (no_v701156511350) (.cons (no_v701156510646) (.cons (no_v701156505206) (.cons (no_v701156284022) (.cons (no_v701156504502) (.cons (no_v701156502966) (.cons (no_v701156283318) (.cons (no_v701156281782) (.cons (no_v701156226486) .nil))))))))))))))

private def v701157396090 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v701157396090 : ¬ MinimalInterpreter v701157396090 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157395386 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v701157395386 : ¬ MinimalInterpreter v701157395386 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157389946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v701157389946 : ¬ MinimalInterpreter v701157389946 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157389242 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v701157389242 : ¬ MinimalInterpreter v701157389242 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157387706 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v701157387706 : ¬ MinimalInterpreter v701157387706 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156511354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v701156511354 : ¬ MinimalInterpreter v701156511354 :=
  chain_cut false 4 (by decide)
private def v701156510650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v701156510650 : ¬ MinimalInterpreter v701156510650 :=
  chain_cut false 4 (by decide)
private def v701156505210 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.app (.var 2) (.var 0)))))))
private theorem no_v701156505210 : ¬ MinimalInterpreter v701156505210 :=
  chain_cut false 4 (by decide)
private def v701156284026 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v701156284026 : ¬ MinimalInterpreter v701156284026 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)
private def v701156504506 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 0))))))
private theorem no_v701156504506 : ¬ MinimalInterpreter v701156504506 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156502970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 0))))))
private theorem no_v701156502970 : ¬ MinimalInterpreter v701156502970 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156283322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v701156283322 : ¬ MinimalInterpreter v701156283322 :=
  chain_cut false 4 (by decide)
private def v701156281786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 2)) (.var 0))))))
private theorem no_v701156281786 : ¬ MinimalInterpreter v701156281786 :=
  chain_cut false 4 (by decide)
private def v701156226490 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v701156226490 : ¬ MinimalInterpreter v701156226490 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem row39 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [2,0,1,2,0]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [2,0,1,2,0] = [v701157396090,v701157395386,v701157389946,v701157389242,v701157387706,v701156511354,v701156510650,v701156505210,v701156284026,v701156504506,v701156502970,v701156283322,v701156281786,v701156226490] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157396090) (.cons (no_v701157395386) (.cons (no_v701157389946) (.cons (no_v701157389242) (.cons (no_v701157387706) (.cons (no_v701156511354) (.cons (no_v701156510650) (.cons (no_v701156505210) (.cons (no_v701156284026) (.cons (no_v701156504506) (.cons (no_v701156502970) (.cons (no_v701156283322) (.cons (no_v701156281786) (.cons (no_v701156226490) .nil))))))))))))))

private def v701157396278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v701157396278 : ¬ MinimalInterpreter v701157396278 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157395414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v701157395414 : ¬ MinimalInterpreter v701157395414 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157390134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v701157390134 : ¬ MinimalInterpreter v701157390134 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157389270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v701157389270 : ¬ MinimalInterpreter v701157389270 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157387734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v701157387734 : ¬ MinimalInterpreter v701157387734 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156511542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v701156511542 : ¬ MinimalInterpreter v701156511542 :=
  chain_cut false 4 (by decide)
private def v701156510678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v701156510678 : ¬ MinimalInterpreter v701156510678 :=
  chain_cut false 4 (by decide)
private def v701156505398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 2))) (.app (.var 0) (.var 1)))))))
private theorem no_v701156505398 : ¬ MinimalInterpreter v701156505398 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156284214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v701156284214 : ¬ MinimalInterpreter v701156284214 :=
  chain_cut false 4 (by decide)
private def v701156504534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 2) (.var 0)))) (.var 1))))))
private theorem no_v701156504534 : ¬ MinimalInterpreter v701156504534 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156502998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 2)) (.var 0))) (.var 1))))))
private theorem no_v701156502998 : ¬ MinimalInterpreter v701156502998 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156283350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v701156283350 : ¬ MinimalInterpreter v701156283350 :=
  chain_cut false 4 (by decide)
private def v701156281814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 2))) (.var 0)) (.var 1))))))
private theorem no_v701156281814 : ¬ MinimalInterpreter v701156281814 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156226518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v701156226518 : ¬ MinimalInterpreter v701156226518 :=
  chain_cut false 4 (by decide)
theorem row40 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [2,0,2,0,1]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [2,0,2,0,1] = [v701157396278,v701157395414,v701157390134,v701157389270,v701157387734,v701156511542,v701156510678,v701156505398,v701156284214,v701156504534,v701156502998,v701156283350,v701156281814,v701156226518] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157396278) (.cons (no_v701157395414) (.cons (no_v701157390134) (.cons (no_v701157389270) (.cons (no_v701157387734) (.cons (no_v701156511542) (.cons (no_v701156510678) (.cons (no_v701156505398) (.cons (no_v701156284214) (.cons (no_v701156504534) (.cons (no_v701156502998) (.cons (no_v701156283350) (.cons (no_v701156281814) (.cons (no_v701156226518) .nil))))))))))))))

private def v701157396282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v701157396282 : ¬ MinimalInterpreter v701157396282 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157395418 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v701157395418 : ¬ MinimalInterpreter v701157395418 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157390138 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v701157390138 : ¬ MinimalInterpreter v701157390138 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157389274 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v701157389274 : ¬ MinimalInterpreter v701157389274 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157387738 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v701157387738 : ¬ MinimalInterpreter v701157387738 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156511546 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v701156511546 : ¬ MinimalInterpreter v701156511546 :=
  chain_cut false 4 (by decide)
private def v701156510682 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v701156510682 : ¬ MinimalInterpreter v701156510682 :=
  chain_cut false 4 (by decide)
private def v701156505402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 2))) (.app (.var 1) (.var 0)))))))
private theorem no_v701156505402 : ¬ MinimalInterpreter v701156505402 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156284218 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v701156284218 : ¬ MinimalInterpreter v701156284218 :=
  chain_cut false 4 (by decide)
private def v701156504538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 0))))))
private theorem no_v701156504538 : ¬ MinimalInterpreter v701156504538 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156503002 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 2)) (.var 1))) (.var 0))))))
private theorem no_v701156503002 : ¬ MinimalInterpreter v701156503002 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156283354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v701156283354 : ¬ MinimalInterpreter v701156283354 :=
  chain_cut false 4 (by decide)
private def v701156281818 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 2))) (.var 1)) (.var 0))))))
private theorem no_v701156281818 : ¬ MinimalInterpreter v701156281818 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)
private def v701156226522 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v701156226522 : ¬ MinimalInterpreter v701156226522 :=
  chain_cut false 4 (by decide)
theorem row41 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [2,0,2,1,0]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [2,0,2,1,0] = [v701157396282,v701157395418,v701157390138,v701157389274,v701157387738,v701156511546,v701156510682,v701156505402,v701156284218,v701156504538,v701156503002,v701156283354,v701156281818,v701156226522] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157396282) (.cons (no_v701157395418) (.cons (no_v701157390138) (.cons (no_v701157389274) (.cons (no_v701157387738) (.cons (no_v701156511546) (.cons (no_v701156510682) (.cons (no_v701156505402) (.cons (no_v701156284218) (.cons (no_v701156504538) (.cons (no_v701156503002) (.cons (no_v701156283354) (.cons (no_v701156281818) (.cons (no_v701156226522) .nil))))))))))))))

end Blc.SelfintSingleObject.Rows39
