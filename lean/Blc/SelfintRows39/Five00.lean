import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem atoms0 : Every (fun b => ∀ lit, BadRow (sources lit 2 1 b)) (atoms 2 1 [3]) := by
  have h : atoms 2 1 [3] = [] := by decide +kernel
  rw [h]
  exact .nil
theorem atoms1 : Every (fun b => ∀ lit, BadRow (sources lit 2 2 b)) (atoms 2 2 [0,3]) := by
  have h : atoms 2 2 [0,3] = [] := by decide +kernel
  rw [h]
  exact .nil
theorem atoms2 : Every (fun b => ∀ lit, BadRow (sources lit 2 2 b)) (atoms 2 2 [1,2]) := by
  have h : atoms 2 2 [1,2] = [] := by decide +kernel
  rw [h]
  exact .nil
end Blc.SelfintSingleObject.Sat39
