import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem atoms69 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [3,0,0,0,0]) := by
  have h : atoms 2 5 [3,0,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil
theorem atoms70 : Every (fun b => ∀ lit, BadRow (sources lit 3 1 b)) (atoms 3 1 [3]) := by
  have h : atoms 3 1 [3] = [] := by decide +kernel
  rw [h]
  exact .nil
theorem atoms71 : Every (fun b => ∀ lit, BadRow (sources lit 3 2 b)) (atoms 3 2 [0,3]) := by
  have h : atoms 3 2 [0,3] = [] := by decide +kernel
  rw [h]
  exact .nil
end Blc.SelfintSingleObject.Sat39
