import Gate2PhysicalCompiler
set_option maxRecDepth 1000000
namespace QalcCompilerPins
open QalcComposedMachine QalcGate2PhysicalCompiler
def program_smoke : Term := .app (.app (.app (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.app (.var 3) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 1) (.var 2))))))))) (.gate .h)) (.gate .t)) (.gate .c)
def cert_smoke : Certificate := [([.fn, .fn, .fn, .body, .body, .body, .fn, .arg, .arg], [])]
def certPaths_smoke : List Path := [[.fn, .fn, .fn, .body, .body, .body, .fn, .arg, .arg]]
theorem term_smoke : compileTerm? empty1 = some program_smoke := by native_decide
def certPinned_smoke : Bool :=
  (compilerCertificate empty1).length == cert_smoke.length &&
  certPaths_smoke.all fun position =>
    certificateLookup (compilerCertificate empty1) position ==
      certificateLookup cert_smoke position
theorem cert_pinned_smoke : certPinned_smoke = true := by native_decide
def program_h : Term := .app (.app (.app (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.app (.var 3) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.app (.app (.var 3) (.lam (.lam (.var 2)))) (.app (.var 5) (.var 1))) (.lam (.lam (.lam (.app (.var 1) (.var 2)))))))))))) (.gate .h)) (.gate .t)) (.gate .c)
def cert_h : Certificate := [([.fn, .fn, .fn, .body, .body, .body, .arg, .body, .body, .fn, .arg, .arg], [⟨.c, (some .second), lp [.fn, .fn, .fn, .body, .body, .body, .fn, .fn, .fn] []⟩]), ([.fn, .fn, .fn, .body, .body, .body, .fn, .arg, .arg], [])]
def certPaths_h : List Path := [[.fn, .fn, .fn, .body, .body, .body, .fn, .arg, .arg], [.fn, .fn, .fn, .body, .body, .body, .arg, .body, .body, .fn, .arg, .arg]]
theorem term_h : compileTerm? h1 = some program_h := by native_decide
def certPinned_h : Bool :=
  (compilerCertificate h1).length == cert_h.length &&
  certPaths_h.all fun position =>
    certificateLookup (compilerCertificate h1) position ==
      certificateLookup cert_h position
theorem cert_pinned_h : certPinned_h = true := by native_decide
def program_t : Term := .app (.app (.app (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.app (.var 3) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.app (.app (.var 3) (.lam (.lam (.var 2)))) (.app (.var 4) (.var 1))) (.lam (.lam (.lam (.app (.var 1) (.var 2)))))))))))) (.gate .h)) (.gate .t)) (.gate .c)
def cert_t : Certificate := [([.fn, .fn, .fn, .body, .body, .body, .arg, .body, .body, .fn, .arg, .arg], [⟨.c, (some .second), lp [.fn, .fn, .fn, .body, .body, .body, .fn, .fn, .fn] []⟩]), ([.fn, .fn, .fn, .body, .body, .body, .fn, .arg, .arg], [])]
def certPaths_t : List Path := [[.fn, .fn, .fn, .body, .body, .body, .fn, .arg, .arg], [.fn, .fn, .fn, .body, .body, .body, .arg, .body, .body, .fn, .arg, .arg]]
theorem term_t : compileTerm? t1 = some program_t := by native_decide
def certPinned_t : Bool :=
  (compilerCertificate t1).length == cert_t.length &&
  certPaths_t.all fun position =>
    certificateLookup (compilerCertificate t1) position ==
      certificateLookup cert_t position
theorem cert_pinned_t : certPinned_t = true := by native_decide
def program_cx : Term := .app (.app (.app (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.app (.var 3) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.app (.app (.var 3) (.lam (.lam (.var 2)))) (.app (.var 5) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.app (.app (.var 5) (.var 3)) (.var 1)) (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 2))))))))))))))) (.gate .h)) (.gate .t)) (.gate .c)
def cert_cx : Certificate := [([.fn, .fn, .fn, .body, .body, .body, .arg, .body, .body, .fn, .arg, .arg], []), ([.fn, .fn, .fn, .body, .body, .body, .fn, .arg, .arg], [])]
def certPaths_cx : List Path := [[.fn, .fn, .fn, .body, .body, .body, .fn, .arg, .arg], [.fn, .fn, .fn, .body, .body, .body, .arg, .body, .body, .fn, .arg, .arg]]
theorem term_cx : compileTerm? cx2 = some program_cx := by native_decide
def certPinned_cx : Bool :=
  (compilerCertificate cx2).length == cert_cx.length &&
  certPaths_cx.all fun position =>
    certificateLookup (compilerCertificate cx2) position ==
      certificateLookup cert_cx position
theorem cert_pinned_cx : certPinned_cx = true := by native_decide
def program_mixed : Term := .app (.app (.app (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.app (.var 3) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.app (.app (.var 3) (.lam (.lam (.var 2)))) (.app (.var 5) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.app (.app (.var 5) (.lam (.lam (.var 2)))) (.app (.var 7) (.var 3))) (.lam (.lam (.app (.app (.app (.var 7) (.lam (.lam (.var 2)))) (.app (.var 8) (.var 3))) (.lam (.lam (.app (.app (.app (.var 9) (.var 3)) (.var 1)) (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 2))))))))))))))))))))) (.gate .h)) (.gate .t)) (.gate .c)
def cert_mixed : Certificate := [([.fn, .fn, .fn, .body, .body, .body, .arg, .body, .body, .arg, .body, .body, .arg, .body, .body, .fn, .arg, .arg], [⟨.c, (some .second), lp [.fn, .fn, .fn, .body, .body, .body, .arg, .body, .body, .fn, .fn, .fn] []⟩]), ([.fn, .fn, .fn, .body, .body, .body, .arg, .body, .body, .arg, .body, .body, .fn, .arg, .arg], [⟨.c, (some .second), lp [.fn, .fn, .fn, .body, .body, .body, .fn, .fn, .fn] []⟩]), ([.fn, .fn, .fn, .body, .body, .body, .arg, .body, .body, .fn, .arg, .arg], []), ([.fn, .fn, .fn, .body, .body, .body, .fn, .arg, .arg], [])]
def certPaths_mixed : List Path := [[.fn, .fn, .fn, .body, .body, .body, .fn, .arg, .arg], [.fn, .fn, .fn, .body, .body, .body, .arg, .body, .body, .fn, .arg, .arg], [.fn, .fn, .fn, .body, .body, .body, .arg, .body, .body, .arg, .body, .body, .fn, .arg, .arg], [.fn, .fn, .fn, .body, .body, .body, .arg, .body, .body, .arg, .body, .body, .arg, .body, .body, .fn, .arg, .arg]]
theorem term_mixed : compileTerm? mixed2 = some program_mixed := by native_decide
def certPinned_mixed : Bool :=
  (compilerCertificate mixed2).length == cert_mixed.length &&
  certPaths_mixed.all fun position =>
    certificateLookup (compilerCertificate mixed2) position ==
      certificateLookup cert_mixed position
theorem cert_pinned_mixed : certPinned_mixed = true := by native_decide
end QalcCompilerPins
