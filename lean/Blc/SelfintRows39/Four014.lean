import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v701154407406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 3) (.var 2)))))))))
private theorem no_v701154407406 : ¬ MinimalInterpreter v701154407406 :=
  chain_cut false 2 (by decide)
private def v701154405870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 3)) (.var 2))))))))
private theorem no_v701154405870 : ¬ MinimalInterpreter v701154405870 :=
  chain_cut false 2 (by decide)
private def v701154186222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 3) (.var 2))))))))
private theorem no_v701154186222 : ¬ MinimalInterpreter v701154186222 :=
  chain_cut false 2 (by decide)
private def v701154184686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 3))) (.var 2)))))))
private theorem no_v701154184686 : ¬ MinimalInterpreter v701154184686 :=
  chain_cut false 2 (by decide)
private def v701154129390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 3)) (.var 2)))))))
private theorem no_v701154129390 : ¬ MinimalInterpreter v701154129390 :=
  chain_cut false 2 (by decide)
private def v701157356526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 0) (.app (.var 3) (.var 2)))))))))
private theorem no_v701157356526 : ¬ MinimalInterpreter v701157356526 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 0) (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 2) (.lam (.app (.var 0) (.app (.var 3) (.var 2))))))) (so_dead (by decide) (.app (.var 2) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 2))) (.app (.var 2) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))
private def v701157354990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 0) (.var 3)) (.var 2))))))))
private theorem no_v701157354990 : ¬ MinimalInterpreter v701157354990 :=
  w_cut false 0 (by decide)
private def v701157393390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 3) (.var 2)))))))))
private theorem no_v701157393390 : ¬ MinimalInterpreter v701157393390 :=
  chain_cut true 4 (by decide)
private def v701156508654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 3) (.var 2))))))))
private theorem no_v701156508654 : ¬ MinimalInterpreter v701156508654 :=
  chain_cut false 3 (by decide)
theorem row84 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [2,0,3,2]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [2,0,3,2] = [v701154407406,v701154405870,v701154186222,v701154184686,v701154129390,v701157356526,v701157354990,v701157393390,v701156508654] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154407406) (.cons (no_v701154405870) (.cons (no_v701154186222) (.cons (no_v701154184686) (.cons (no_v701154129390) (.cons (no_v701157356526) (.cons (no_v701157354990) (.cons (no_v701157393390) (.cons (no_v701156508654) .nil)))))))))

private def v701154408926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 3)))))))))
private theorem no_v701154408926 : ¬ MinimalInterpreter v701154408926 :=
  chain_cut false 2 (by decide)
private def v701154406110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 3))))))))
private theorem no_v701154406110 : ¬ MinimalInterpreter v701154406110 :=
  chain_cut false 2 (by decide)
private def v701154187742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 3))))))))
private theorem no_v701154187742 : ¬ MinimalInterpreter v701154187742 :=
  chain_cut false 2 (by decide)
private def v701154184926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 3)))))))
private theorem no_v701154184926 : ¬ MinimalInterpreter v701154184926 :=
  chain_cut false 2 (by decide)
private def v701154129630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 3)))))))
private theorem no_v701154129630 : ¬ MinimalInterpreter v701154129630 :=
  chain_cut false 2 (by decide)
private def v701157401054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.app (.var 1) (.var 3)))))))))
private theorem no_v701157401054 : ¬ MinimalInterpreter v701157401054 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156516318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.var 3))))))))
private theorem no_v701156516318 : ¬ MinimalInterpreter v701156516318 :=
  chain_cut false 3 (by decide)
theorem row85 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [2,1,1,3]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [2,1,1,3] = [v701154408926,v701154406110,v701154187742,v701154184926,v701154129630,v701157401054,v701156516318] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154408926) (.cons (no_v701154406110) (.cons (no_v701154187742) (.cons (no_v701154184926) (.cons (no_v701154129630) (.cons (no_v701157401054) (.cons (no_v701156516318) .nil)))))))

private def v701157358062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 1) (.app (.var 2) (.var 2)))))))))
private theorem no_v701157358062 : ¬ MinimalInterpreter v701157358062 :=
  chain_cut false 2 (by decide)
private def v701157355246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 1) (.var 2)) (.var 2))))))))
private theorem no_v701157355246 : ¬ MinimalInterpreter v701157355246 :=
  chain_cut false 2 (by decide)
private def v701156495086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 1) (.var 2)))) (.var 2))))))
private theorem no_v701156495086 : ¬ MinimalInterpreter v701156495086 :=
  chain_cut false 3 (by decide)
theorem row86 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [2,1,2,2]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [2,1,2,2] = [v701157358062,v701157355246,v701156495086] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157358062) (.cons (no_v701157355246) (.cons (no_v701156495086) .nil)))

