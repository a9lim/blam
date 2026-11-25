import Blc.SelfintRootLetPending
import Blc.SelfintRound8ReaderTwoLambda
namespace Blc.Slice39Extra1271
open SelfintClass
def readerSource : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.var 0)) (.var 1))
theorem reject : ¬ Reader readerSource := by
 exact SelfintRound8ReaderTwoLambda.flat_root_two_lambda_not_reader (b := (.app (.app (.var 0) (.var 0)) (.var 0))) (a := (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))) (c := (.var 0)) (d := (.var 1)) (cs := []) (by decide) (by decide) (by decide) (by decide)
#print axioms reject
end Blc.Slice39Extra1271
