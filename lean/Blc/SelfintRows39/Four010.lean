import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v700952333550 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v700952333550 : ¬ MinimalInterpreter v700952333550 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v700952333166 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v700952333166 : ¬ MinimalInterpreter v700952333166 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v700952278254 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v700952278254 : ¬ MinimalInterpreter v700952278254 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v700952277870 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v700952277870 : ¬ MinimalInterpreter v700952277870 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v700952264046 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v700952264046 : ¬ MinimalInterpreter v700952264046 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v699341720814 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v699341720814 : ¬ MinimalInterpreter v699341720814 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v699341720430 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v699341720430 : ¬ MinimalInterpreter v699341720430 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v699341665518 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v699341665518 : ¬ MinimalInterpreter v699341665518 :=
  chain_cut true 8 (by decide)
private def v699341665134 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v699341665134 : ¬ MinimalInterpreter v699341665134 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v699341651310 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v699341651310 : ¬ MinimalInterpreter v699341651310 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem row60 : BadRow (row ⟨0,3,0,2,4,5⟩ [0,0,0] [2,0,1,2]) := by
  have h : row ⟨0,3,0,2,4,5⟩ [0,0,0] [2,0,1,2] = [v700952333550,v700952333166,v700952278254,v700952277870,v700952264046,v699341720814,v699341720430,v699341665518,v699341665134,v699341651310] := by decide +kernel
  rw [h]
  exact (.cons (no_v700952333550) (.cons (no_v700952333166) (.cons (no_v700952278254) (.cons (no_v700952277870) (.cons (no_v700952264046) (.cons (no_v699341720814) (.cons (no_v699341720430) (.cons (no_v699341665518) (.cons (no_v699341665134) (.cons (no_v699341651310) .nil))))))))))

private def v700952333558 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v700952333558 : ¬ MinimalInterpreter v700952333558 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v700952333174 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v700952333174 : ¬ MinimalInterpreter v700952333174 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v700952278262 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v700952278262 : ¬ MinimalInterpreter v700952278262 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v700952277878 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v700952277878 : ¬ MinimalInterpreter v700952277878 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v700952264054 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v700952264054 : ¬ MinimalInterpreter v700952264054 :=
  fun h => Rare39.excludedfour1000 h.1
private def v699341720822 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v699341720822 : ¬ MinimalInterpreter v699341720822 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v699341720438 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v699341720438 : ¬ MinimalInterpreter v699341720438 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v699341665526 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v699341665526 : ¬ MinimalInterpreter v699341665526 :=
  chain_cut true 7 (by decide)
private def v699341665142 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v699341665142 : ¬ MinimalInterpreter v699341665142 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v699341651318 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v699341651318 : ¬ MinimalInterpreter v699341651318 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem row61 : BadRow (row ⟨0,3,0,2,4,5⟩ [0,0,0] [2,0,2,1]) := by
  have h : row ⟨0,3,0,2,4,5⟩ [0,0,0] [2,0,2,1] = [v700952333558,v700952333174,v700952278262,v700952277878,v700952264054,v699341720822,v699341720438,v699341665526,v699341665142,v699341651318] := by decide +kernel
  rw [h]
  exact (.cons (no_v700952333558) (.cons (no_v700952333174) (.cons (no_v700952278262) (.cons (no_v700952277878) (.cons (no_v700952264054) (.cons (no_v699341720822) (.cons (no_v699341720438) (.cons (no_v699341665526) (.cons (no_v699341665142) (.cons (no_v699341651318) .nil))))))))))

private def v700952333934 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v700952333934 : ¬ MinimalInterpreter v700952333934 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v700952333230 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v700952333230 : ¬ MinimalInterpreter v700952333230 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v700952278638 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v700952278638 : ¬ MinimalInterpreter v700952278638 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v700952277934 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v700952277934 : ¬ MinimalInterpreter v700952277934 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v700952264110 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v700952264110 : ¬ MinimalInterpreter v700952264110 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v699341721198 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v699341721198 : ¬ MinimalInterpreter v699341721198 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v699341720494 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v699341720494 : ¬ MinimalInterpreter v699341720494 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v699341665902 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v699341665902 : ¬ MinimalInterpreter v699341665902 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v699341665198 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v699341665198 : ¬ MinimalInterpreter v699341665198 :=
  chain_cut true 9 (by decide)
