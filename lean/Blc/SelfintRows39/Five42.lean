import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem atoms126 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [1,0,0,1,1]) := by
  have h : atoms 3 5 [1,0,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil
private def atom137992674 : Term := (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))))))
private def v701157186018 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))))))))
private theorem no_v701157186018 : ¬ MinimalInterpreter v701157186018 :=
  chain_cut false 2 (by decide)
theorem atom137992674false : BadRow (sources false 3 5 atom137992674) := by
  have h : sources false 3 5 atom137992674 = [v701157186018] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157186018) .nil)

theorem atom137992674true : BadRow (sources true 3 5 atom137992674) := by
  have h : sources true 3 5 atom137992674 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137991906 : Term := (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))))))
private def v701157185250 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))))))))
private theorem no_v701157185250 : ¬ MinimalInterpreter v701157185250 :=
  chain_cut false 2 (by decide)
theorem atom137991906false : BadRow (sources false 3 5 atom137991906) := by
  have h : sources false 3 5 atom137991906 = [v701157185250] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157185250) .nil)

theorem atom137991906true : BadRow (sources true 3 5 atom137991906) := by
  have h : sources true 3 5 atom137991906 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137980386 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 0)))))))
private def v701157173730 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 0)))))))))
private theorem no_v701157173730 : ¬ MinimalInterpreter v701157173730 :=
  chain_cut false 2 (by decide)
theorem atom137980386false : BadRow (sources false 3 5 atom137980386) := by
  have h : sources false 3 5 atom137980386 = [v701157173730] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157173730) .nil)

theorem atom137980386true : BadRow (sources true 3 5 atom137980386) := by
  have h : sources true 3 5 atom137980386 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137960058 : Term := (.lam (.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0))))))
private def v701157153402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0))))))))
private theorem no_v701157153402 : ¬ MinimalInterpreter v701157153402 :=
  chain_cut true 8 (by decide)
theorem atom137960058false : BadRow (sources false 3 5 atom137960058) := by
  have h : sources false 3 5 atom137960058 = [v701157153402] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157153402) .nil)

theorem atom137960058true : BadRow (sources true 3 5 atom137960058) := by
  have h : sources true 3 5 atom137960058 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137978490 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 0))))))
private def v701157171834 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 0))))))))
private theorem no_v701157171834 : ¬ MinimalInterpreter v701157171834 :=
  chain_cut false 2 (by decide)
theorem atom137978490false : BadRow (sources false 3 5 atom137978490) := by
  have h : sources false 3 5 atom137978490 = [v701157171834] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157171834) .nil)

theorem atom137978490true : BadRow (sources true 3 5 atom137978490) := by
  have h : sources true 3 5 atom137978490 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137979618 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.var 0))))))
private def v701157172962 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.var 0))))))))
private theorem no_v701157172962 : ¬ MinimalInterpreter v701157172962 :=
  chain_cut false 2 (by decide)
theorem atom137979618false : BadRow (sources false 3 5 atom137979618) := by
  have h : sources false 3 5 atom137979618 = [v701157172962] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157172962) .nil)

theorem atom137979618true : BadRow (sources true 3 5 atom137979618) := by
  have h : sources true 3 5 atom137979618 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137976546 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 0))))))
private def v701157169890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 0))))))))
private theorem no_v701157169890 : ¬ MinimalInterpreter v701157169890 :=
  chain_cut false 2 (by decide)
theorem atom137976546false : BadRow (sources false 3 5 atom137976546) := by
  have h : sources false 3 5 atom137976546 = [v701157169890] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157169890) .nil)

theorem atom137976546true : BadRow (sources true 3 5 atom137976546) := by
  have h : sources true 3 5 atom137976546 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137975994 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 0)))))
private def v701157169338 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 0)))))))
private theorem no_v701157169338 : ¬ MinimalInterpreter v701157169338 :=
  chain_cut false 2 (by decide)
theorem atom137975994false : BadRow (sources false 3 5 atom137975994) := by
  have h : sources false 3 5 atom137975994 = [v701157169338] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157169338) .nil)

theorem atom137975994true : BadRow (sources true 3 5 atom137975994) := by
  have h : sources true 3 5 atom137975994 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137271778 : Term := (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 2) (.lam (.var 0)))))))
private def v701156465122 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 2) (.lam (.var 0)))))))))
private theorem no_v701156465122 : ¬ MinimalInterpreter v701156465122 :=
  chain_cut false 2 (by decide)
theorem atom137271778false : BadRow (sources false 3 5 atom137271778) := by
  have h : sources false 3 5 atom137271778 = [v701156465122] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156465122) .nil)

theorem atom137271778true : BadRow (sources true 3 5 atom137271778) := by
  have h : sources true 3 5 atom137271778 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137271010 : Term := (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 2)) (.lam (.var 0))))))
