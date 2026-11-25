import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1400612385594 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v1400612385594 : ¬ MinimalInterpreter v1400612385594 :=
  chain_cut false 2 (by decide)

private def v1400645940026 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v1400645940026 : ¬ MinimalInterpreter v1400645940026 :=
  chain_cut false 2 (by decide)

private def v1400612385498 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v1400612385498 : ¬ MinimalInterpreter v1400612385498 :=
  chain_cut false 2 (by decide)

private def v1400645939930 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v1400645939930 : ¬ MinimalInterpreter v1400645939930 :=
  chain_cut false 2 (by decide)

private def v1400612371770 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v1400612371770 : ¬ MinimalInterpreter v1400612371770 :=
  chain_cut false 2 (by decide)

private def v1400645926202 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v1400645926202 : ¬ MinimalInterpreter v1400645926202 :=
  chain_cut false 2 (by decide)

private def v1400612371674 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v1400612371674 : ¬ MinimalInterpreter v1400612371674 :=
  chain_cut false 2 (by decide)

private def v1400645926106 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v1400645926106 : ¬ MinimalInterpreter v1400645926106 :=
  chain_cut false 2 (by decide)

private def v1400612368218 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v1400612368218 : ¬ MinimalInterpreter v1400612368218 :=
  chain_cut false 2 (by decide)

private def v1400645922650 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v1400645922650 : ¬ MinimalInterpreter v1400645922650 :=
  chain_cut false 2 (by decide)

theorem five64 : BadRow (bucket false 3 2 4 [2,0,1,0]) := by
  have h : bucket false 3 2 4 [2,0,1,0] = [v1400612385594,v1400645940026,v1400612385498,v1400645939930,v1400612371770,v1400645926202,v1400612371674,v1400645926106,v1400612368218,v1400645922650] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400612385594) (.cons (no_v1400645940026) (.cons (no_v1400612385498) (.cons (no_v1400645939930) (.cons (no_v1400612371770) (.cons (no_v1400645926202) (.cons (no_v1400612371674) (.cons (no_v1400645926106) (.cons (no_v1400612368218) (.cons (no_v1400645922650) .nil))))))))))

private def v1175126602554 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v1175126602554 : ¬ MinimalInterpreter v1175126602554 :=
  chain_cut false 2 (by decide)

private def v1174321296186 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v1174321296186 : ¬ MinimalInterpreter v1174321296186 :=
  chain_cut false 2 (by decide)

private def v1175160156986 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v1175160156986 : ¬ MinimalInterpreter v1175160156986 :=
  chain_cut false 2 (by decide)

private def v1174354850618 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v1174354850618 : ¬ MinimalInterpreter v1174354850618 :=
  chain_cut false 3 (by decide)

private def v1175965463354 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v1175965463354 : ¬ MinimalInterpreter v1175965463354 :=
  chain_cut true 2 (by decide)

private def v1174489068346 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v1174489068346 : ¬ MinimalInterpreter v1174489068346 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126602458 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v1175126602458 : ¬ MinimalInterpreter v1175126602458 :=
  chain_cut false 2 (by decide)

private def v1174321296090 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v1174321296090 : ¬ MinimalInterpreter v1174321296090 :=
  chain_cut false 2 (by decide)

private def v1175160156890 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v1175160156890 : ¬ MinimalInterpreter v1175160156890 :=
  chain_cut false 2 (by decide)

private def v1174354850522 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v1174354850522 : ¬ MinimalInterpreter v1174354850522 :=
  chain_cut false 3 (by decide)

private def v1175965463258 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v1175965463258 : ¬ MinimalInterpreter v1175965463258 :=
  chain_cut true 2 (by decide)

private def v1174489068250 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v1174489068250 : ¬ MinimalInterpreter v1174489068250 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126588730 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v1175126588730 : ¬ MinimalInterpreter v1175126588730 :=
  chain_cut false 2 (by decide)

