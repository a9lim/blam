import Flow
import Arity
import Unary
namespace Blc.Rootcert2Controls
open Rootcert2Flow
example : check (tab []) (tab []) frigid
  (.app (.var 3 [3]) (.var 1 [1]) [3]) = true := by decide
example : check (tab []) (tab []) frigid
  (.app (.var 3 [3]) (.var 1 [1]) []) = false := by decide
example : Rootcert2Arity.check (Rootcert2Arity.tab []) (Rootcert2Arity.tab []) Rootcert2Arity.frigid
  (.app (.var 3 [9]) (.var 1 [3]) [10]) = true := by decide
example : Rootcert2Arity.check (Rootcert2Arity.tab []) (Rootcert2Arity.tab []) Rootcert2Arity.frigid
  (.app (.var 3 [9]) (.var 1 [3]) [11]) = false := by decide
example : Rootcert2Unary.check (Rootcert2Unary.tab []) (Rootcert2Unary.tab []) Rootcert2Unary.frigid
  (.app (.app (.var 0 [0]) (.var 1 [4]) [1]) (.var 2 [8]) [2]) = true := by decide
example : Rootcert2Unary.check (Rootcert2Unary.tab []) (Rootcert2Unary.tab []) Rootcert2Unary.frigid
  (.app (.app (.var 0 [0]) (.var 1 [4]) [1]) (.var 2 [8]) [1]) = false := by decide
end Blc.Rootcert2Controls