private def v701156464354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 2)) (.lam (.var 0))))))))
private theorem no_v701156464354 : ¬ MinimalInterpreter v701156464354 :=
  chain_cut false 2 (by decide)
theorem atom137271010false : BadRow (sources false 3 5 atom137271010) := by
  have h : sources false 3 5 atom137271010 = [v701156464354] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156464354) .nil)

theorem atom137271010true : BadRow (sources true 3 5 atom137271010) := by
  have h : sources true 3 5 atom137271010 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137242234 : Term := (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.app (.var 2) (.var 0))))))
private def v701156435578 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private theorem no_v701156435578 : ¬ MinimalInterpreter v701156435578 :=
  chain_cut false 2 (by decide)
theorem atom137242234false : BadRow (sources false 3 5 atom137242234) := by
  have h : sources false 3 5 atom137242234 = [v701156435578] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156435578) .nil)

theorem atom137242234true : BadRow (sources true 3 5 atom137242234) := by
  have h : sources true 3 5 atom137242234 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137242042 : Term := (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 0)))))
private def v701156435386 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private theorem no_v701156435386 : ¬ MinimalInterpreter v701156435386 :=
  chain_cut false 2 (by decide)
theorem atom137242042false : BadRow (sources false 3 5 atom137242042) := by
  have h : sources false 3 5 atom137242042 = [v701156435386] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156435386) .nil)

theorem atom137242042true : BadRow (sources true 3 5 atom137242042) := by
  have h : sources true 3 5 atom137242042 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137259490 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 2) (.lam (.var 0))))))
private def v701156452834 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 2) (.lam (.var 0))))))))
private theorem no_v701156452834 : ¬ MinimalInterpreter v701156452834 :=
  chain_cut false 2 (by decide)
theorem atom137259490false : BadRow (sources false 3 5 atom137259490) := by
  have h : sources false 3 5 atom137259490 = [v701156452834] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156452834) .nil)

theorem atom137259490true : BadRow (sources true 3 5 atom137259490) := by
  have h : sources true 3 5 atom137259490 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137079266 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 2) (.lam (.var 0))))))
private def v701156272610 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 2) (.lam (.var 0))))))))
private theorem no_v701156272610 : ¬ MinimalInterpreter v701156272610 :=
  chain_cut false 2 (by decide)
theorem atom137079266false : BadRow (sources false 3 5 atom137079266) := by
  have h : sources false 3 5 atom137079266 = [v701156272610] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156272610) .nil)

theorem atom137079266true : BadRow (sources true 3 5 atom137079266) := by
  have h : sources true 3 5 atom137079266 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137239162 : Term := (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.app (.var 2) (.var 0)))))
private def v701156432506 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.app (.var 2) (.var 0)))))))
private theorem no_v701156432506 : ¬ MinimalInterpreter v701156432506 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom137239162false : BadRow (sources false 3 5 atom137239162) := by
  have h : sources false 3 5 atom137239162 = [v701156432506] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156432506) .nil)

theorem atom137239162true : BadRow (sources true 3 5 atom137239162) := by
  have h : sources true 3 5 atom137239162 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137257594 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.app (.var 2) (.var 0)))))
private def v701156450938 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.app (.var 2) (.var 0)))))))
private theorem no_v701156450938 : ¬ MinimalInterpreter v701156450938 :=
  chain_cut false 2 (by decide)
theorem atom137257594false : BadRow (sources false 3 5 atom137257594) := by
  have h : sources false 3 5 atom137257594 = [v701156450938] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156450938) .nil)

theorem atom137257594true : BadRow (sources true 3 5 atom137257594) := by
  have h : sources true 3 5 atom137257594 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137077370 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.app (.var 2) (.var 0)))))
private def v701156270714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.app (.var 2) (.var 0)))))))
private theorem no_v701156270714 : ¬ MinimalInterpreter v701156270714 :=
  chain_cut false 2 (by decide)
theorem atom137077370false : BadRow (sources false 3 5 atom137077370) := by
  have h : sources false 3 5 atom137077370 = [v701156270714] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156270714) .nil)

theorem atom137077370true : BadRow (sources true 3 5 atom137077370) := by
  have h : sources true 3 5 atom137077370 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137071226 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.app (.var 2) (.var 0)))))
private def v701156264570 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.app (.var 2) (.var 0)))))))
private theorem no_v701156264570 : ¬ MinimalInterpreter v701156264570 :=
  chain_cut false 2 (by decide)
theorem atom137071226false : BadRow (sources false 3 5 atom137071226) := by
  have h : sources false 3 5 atom137071226 = [v701156264570] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156264570) .nil)

