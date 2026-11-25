import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def atom8637666 : Term := (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))))
theorem atom8637666false : BadRow (sources false 3 4 atom8637666) := by
  have h : sources false 3 4 atom8637666 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8637666true : BadRow (sources true 3 4 atom8637666) := by
  have h : sources true 3 4 atom8637666 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8637282 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))
theorem atom8637282false : BadRow (sources false 3 4 atom8637282) := by
  have h : sources false 3 4 atom8637282 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8637282true : BadRow (sources true 3 4 atom8637282) := by
  have h : sources true 3 4 atom8637282 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8582370 : Term := (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 0))))))
theorem atom8582370false : BadRow (sources false 3 4 atom8582370) := by
  have h : sources false 3 4 atom8582370 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8582370true : BadRow (sources true 3 4 atom8582370) := by
  have h : sources true 3 4 atom8582370 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8581434 : Term := (.lam (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 1) (.var 0)))))
theorem atom8581434false : BadRow (sources false 3 4 atom8581434) := by
  have h : sources false 3 4 atom8581434 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8581434true : BadRow (sources true 3 4 atom8581434) := by
  have h : sources true 3 4 atom8581434 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8581986 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 0)))))
theorem atom8581986false : BadRow (sources false 3 4 atom8581986) := by
  have h : sources false 3 4 atom8581986 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8581986true : BadRow (sources true 3 4 atom8581986) := by
  have h : sources true 3 4 atom8581986 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8568162 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 0)))))
theorem atom8568162false : BadRow (sources false 3 4 atom8568162) := by
  have h : sources false 3 4 atom8568162 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8568162true : BadRow (sources true 3 4 atom8568162) := by
  have h : sources true 3 4 atom8568162 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8567898 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.var 0))))
theorem atom8567898false : BadRow (sources false 3 4 atom8567898) := by
  have h : sources false 3 4 atom8567898 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8567898true : BadRow (sources true 3 4 atom8567898) := by
  have h : sources true 3 4 atom8567898 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms102 : Every (fun b => ∀ lit, BadRow (sources lit 3 4 b)) (atoms 3 4 [2,0,1,0]) := by
  have h : atoms 3 4 [2,0,1,0] = [atom8637666,atom8637282,atom8582370,atom8581434,atom8581986,atom8568162,atom8567898] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom8637666false | exact atom8637666true) (.cons (fun lit => by cases lit <;> first | exact atom8637282false | exact atom8637282true) (.cons (fun lit => by cases lit <;> first | exact atom8582370false | exact atom8582370true) (.cons (fun lit => by cases lit <;> first | exact atom8581434false | exact atom8581434true) (.cons (fun lit => by cases lit <;> first | exact atom8581986false | exact atom8581986true) (.cons (fun lit => by cases lit <;> first | exact atom8568162false | exact atom8568162true) (.cons (fun lit => by cases lit <;> first | exact atom8567898false | exact atom8567898true) .nil)))))))
private def atom8638050 : Term := (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))))
theorem atom8638050false : BadRow (sources false 3 4 atom8638050) := by
  have h : sources false 3 4 atom8638050 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8638050true : BadRow (sources true 3 4 atom8638050) := by
  have h : sources true 3 4 atom8638050 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8637346 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))
theorem atom8637346false : BadRow (sources false 3 4 atom8637346) := by
  have h : sources false 3 4 atom8637346 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8637346true : BadRow (sources true 3 4 atom8637346) := by
  have h : sources true 3 4 atom8637346 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8637322 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))))
theorem atom8637322false : BadRow (sources false 3 4 atom8637322) := by
  have h : sources false 3 4 atom8637322 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8637322true : BadRow (sources true 3 4 atom8637322) := by
  have h : sources true 3 4 atom8637322 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8582754 : Term := (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 0))))))
theorem atom8582754false : BadRow (sources false 3 4 atom8582754) := by
  have h : sources false 3 4 atom8582754 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8582754true : BadRow (sources true 3 4 atom8582754) := by
  have h : sources true 3 4 atom8582754 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8582050 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 0)))))
theorem atom8582050false : BadRow (sources false 3 4 atom8582050) := by
  have h : sources false 3 4 atom8582050 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8582050true : BadRow (sources true 3 4 atom8582050) := by
  have h : sources true 3 4 atom8582050 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8568226 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 0)))))
theorem atom8568226false : BadRow (sources false 3 4 atom8568226) := by
  have h : sources false 3 4 atom8568226 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8568226true : BadRow (sources true 3 4 atom8568226) := by
  have h : sources true 3 4 atom8568226 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8582026 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 0))))
theorem atom8582026false : BadRow (sources false 3 4 atom8582026) := by
  have h : sources false 3 4 atom8582026 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8582026true : BadRow (sources true 3 4 atom8582026) := by
  have h : sources true 3 4 atom8582026 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8568202 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 0))))
theorem atom8568202false : BadRow (sources false 3 4 atom8568202) := by
  have h : sources false 3 4 atom8568202 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8568202true : BadRow (sources true 3 4 atom8568202) := by
  have h : sources true 3 4 atom8568202 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms103 : Every (fun b => ∀ lit, BadRow (sources lit 3 4 b)) (atoms 3 4 [2,1,0,0]) := by
  have h : atoms 3 4 [2,1,0,0] = [atom8638050,atom8637346,atom8637322,atom8582754,atom8582050,atom8568226,atom8582026,atom8568202] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom8638050false | exact atom8638050true) (.cons (fun lit => by cases lit <;> first | exact atom8637346false | exact atom8637346true) (.cons (fun lit => by cases lit <;> first | exact atom8637322false | exact atom8637322true) (.cons (fun lit => by cases lit <;> first | exact atom8582754false | exact atom8582754true) (.cons (fun lit => by cases lit <;> first | exact atom8582050false | exact atom8582050true) (.cons (fun lit => by cases lit <;> first | exact atom8568226false | exact atom8568226true) (.cons (fun lit => by cases lit <;> first | exact atom8582026false | exact atom8582026true) (.cons (fun lit => by cases lit <;> first | exact atom8568202false | exact atom8568202true) .nil))))))))
theorem atoms104 : Every (fun b => ∀ lit, BadRow (sources lit 3 4 b)) (atoms 3 4 [3,0,0,0]) := by
  have h : atoms 3 4 [3,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil
end Blc.SelfintSingleObject.Sat39
