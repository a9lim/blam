import Blc.SelfintRootLetPending
import Blc.SelfintRound8ReaderTwoLambda
namespace Blc.Slice39Extra633
open SelfintClass
def readerSource : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 2)))))))) (.var 1)) (.var 0))
theorem reject : ¬ Reader readerSource := by
 exact SelfintRootLetEmbedding.diagonal_not_reader [(.var 1), (.var 0)]
#print axioms reject
end Blc.Slice39Extra633
