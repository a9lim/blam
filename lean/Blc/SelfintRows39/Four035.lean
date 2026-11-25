import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v701153666970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 2) (.app (.var 0) (.var 0))))))))))
private theorem no_v701153666970 : ¬ MinimalInterpreter v701153666970 :=
  cost_cut false 2 (by decide)
private def v701153666538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 2) (.var 0)) (.var 0)))))))))
private theorem no_v701153666538 : ¬ MinimalInterpreter v701153666538 :=
  cost_cut false 2 (by decide)
private def v701153606554 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 2)) (.app (.var 0) (.var 0)))))))))
private theorem no_v701153606554 : ¬ MinimalInterpreter v701153606554 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 2)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 3) (.var 2)) (.app (.var 0) (.var 0)))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 3) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v701153606122 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 2) (.var 0))) (.var 0))))))))
private theorem no_v701153606122 : ¬ MinimalInterpreter v701153606122 :=
  cost_cut false 2 (by decide)
private def v701153591018 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 0)) (.var 0))))))))
private theorem no_v701153591018 : ¬ MinimalInterpreter v701153591018 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 0)) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 3) (.var 2)) (.var 0)) (.var 0)) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v701154190234 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.lam (.var 2))) (.app (.var 0) (.var 0))))))))
private theorem no_v701154190234 : ¬ MinimalInterpreter v701154190234 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.lam (.var 2))) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 2) (.lam (.var 1)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 3) (so_dead (by decide) (.var 2))) (.app (.var 0) (.var 0))) (.app (.var 2) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v701154130154 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.lam (.var 2))) (.var 0)) (.var 0)))))))
private theorem no_v701154130154 : ¬ MinimalInterpreter v701154130154 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.lam (.var 2))) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 2) (.lam (.var 1)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 3) (so_dead (by decide) (.var 2))) (.var 0)) (.var 0)) (.app (.var 2) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
theorem row210 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [3,2,0,0]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [3,2,0,0] = [v701153666970,v701153666538,v701153606554,v701153606122,v701153591018,v701154190234,v701154130154] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153666970) (.cons (no_v701153666538) (.cons (no_v701153606554) (.cons (no_v701153606122) (.cons (no_v701153591018) (.cons (no_v701154190234) (.cons (no_v701154130154) .nil)))))))

private def v701153669942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 4) (.app (.var 0) (.app (.var 0) (.var 1))))))))))
private theorem no_v701153669942 : ¬ MinimalInterpreter v701153669942 :=
  chain_cut false 2 (by decide)
private def v701153669846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 4) (.app (.app (.var 0) (.var 0)) (.var 1)))))))))
private theorem no_v701153669846 : ¬ MinimalInterpreter v701153669846 :=
  chain_cut false 2 (by decide)
private def v701153606966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 4) (.var 0)) (.app (.var 0) (.var 1)))))))))
private theorem no_v701153606966 : ¬ MinimalInterpreter v701153606966 :=
  chain_cut false 2 (by decide)
private def v701153606870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 4) (.app (.var 0) (.var 0))) (.var 1))))))))
private theorem no_v701153606870 : ¬ MinimalInterpreter v701153606870 :=
  chain_cut false 2 (by decide)
private def v701153591126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 4) (.var 0)) (.var 0)) (.var 1))))))))
private theorem no_v701153591126 : ¬ MinimalInterpreter v701153591126 :=
  chain_cut false 2 (by decide)
theorem row211 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [4,0,0,1]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [4,0,0,1] = [v701153669942,v701153669846,v701153606966,v701153606870,v701153591126] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153669942) (.cons (no_v701153669846) (.cons (no_v701153606966) (.cons (no_v701153606870) (.cons (no_v701153591126) .nil)))))

private def v701153669946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 4) (.app (.var 0) (.app (.var 1) (.var 0))))))))))
private theorem no_v701153669946 : ¬ MinimalInterpreter v701153669946 :=
  chain_cut false 2 (by decide)
private def v701153669850 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 4) (.app (.app (.var 0) (.var 1)) (.var 0)))))))))
private theorem no_v701153669850 : ¬ MinimalInterpreter v701153669850 :=
  chain_cut false 2 (by decide)
private def v701153606970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 4) (.var 0)) (.app (.var 1) (.var 0)))))))))
private theorem no_v701153606970 : ¬ MinimalInterpreter v701153606970 :=
  chain_cut false 2 (by decide)
private def v701153606874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 4) (.app (.var 0) (.var 1))) (.var 0))))))))
private theorem no_v701153606874 : ¬ MinimalInterpreter v701153606874 :=
  chain_cut false 2 (by decide)
