import Blc.SelfintFiniteChain

namespace Blc.SelfintFiniteChain

/-- Replay an application grade from its operator and argument grades. -/
theorem appEq {G : Algebra n} {ρ : Env n} {f a : Term} {x y z : Fin (n+1)}
    (hf : eval G ρ f=x) (ha : eval G ρ a=y) (hop : G.ap x y=z) :
    eval G ρ (.app f a)=z := by simp only [eval,hf,ha,hop]

end Blc.SelfintFiniteChain