private def v1174321282362 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v1174321282362 : ¬ MinimalInterpreter v1174321282362 :=
  chain_cut false 2 (by decide)

private def v1175160143162 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v1175160143162 : ¬ MinimalInterpreter v1175160143162 :=
  chain_cut false 2 (by decide)

private def v1174354836794 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v1174354836794 : ¬ MinimalInterpreter v1174354836794 :=
  chain_cut false 3 (by decide)

private def v1175965449530 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v1175965449530 : ¬ MinimalInterpreter v1175965449530 :=
  chain_cut true 2 (by decide)

private def v1174489054522 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v1174489054522 : ¬ MinimalInterpreter v1174489054522 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126588634 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v1175126588634 : ¬ MinimalInterpreter v1175126588634 :=
  chain_cut false 2 (by decide)

private def v1174321282266 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v1174321282266 : ¬ MinimalInterpreter v1174321282266 :=
  chain_cut false 2 (by decide)

private def v1175160143066 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v1175160143066 : ¬ MinimalInterpreter v1175160143066 :=
  chain_cut false 2 (by decide)

private def v1174354836698 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v1174354836698 : ¬ MinimalInterpreter v1174354836698 :=
  chain_cut false 3 (by decide)

private def v1175965449434 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v1175965449434 : ¬ MinimalInterpreter v1175965449434 :=
  chain_cut true 2 (by decide)

private def v1174489054426 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v1174489054426 : ¬ MinimalInterpreter v1174489054426 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126585178 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v1175126585178 : ¬ MinimalInterpreter v1175126585178 :=
  chain_cut false 2 (by decide)

private def v1174321278810 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v1174321278810 : ¬ MinimalInterpreter v1174321278810 :=
  chain_cut false 2 (by decide)

private def v1175160139610 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v1175160139610 : ¬ MinimalInterpreter v1175160139610 :=
  chain_cut false 2 (by decide)

private def v1174354833242 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v1174354833242 : ¬ MinimalInterpreter v1174354833242 :=
  chain_cut false 3 (by decide)

private def v1175965445978 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v1175965445978 : ¬ MinimalInterpreter v1175965445978 :=
  chain_cut true 2 (by decide)

private def v1174489050970 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v1174489050970 : ¬ MinimalInterpreter v1174489050970 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem five65 : BadRow (bucket true 3 2 4 [2,0,1,0]) := by
  have h : bucket true 3 2 4 [2,0,1,0] = [v1175126602554,v1174321296186,v1175160156986,v1174354850618,v1175965463354,v1174489068346,v1175126602458,v1174321296090,v1175160156890,v1174354850522,v1175965463258,v1174489068250,v1175126588730,v1174321282362,v1175160143162,v1174354836794,v1175965449530,v1174489054522,v1175126588634,v1174321282266,v1175160143066,v1174354836698,v1175965449434,v1174489054426,v1175126585178,v1174321278810,v1175160139610,v1174354833242,v1175965445978,v1174489050970] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175126602554) (.cons (no_v1174321296186) (.cons (no_v1175160156986) (.cons (no_v1174354850618) (.cons (no_v1175965463354) (.cons (no_v1174489068346) (.cons (no_v1175126602458) (.cons (no_v1174321296090) (.cons (no_v1175160156890) (.cons (no_v1174354850522) (.cons (no_v1175965463258) (.cons (no_v1174489068250) (.cons (no_v1175126588730) (.cons (no_v1174321282362) (.cons (no_v1175160143162) (.cons (no_v1174354836794) (.cons (no_v1175965449530) (.cons (no_v1174489054522) (.cons (no_v1175126588634) (.cons (no_v1174321282266) (.cons (no_v1175160143066) (.cons (no_v1174354836698) (.cons (no_v1175965449434) (.cons (no_v1174489054426) (.cons (no_v1175126585178) (.cons (no_v1174321278810) (.cons (no_v1175160139610) (.cons (no_v1174354833242) (.cons (no_v1175965445978) (.cons (no_v1174489050970) .nil))))))))))))))))))))))))))))))

