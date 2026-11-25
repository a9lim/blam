import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem atoms78 : Every (fun b => ∀ lit, BadRow (sources lit 3 3 b)) (atoms 3 3 [0,3,0]) := by
  have h : atoms 3 3 [0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil
theorem atoms79 : Every (fun b => ∀ lit, BadRow (sources lit 3 3 b)) (atoms 3 3 [1,0,2]) := by
  have h : atoms 3 3 [1,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil
theorem atoms80 : Every (fun b => ∀ lit, BadRow (sources lit 3 3 b)) (atoms 3 3 [1,1,1]) := by
  have h : atoms 3 3 [1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil
end Blc.SelfintSingleObject.Sat39
