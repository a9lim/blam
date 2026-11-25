import Flow
import Blc.SelfintRootLetPending
import Blc.SelfintRound8ReaderTwoLambda
namespace Blc.Slice41Extra1638
open SelfintClass HandlerLet
set_option maxRecDepth 20000
set_option maxHeartbeats 3000000
def readerSource : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0))))) (.var 0)) (.var 1))
theorem reject : ¬ Reader readerSource := by
 exact mixed_reduct true [[1, 1, 1]] [[2, 1], [2, 1], [2, 1, 1, 1], [2, 1, 1, 1], [2, 1, 1, 1], [2, 1, 1], [2, 1, 1], [2, 1, 1], [2, 1], [2, 1], [2, 1, 1], [2, 1, 1], [2, 1, 1], [2, 1], [2, 1], [2, 1], [2], [2], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject
end Blc.Slice41Extra1638
