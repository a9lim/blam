import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem atoms75 : Every (fun b => ∀ lit, BadRow (sources lit 3 3 b)) (atoms 3 3 [0,0,3]) := by
  have h : atoms 3 3 [0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil
theorem atoms76 : Every (fun b => ∀ lit, BadRow (sources lit 3 3 b)) (atoms 3 3 [0,1,2]) := by
  have h : atoms 3 3 [0,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil
theorem atoms77 : Every (fun b => ∀ lit, BadRow (sources lit 3 3 b)) (atoms 3 3 [0,2,1]) := by
  have h : atoms 3 3 [0,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil
end Blc.SelfintSingleObject.Sat39