private def v701154408950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 3) (.var 1)))))))))
private theorem no_v701154408950 : ¬ MinimalInterpreter v701154408950 :=
  chain_cut false 2 (by decide)
private def v701154406134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 3)) (.var 1))))))))
private theorem no_v701154406134 : ¬ MinimalInterpreter v701154406134 :=
  chain_cut false 2 (by decide)
private def v701154187766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 3) (.var 1))))))))
private theorem no_v701154187766 : ¬ MinimalInterpreter v701154187766 :=
  chain_cut false 2 (by decide)
private def v701154184950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 3))) (.var 1)))))))
private theorem no_v701154184950 : ¬ MinimalInterpreter v701154184950 :=
  chain_cut false 2 (by decide)
private def v701154129654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 3)) (.var 1)))))))
private theorem no_v701154129654 : ¬ MinimalInterpreter v701154129654 :=
  chain_cut false 2 (by decide)
private def v701157401078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.app (.var 3) (.var 1)))))))))
private theorem no_v701157401078 : ¬ MinimalInterpreter v701157401078 :=
  chain_cut true 4 (by decide)
private def v701156516342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 3) (.var 1))))))))
private theorem no_v701156516342 : ¬ MinimalInterpreter v701156516342 :=
  chain_cut false 3 (by decide)
private def v701156495094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 1) (.var 3)))) (.var 1))))))
private theorem no_v701156495094 : ¬ MinimalInterpreter v701156495094 :=
  chain_cut false 5 (by decide)
theorem row87 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [2,1,3,1]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [2,1,3,1] = [v701154408950,v701154406134,v701154187766,v701154184950,v701154129654,v701157401078,v701156516342,v701156495094] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154408950) (.cons (no_v701154406134) (.cons (no_v701154187766) (.cons (no_v701154184950) (.cons (no_v701154129654) (.cons (no_v701157401078) (.cons (no_v701156516342) (.cons (no_v701156495094) .nil))))))))

private def v701154409694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 0) (.var 3)))))))))
private theorem no_v701154409694 : ¬ MinimalInterpreter v701154409694 :=
  chain_cut false 2 (by decide)
private def v701154406238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 0)) (.var 3))))))))
private theorem no_v701154406238 : ¬ MinimalInterpreter v701154406238 :=
  chain_cut false 2 (by decide)
private def v701154188510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 0) (.var 3))))))))
private theorem no_v701154188510 : ¬ MinimalInterpreter v701154188510 :=
  chain_cut false 2 (by decide)
private def v701154185054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.var 3)))))))
private theorem no_v701154185054 : ¬ MinimalInterpreter v701154185054 :=
  chain_cut false 2 (by decide)
private def v701154129758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 0)) (.var 3)))))))
private theorem no_v701154129758 : ¬ MinimalInterpreter v701154129758 :=
  chain_cut false 2 (by decide)
private def v701157358814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 2) (.app (.var 0) (.var 3)))))))))
private theorem no_v701157358814 : ¬ MinimalInterpreter v701157358814 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157355358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 2) (.var 0)) (.var 3))))))))
private theorem no_v701157355358 : ¬ MinimalInterpreter v701157355358 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem row88 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [2,2,0,3]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [2,2,0,3] = [v701154409694,v701154406238,v701154188510,v701154185054,v701154129758,v701157358814,v701157355358] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154409694) (.cons (no_v701154406238) (.cons (no_v701154188510) (.cons (no_v701154185054) (.cons (no_v701154129758) (.cons (no_v701157358814) (.cons (no_v701157355358) .nil)))))))

private def v701157358830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 2) (.app (.var 1) (.var 2)))))))))
private theorem no_v701157358830 : ¬ MinimalInterpreter v701157358830 :=
  chain_cut false 2 (by decide)
private def v701157355374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 2) (.var 1)) (.var 2))))))))
private theorem no_v701157355374 : ¬ MinimalInterpreter v701157355374 :=
  chain_cut false 2 (by decide)
private def v701157404910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.lam (.app (.var 1) (.var 2)))))))))
private theorem no_v701157404910 : ¬ MinimalInterpreter v701157404910 :=
  chain_cut false 4 (by decide)
private def v701156520174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.lam (.app (.var 1) (.var 2))))))))
private theorem no_v701156520174 : ¬ MinimalInterpreter v701156520174 :=
  w_cut false 0 (by decide)
private def v701156495214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.var 1)))) (.var 2))))))
private theorem no_v701156495214 : ¬ MinimalInterpreter v701156495214 :=
  chain_cut false 3 (by decide)
theorem row89 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [2,2,1,2]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [2,2,1,2] = [v701157358830,v701157355374,v701157404910,v701156520174,v701156495214] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157358830) (.cons (no_v701157355374) (.cons (no_v701157404910) (.cons (no_v701156520174) (.cons (no_v701156495214) .nil)))))

end Blc.SelfintSingleObject.Rows39
