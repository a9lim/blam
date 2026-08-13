import QalcConcreteCertificate

namespace QalcCanonicalRRI
open QalcConcrete
set_option maxHeartbeats 0
set_option maxRecDepth 100000
namespace p_qq
def term : Term := .app (.app (.lam (.lam (.app (.app (.app (.app (.var 2) (.lam (.lam (.var 2)))) (.lam (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 2)))))) (.lam (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 2)))))) (.app (.app (.app (.app (.var 2) (.lam (.lam (.var 2)))) (.lam (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 2)))))) (.lam (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 2)))))) (.app (.var 2) (.lam (.lam (.var 2)))))))) (.gate .h)) (.gate .t)
def certificate : Certificate := [([.fn, .fn, .body, .body, .arg, .arg, .arg], []), ([.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .arg], []), ([.fn, .fn, .body, .body, .fn, .fn, .fn, .arg], [])]
def exactRowsChunk (states : List State)
    (expected : List (List Edge)) : Bool :=
  eqBool states.length expected.length &&
    (states.zip expected).all (fun pair =>
      eqBool (step term pair.1 certificate) pair.2)
end p_qq
end QalcCanonicalRRI
