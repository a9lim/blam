import Blc.SelfintResidual45.ProbeModel

set_option Elab.async false
namespace Blc.SelfintFiniteChain
open Blc.Floor45
open Term SelfintLowerBound SelfintControl Round3Floor38
theorem afterTyped (G : Algebra n) {e c m r t u : Term} {aa : List Term}
    {x y z : Fin (n+1)} (hm : Closed m) (hp : Betas (call e c m r aa) t) (hq : Betas (want c m r aa) u)
    (hn : NFt u) (ht : Typed G (rho x y) t z) (hu : ¬ eval G (rho x y) u ≤ z) :
    ¬ IsSelfInterpreter e := by
  intro he
  exact hu (eval_le (typed_betas (expected he hm hp hq hn) ht))
end Blc.SelfintFiniteChain