theorem atom137071226true : BadRow (sources true 3 5 atom137071226) := by
  have h : sources true 3 5 atom137071226 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137258722 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))) (.lam (.var 0)))))
private def v701156452066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))) (.lam (.var 0)))))))
private theorem no_v701156452066 : ¬ MinimalInterpreter v701156452066 :=
  chain_cut false 2 (by decide)
theorem atom137258722false : BadRow (sources false 3 5 atom137258722) := by
  have h : sources false 3 5 atom137258722 = [v701156452066] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156452066) .nil)

theorem atom137258722true : BadRow (sources true 3 5 atom137258722) := by
  have h : sources true 3 5 atom137258722 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137255650 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.var 0)))))
private def v701156448994 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.var 0)))))))
private theorem no_v701156448994 : ¬ MinimalInterpreter v701156448994 :=
  chain_cut false 2 (by decide)
theorem atom137255650false : BadRow (sources false 3 5 atom137255650) := by
  have h : sources false 3 5 atom137255650 = [v701156448994] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156448994) .nil)

theorem atom137255650true : BadRow (sources true 3 5 atom137255650) := by
  have h : sources true 3 5 atom137255650 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137078498 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))) (.lam (.var 0)))))
private def v701156271842 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))) (.lam (.var 0)))))))
private theorem no_v701156271842 : ¬ MinimalInterpreter v701156271842 :=
  chain_cut false 2 (by decide)
theorem atom137078498false : BadRow (sources false 3 5 atom137078498) := by
  have h : sources false 3 5 atom137078498 = [v701156271842] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156271842) .nil)

theorem atom137078498true : BadRow (sources true 3 5 atom137078498) := by
  have h : sources true 3 5 atom137078498 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137075426 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)) (.lam (.var 0)))))
private def v701156268770 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)) (.lam (.var 0)))))))
private theorem no_v701156268770 : ¬ MinimalInterpreter v701156268770 :=
  chain_cut false 2 (by decide)
theorem atom137075426false : BadRow (sources false 3 5 atom137075426) := by
  have h : sources false 3 5 atom137075426 = [v701156268770] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156268770) .nil)

theorem atom137075426true : BadRow (sources true 3 5 atom137075426) := by
  have h : sources true 3 5 atom137075426 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137030370 : Term := (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)) (.lam (.var 0)))))
private def v701156223714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)) (.lam (.var 0)))))))
private theorem no_v701156223714 : ¬ MinimalInterpreter v701156223714 :=
  chain_cut false 2 (by decide)
theorem atom137030370false : BadRow (sources false 3 5 atom137030370) := by
  have h : sources false 3 5 atom137030370 = [v701156223714] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156223714) .nil)

theorem atom137030370true : BadRow (sources true 3 5 atom137030370) := by
  have h : sources true 3 5 atom137030370 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137255098 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 2))) (.var 0))))
private def v701156448442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 2))) (.var 0))))))
private theorem no_v701156448442 : ¬ MinimalInterpreter v701156448442 :=
  chain_cut false 2 (by decide)
theorem atom137255098false : BadRow (sources false 3 5 atom137255098) := by
  have h : sources false 3 5 atom137255098 = [v701156448442] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156448442) .nil)

theorem atom137255098true : BadRow (sources true 3 5 atom137255098) := by
  have h : sources true 3 5 atom137255098 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137071034 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 2))) (.var 0))))
private def v701156264378 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 2))) (.var 0))))))
private theorem no_v701156264378 : ¬ MinimalInterpreter v701156264378 :=
  chain_cut false 2 (by decide)
theorem atom137071034false : BadRow (sources false 3 5 atom137071034) := by
  have h : sources false 3 5 atom137071034 = [v701156264378] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156264378) .nil)

theorem atom137071034true : BadRow (sources true 3 5 atom137071034) := by
  have h : sources true 3 5 atom137071034 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137070266 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 2)) (.var 0))))
private def v701156263610 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 2)) (.var 0))))))
private theorem no_v701156263610 : ¬ MinimalInterpreter v701156263610 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (.var 2)) (.var 0)) (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137070266false : BadRow (sources false 3 5 atom137070266) := by
  have h : sources false 3 5 atom137070266 = [v701156263610] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156263610) .nil)

theorem atom137070266true : BadRow (sources true 3 5 atom137070266) := by
  have h : sources true 3 5 atom137070266 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137074874 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 2)) (.var 0))))
private def v701156268218 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 2)) (.var 0))))))
private theorem no_v701156268218 : ¬ MinimalInterpreter v701156268218 :=
  chain_cut false 2 (by decide)
theorem atom137074874false : BadRow (sources false 3 5 atom137074874) := by
  have h : sources false 3 5 atom137074874 = [v701156268218] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156268218) .nil)