private def v1400612385690 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v1400612385690 : ¬ MinimalInterpreter v1400612385690 :=
  chain_cut false 2 (by decide)

private def v1400645940122 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v1400645940122 : ¬ MinimalInterpreter v1400645940122 :=
  chain_cut false 2 (by decide)

private def v1400612385514 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v1400612385514 : ¬ MinimalInterpreter v1400612385514 :=
  chain_cut false 2 (by decide)

private def v1400645939946 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v1400645939946 : ¬ MinimalInterpreter v1400645939946 :=
  chain_cut false 2 (by decide)

private def v1400612371866 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v1400612371866 : ¬ MinimalInterpreter v1400612371866 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400645926298 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v1400645926298 : ¬ MinimalInterpreter v1400645926298 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400612371690 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v1400612371690 : ¬ MinimalInterpreter v1400612371690 :=
  chain_cut false 2 (by decide)

private def v1400645926122 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v1400645926122 : ¬ MinimalInterpreter v1400645926122 :=
  chain_cut false 2 (by decide)

private def v1400612368234 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v1400612368234 : ¬ MinimalInterpreter v1400612368234 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400645922666 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v1400645922666 : ¬ MinimalInterpreter v1400645922666 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem five66 : BadRow (bucket false 3 2 4 [2,1,0,0]) := by
  have h : bucket false 3 2 4 [2,1,0,0] = [v1400612385690,v1400645940122,v1400612385514,v1400645939946,v1400612371866,v1400645926298,v1400612371690,v1400645926122,v1400612368234,v1400645922666] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400612385690) (.cons (no_v1400645940122) (.cons (no_v1400612385514) (.cons (no_v1400645939946) (.cons (no_v1400612371866) (.cons (no_v1400645926298) (.cons (no_v1400612371690) (.cons (no_v1400645926122) (.cons (no_v1400612368234) (.cons (no_v1400645922666) .nil))))))))))

private def v1175126602650 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v1175126602650 : ¬ MinimalInterpreter v1175126602650 :=
  chain_cut false 2 (by decide)

private def v1174321296282 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v1174321296282 : ¬ MinimalInterpreter v1174321296282 :=
  chain_cut false 2 (by decide)

private def v1175160157082 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v1175160157082 : ¬ MinimalInterpreter v1175160157082 :=
  chain_cut false 2 (by decide)

private def v1174354850714 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v1174354850714 : ¬ MinimalInterpreter v1174354850714 :=
  chain_cut false 3 (by decide)

private def v1175965463450 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v1175965463450 : ¬ MinimalInterpreter v1175965463450 :=
  chain_cut true 2 (by decide)

private def v1174489068442 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v1174489068442 : ¬ MinimalInterpreter v1174489068442 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126602474 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v1175126602474 : ¬ MinimalInterpreter v1175126602474 :=
  chain_cut false 2 (by decide)

private def v1174321296106 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v1174321296106 : ¬ MinimalInterpreter v1174321296106 :=
  chain_cut false 2 (by decide)

private def v1175160156906 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v1175160156906 : ¬ MinimalInterpreter v1175160156906 :=
  chain_cut false 2 (by decide)

private def v1174354850538 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v1174354850538 : ¬ MinimalInterpreter v1174354850538 :=
  chain_cut false 3 (by decide)

private def v1175965463274 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v1175965463274 : ¬ MinimalInterpreter v1175965463274 :=
  chain_cut true 2 (by decide)

