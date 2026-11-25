import Flow
import Blc.SelfintRootLetPending
import Blc.SelfintRound8ReaderTwoLambda
namespace Blc.Slice41Extra880
open SelfintClass HandlerLet
set_option maxRecDepth 20000
set_option maxHeartbeats 3000000
def readerSource : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))))))) (.var 0)) (.var 1))
theorem reject : ¬ Reader readerSource := by
 exact SelfintRound6ReaderShallow.live_depth_zero_not_reader (.app (.app (.app (.lam (.app (.var _) (.var _)) (by decide)) (.lam (.app (.var _) (.lam (.app (.var _) (.app (.var _) (.app (.var _) (.lam (.var _) (by decide))))) (by decide))) (by decide))) (.var _)) (.var _)) (by decide)
#print axioms reject
end Blc.Slice41Extra880