private def v699341651374 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v699341651374 : ¬ MinimalInterpreter v699341651374 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem row62 : BadRow (row ⟨0,3,0,2,4,5⟩ [0,0,0] [2,1,0,2]) := by
  have h : row ⟨0,3,0,2,4,5⟩ [0,0,0] [2,1,0,2] = [v700952333934,v700952333230,v700952278638,v700952277934,v700952264110,v699341721198,v699341720494,v699341665902,v699341665198,v699341651374] := by decide +kernel
  rw [h]
  exact (.cons (no_v700952333934) (.cons (no_v700952333230) (.cons (no_v700952278638) (.cons (no_v700952277934) (.cons (no_v700952264110) (.cons (no_v699341721198) (.cons (no_v699341720494) (.cons (no_v699341665902) (.cons (no_v699341665198) (.cons (no_v699341651374) .nil))))))))))

theorem row63 : BadRow (row ⟨0,3,0,2,4,5⟩ [0,0,0] [2,1,1,1]) := by
  have h : row ⟨0,3,0,2,4,5⟩ [0,0,0] [2,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v700952333946 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v700952333946 : ¬ MinimalInterpreter v700952333946 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v700952333242 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v700952333242 : ¬ MinimalInterpreter v700952333242 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v700952278650 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v700952278650 : ¬ MinimalInterpreter v700952278650 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v700952277946 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v700952277946 : ¬ MinimalInterpreter v700952277946 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v700952264122 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v700952264122 : ¬ MinimalInterpreter v700952264122 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v699341721210 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v699341721210 : ¬ MinimalInterpreter v699341721210 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v699341720506 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v699341720506 : ¬ MinimalInterpreter v699341720506 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v699341665914 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v699341665914 : ¬ MinimalInterpreter v699341665914 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v699341665210 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v699341665210 : ¬ MinimalInterpreter v699341665210 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v699341651386 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v699341651386 : ¬ MinimalInterpreter v699341651386 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem row64 : BadRow (row ⟨0,3,0,2,4,5⟩ [0,0,0] [2,1,2,0]) := by
  have h : row ⟨0,3,0,2,4,5⟩ [0,0,0] [2,1,2,0] = [v700952333946,v700952333242,v700952278650,v700952277946,v700952264122,v699341721210,v699341720506,v699341665914,v699341665210,v699341651386] := by decide +kernel
  rw [h]
  exact (.cons (no_v700952333946) (.cons (no_v700952333242) (.cons (no_v700952278650) (.cons (no_v700952277946) (.cons (no_v700952264122) (.cons (no_v699341721210) (.cons (no_v699341720506) (.cons (no_v699341665914) (.cons (no_v699341665210) (.cons (no_v699341651386) .nil))))))))))

private def v700952334134 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v700952334134 : ¬ MinimalInterpreter v700952334134 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v700952333270 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v700952333270 : ¬ MinimalInterpreter v700952333270 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v700952278838 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v700952278838 : ¬ MinimalInterpreter v700952278838 :=
  w_cut false 0 (by decide)
private def v700952277974 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v700952277974 : ¬ MinimalInterpreter v700952277974 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v700952264150 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v700952264150 : ¬ MinimalInterpreter v700952264150 :=
  w_cut false 0 (by decide)
private def v699341721398 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v699341721398 : ¬ MinimalInterpreter v699341721398 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v699341720534 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v699341720534 : ¬ MinimalInterpreter v699341720534 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v699341666102 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v699341666102 : ¬ MinimalInterpreter v699341666102 :=
  w_cut false 0 (by decide)
private def v699341665238 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v699341665238 : ¬ MinimalInterpreter v699341665238 :=
  chain_cut true 9 (by decide)
private def v699341651414 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v699341651414 : ¬ MinimalInterpreter v699341651414 :=
  w_cut false 0 (by decide)
theorem row65 : BadRow (row ⟨0,3,0,2,4,5⟩ [0,0,0] [2,2,0,1]) := by
  have h : row ⟨0,3,0,2,4,5⟩ [0,0,0] [2,2,0,1] = [v700952334134,v700952333270,v700952278838,v700952277974,v700952264150,v699341721398,v699341720534,v699341666102,v699341665238,v699341651414] := by decide +kernel
  rw [h]
  exact (.cons (no_v700952334134) (.cons (no_v700952333270) (.cons (no_v700952278838) (.cons (no_v700952277974) (.cons (no_v700952264150) (.cons (no_v699341721398) (.cons (no_v699341720534) (.cons (no_v699341666102) (.cons (no_v699341665238) (.cons (no_v699341651414) .nil))))))))))

end Blc.SelfintSingleObject.Rows39
