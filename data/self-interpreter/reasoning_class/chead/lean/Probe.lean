import Blc.SelfintClass
open Blc Blc.Term Blc.SelfintClassNext Blc.SelfintClass

namespace Chead
def valZero : Term := .app (.var 1) (.lam (.lam (shift 1 0 absVt)))
def valOne  : Term := .app (.var 1) (.lam (.app (.var 2) (.lam (.lam (shift 1 0 appVt)))))
def restZero : Term := .app (.var 1) (.lam (.lam (.var 0)))
def restOne  : Term := .app (.var 1) (.lam (.app (.var 2) (.lam (.lam (.var 0)))))
def combos : List (Bool × Bool) := [(false,false),(false,true),(true,false),(true,true)]
#eval combos.map (fun e => (merged false 0 (shift 1 0 (etaChoice e.1 valZero)) (shift 1 0 (etaChoice e.2 valOne))).1)
#eval combos.map (fun e => (merged false 0 (shift 1 0 (etaChoice e.1 restZero)) (shift 1 0 (etaChoice e.2 restOne))).1)
#eval combos.map (fun e => (merged false 0 (shift 1 0 (etaChoice e.1 nextZero)) (shift 1 0 (etaChoice e.2 nextOne))).1)
end Chead