private def v1174489068266 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v1174489068266 : ¬ MinimalInterpreter v1174489068266 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126588826 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v1175126588826 : ¬ MinimalInterpreter v1175126588826 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174321282458 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v1174321282458 : ¬ MinimalInterpreter v1174321282458 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175160143258 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v1175160143258 : ¬ MinimalInterpreter v1175160143258 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174354836890 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v1174354836890 : ¬ MinimalInterpreter v1174354836890 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175965449626 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v1175965449626 : ¬ MinimalInterpreter v1175965449626 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174489054618 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v1174489054618 : ¬ MinimalInterpreter v1174489054618 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175126588650 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v1175126588650 : ¬ MinimalInterpreter v1175126588650 :=
  chain_cut false 2 (by decide)

private def v1174321282282 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v1174321282282 : ¬ MinimalInterpreter v1174321282282 :=
  chain_cut false 2 (by decide)

private def v1175160143082 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v1175160143082 : ¬ MinimalInterpreter v1175160143082 :=
  chain_cut false 2 (by decide)

private def v1174354836714 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v1174354836714 : ¬ MinimalInterpreter v1174354836714 :=
  chain_cut false 3 (by decide)

private def v1175965449450 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v1175965449450 : ¬ MinimalInterpreter v1175965449450 :=
  chain_cut true 2 (by decide)

private def v1174489054442 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v1174489054442 : ¬ MinimalInterpreter v1174489054442 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126585194 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v1175126585194 : ¬ MinimalInterpreter v1175126585194 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174321278826 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v1174321278826 : ¬ MinimalInterpreter v1174321278826 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175160139626 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v1175160139626 : ¬ MinimalInterpreter v1175160139626 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174354833258 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v1174354833258 : ¬ MinimalInterpreter v1174354833258 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175965445994 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v1175965445994 : ¬ MinimalInterpreter v1175965445994 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174489050986 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v1174489050986 : ¬ MinimalInterpreter v1174489050986 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem five67 : BadRow (bucket true 3 2 4 [2,1,0,0]) := by
  have h : bucket true 3 2 4 [2,1,0,0] = [v1175126602650,v1174321296282,v1175160157082,v1174354850714,v1175965463450,v1174489068442,v1175126602474,v1174321296106,v1175160156906,v1174354850538,v1175965463274,v1174489068266,v1175126588826,v1174321282458,v1175160143258,v1174354836890,v1175965449626,v1174489054618,v1175126588650,v1174321282282,v1175160143082,v1174354836714,v1175965449450,v1174489054442,v1175126585194,v1174321278826,v1175160139626,v1174354833258,v1175965445994,v1174489050986] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175126602650) (.cons (no_v1174321296282) (.cons (no_v1175160157082) (.cons (no_v1174354850714) (.cons (no_v1175965463450) (.cons (no_v1174489068442) (.cons (no_v1175126602474) (.cons (no_v1174321296106) (.cons (no_v1175160156906) (.cons (no_v1174354850538) (.cons (no_v1175965463274) (.cons (no_v1174489068266) (.cons (no_v1175126588826) (.cons (no_v1174321282458) (.cons (no_v1175160143258) (.cons (no_v1174354836890) (.cons (no_v1175965449626) (.cons (no_v1174489054618) (.cons (no_v1175126588650) (.cons (no_v1174321282282) (.cons (no_v1175160143082) (.cons (no_v1174354836714) (.cons (no_v1175965449450) (.cons (no_v1174489054442) (.cons (no_v1175126585194) (.cons (no_v1174321278826) (.cons (no_v1175160139626) (.cons (no_v1174354833258) (.cons (no_v1175965445994) (.cons (no_v1174489050986) .nil))))))))))))))))))))))))))))))

theorem five68 : BadRow (bucket false 3 2 4 [3,0,0,0]) := by
  have h : bucket false 3 2 4 [3,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five69 : BadRow (bucket true 3 2 4 [3,0,0,0]) := by
  have h : bucket true 3 2 4 [3,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five70 : BadRow (bucket false 3 2 5 [0,0,0,0,3]) := by
  have h : bucket false 3 2 5 [0,0,0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five71 : BadRow (bucket true 3 2 5 [0,0,0,0,3]) := by
  have h : bucket true 3 2 5 [0,0,0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