theorem atom137074874true : BadRow (sources true 3 5 atom137074874) := by
  have h : sources true 3 5 atom137074874 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137029818 : Term := (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 2)) (.var 0))))
private def v701156223162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 2)) (.var 0))))))
private theorem no_v701156223162 : ¬ MinimalInterpreter v701156223162 :=
  chain_cut false 2 (by decide)
theorem atom137029818false : BadRow (sources false 3 5 atom137029818) := by
  have h : sources false 3 5 atom137029818 = [v701156223162] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156223162) .nil)

theorem atom137029818true : BadRow (sources true 3 5 atom137029818) := by
  have h : sources true 3 5 atom137029818 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137028282 : Term := (.lam (.lam (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 2)) (.var 0))))
private def v701156221626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 2)) (.var 0))))))
private theorem no_v701156221626 : ¬ MinimalInterpreter v701156221626 :=
  chain_cut false 2 (by decide)
theorem atom137028282false : BadRow (sources false 3 5 atom137028282) := by
  have h : sources false 3 5 atom137028282 = [v701156221626] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156221626) .nil)

theorem atom137028282true : BadRow (sources true 3 5 atom137028282) := by
  have h : sources true 3 5 atom137028282 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms127 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [1,0,0,2,0]) := by
  have h : atoms 3 5 [1,0,0,2,0] = [atom137992674,atom137991906,atom137980386,atom137960058,atom137978490,atom137979618,atom137976546,atom137975994,atom137271778,atom137271010,atom137242234,atom137242042,atom137259490,atom137079266,atom137239162,atom137257594,atom137077370,atom137071226,atom137258722,atom137255650,atom137078498,atom137075426,atom137030370,atom137255098,atom137071034,atom137070266,atom137074874,atom137029818,atom137028282] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom137992674false | exact atom137992674true) (.cons (fun lit => by cases lit <;> first | exact atom137991906false | exact atom137991906true) (.cons (fun lit => by cases lit <;> first | exact atom137980386false | exact atom137980386true) (.cons (fun lit => by cases lit <;> first | exact atom137960058false | exact atom137960058true) (.cons (fun lit => by cases lit <;> first | exact atom137978490false | exact atom137978490true) (.cons (fun lit => by cases lit <;> first | exact atom137979618false | exact atom137979618true) (.cons (fun lit => by cases lit <;> first | exact atom137976546false | exact atom137976546true) (.cons (fun lit => by cases lit <;> first | exact atom137975994false | exact atom137975994true) (.cons (fun lit => by cases lit <;> first | exact atom137271778false | exact atom137271778true) (.cons (fun lit => by cases lit <;> first | exact atom137271010false | exact atom137271010true) (.cons (fun lit => by cases lit <;> first | exact atom137242234false | exact atom137242234true) (.cons (fun lit => by cases lit <;> first | exact atom137242042false | exact atom137242042true) (.cons (fun lit => by cases lit <;> first | exact atom137259490false | exact atom137259490true) (.cons (fun lit => by cases lit <;> first | exact atom137079266false | exact atom137079266true) (.cons (fun lit => by cases lit <;> first | exact atom137239162false | exact atom137239162true) (.cons (fun lit => by cases lit <;> first | exact atom137257594false | exact atom137257594true) (.cons (fun lit => by cases lit <;> first | exact atom137077370false | exact atom137077370true) (.cons (fun lit => by cases lit <;> first | exact atom137071226false | exact atom137071226true) (.cons (fun lit => by cases lit <;> first | exact atom137258722false | exact atom137258722true) (.cons (fun lit => by cases lit <;> first | exact atom137255650false | exact atom137255650true) (.cons (fun lit => by cases lit <;> first | exact atom137078498false | exact atom137078498true) (.cons (fun lit => by cases lit <;> first | exact atom137075426false | exact atom137075426true) (.cons (fun lit => by cases lit <;> first | exact atom137030370false | exact atom137030370true) (.cons (fun lit => by cases lit <;> first | exact atom137255098false | exact atom137255098true) (.cons (fun lit => by cases lit <;> first | exact atom137071034false | exact atom137071034true) (.cons (fun lit => by cases lit <;> first | exact atom137070266false | exact atom137070266true) (.cons (fun lit => by cases lit <;> first | exact atom137074874false | exact atom137074874true) (.cons (fun lit => by cases lit <;> first | exact atom137029818false | exact atom137029818true) (.cons (fun lit => by cases lit <;> first | exact atom137028282false | exact atom137028282true) .nil)))))))))))))))))))))))))))))
theorem atoms128 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [1,0,1,0,1]) := by
  have h : atoms 3 5 [1,0,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil
end Blc.SelfintSingleObject.Sat39
