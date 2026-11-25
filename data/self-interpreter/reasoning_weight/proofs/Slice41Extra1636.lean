import Flow
import Blc.SelfintRootLetPending
import Blc.SelfintRound8ReaderTwoLambda
namespace Blc.Slice41Extra1636
open SelfintClass HandlerLet
set_option maxRecDepth 20000
set_option maxHeartbeats 3000000
def readerSource : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1))))))))) (.var 0)) (.var 1))
theorem reject : ¬ Reader readerSource := by
 exact SelfintRootLetPowers.diagonal_not_reader_after_rigid 3 0 [(.var 1)]
#print axioms reject
end Blc.Slice41Extra1636