private def v701153591130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 4) (.var 0)) (.var 1)) (.var 0))))))))
private theorem no_v701153591130 : ¬ MinimalInterpreter v701153591130 :=
  chain_cut false 2 (by decide)
theorem row212 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [4,0,1,0]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [4,0,1,0] = [v701153669946,v701153669850,v701153606970,v701153606874,v701153591130] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153669946) (.cons (no_v701153669850) (.cons (no_v701153606970) (.cons (no_v701153606874) (.cons (no_v701153591130) .nil)))))

private def v701153670042 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 4) (.app (.var 1) (.app (.var 0) (.var 0))))))))))
private theorem no_v701153670042 : ¬ MinimalInterpreter v701153670042 :=
  chain_cut false 2 (by decide)
private def v701153669866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 4) (.app (.app (.var 1) (.var 0)) (.var 0)))))))))
private theorem no_v701153669866 : ¬ MinimalInterpreter v701153669866 :=
  chain_cut false 2 (by decide)
private def v701153607066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 4) (.var 1)) (.app (.var 0) (.var 0)))))))))
private theorem no_v701153607066 : ¬ MinimalInterpreter v701153607066 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 4) (.var 1)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 3) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 4) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 3) (.var 0)) (by decide) (by decide)) (.var 2) (by decide) (by decide)))))))
private def v701153606890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 4) (.app (.var 1) (.var 0))) (.var 0))))))))
private theorem no_v701153606890 : ¬ MinimalInterpreter v701153606890 :=
  chain_cut false 2 (by decide)
private def v701153591146 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 4) (.var 1)) (.var 0)) (.var 0))))))))
private theorem no_v701153591146 : ¬ MinimalInterpreter v701153591146 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 4) (.var 1)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 3) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 4) (.var 1)) (.var 0)) (.var 0)) (.app (.var 3) (.var 0)) (by decide) (by decide)) (.var 2) (by decide) (by decide)))))))
theorem row213 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [4,1,0,0]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [4,1,0,0] = [v701153670042,v701153669866,v701153607066,v701153606890,v701153591146] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153670042) (.cons (no_v701153669866) (.cons (no_v701153607066) (.cons (no_v701153606890) (.cons (no_v701153591146) .nil)))))

theorem row214 : BadRow (row ⟨0,2,0,5,4,3⟩ [0,0] [0,0,0,3]) := by
  have h : row ⟨0,2,0,5,4,3⟩ [0,0] [0,0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v701153463534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))
private theorem no_v701153463534 : ¬ MinimalInterpreter v701153463534 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))
private def v701153463150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))))))))
private theorem no_v701153463150 : ¬ MinimalInterpreter v701153463150 :=
  cost_cut false 2 (by decide)
private def v701153457390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))))))
private theorem no_v701153457390 : ¬ MinimalInterpreter v701153457390 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))
private def v701153457006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))))))))
private theorem no_v701153457006 : ¬ MinimalInterpreter v701153457006 :=
  cost_cut false 2 (by decide)
private def v701153455470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))))))
private theorem no_v701153455470 : ¬ MinimalInterpreter v701153455470 :=
  cost_cut false 2 (by decide)
private def v701153610990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))))
private theorem no_v701153610990 : ¬ MinimalInterpreter v701153610990 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))))
private def v701153610606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))))
private theorem no_v701153610606 : ¬ MinimalInterpreter v701153610606 :=
  cost_cut false 2 (by decide)
private def v701154200814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))))
private theorem no_v701154200814 : ¬ MinimalInterpreter v701154200814 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))))
private def v701154200430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))))
private theorem no_v701154200430 : ¬ MinimalInterpreter v701154200430 :=
  cost_cut false 2 (by decide)
theorem row215 : BadRow (row ⟨0,2,0,5,4,3⟩ [0,0] [0,0,1,2]) := by
  have h : row ⟨0,2,0,5,4,3⟩ [0,0] [0,0,1,2] = [v701153463534,v701153463150,v701153457390,v701153457006,v701153455470,v701153610990,v701153610606,v701154200814,v701154200430] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153463534) (.cons (no_v701153463150) (.cons (no_v701153457390) (.cons (no_v701153457006) (.cons (no_v701153455470) (.cons (no_v701153610990) (.cons (no_v701153610606) (.cons (no_v701154200814) (.cons (no_v701154200430) .nil)))))))))

end Blc.SelfintSingleObject.Rows39
