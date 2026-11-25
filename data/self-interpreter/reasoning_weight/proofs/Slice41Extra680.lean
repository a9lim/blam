import Flow
import Blc.SelfintRootLetPending
import Blc.SelfintRound8ReaderTwoLambda
namespace Blc.Slice41Extra680
open SelfintClass HandlerLet
set_option maxRecDepth 20000
set_option maxHeartbeats 3000000
def readerSource : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 2)))) (.var 2)))))) (.var 1))
theorem reject : ¬ Reader readerSource := by
 exact mixed_reduct true [[1, 1]] [[], [], [1], [1, 1], [1, 1, 1], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2]] (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 2)))) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 2)))) (.var 2)))))) [(.var 0), (.var 0), (.lam (.app (.app (.app (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 2)))) (.var 5))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 2)))) (.var 6)))))))) (.var 3))) (.app (.var 0) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 2)))) (.var 6))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 2)))) (.var 7)))))))) (.var 4)))))) (.var 2))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 2)))) (.var 4))))))) (.app (.var 0) (.lam (.app (.lam (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 2)))) (.var 6))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 2)))) (.var 7)))))))) (.var 4))) (.app (.var 0) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 2)))) (.var 7))))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 2)))) (.var 8)))))))) (.var 5)))))) (.var 3))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 2)))) (.var 5)))))))))) (.var 1))), (.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject
end Blc.Slice41Extra680
