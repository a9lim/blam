Core milestone: Probe.lean kernel-checks HNF factorization, beta-conversion
invariance of solvability, substitution reflection (hence preservation of
unsolvability), application reflection, and Lemma A for every unsolvable
probe. Canonical evaluator absV (lam B), Den Omega B, reduces to lam-lam-Omega.
Next: derive the 0/1/2-lambda continuation classification and the full
C-free caller factorization, retaining exact arity and the free-slot rest.
Build from lean/ to select pinned Lean 4.32.2; root defaults to 4.35 and
cannot read the pinned olean files.
Completed: full Lemma A, any-unsolvable and after-two-rigid versions;
canonical evaluator reduction and actual 162-parser return;
0/1/2-lambda classification; exact head-factorization corollary with the
continuation still free and the suffix reducing independently; direct
wrong-rest/trailing-argument exclusions; full HNF head-signature invariance.
All current builds succeed, with only propext / Classical.choice / Quot.sound.
REPORT.md describes the exact algebraic H0/H3 slots and the remaining
parser-interface obligations. No tracked file was changed by this lane.
Follow-up: read escape REPORT section 5, NOTES 9-20, derive review, and
Slots.lean plus widen interfaces. Derive.lean pastes Slots (with attribution)
and uses the actual SelfintClass.assemble T R Q, scopes, and opaque knot.
The every-positive-unary-length parser rest theorem now kernel-checks:
variable_rest_parser. Its kappa_n scope and divergent probe are derived by
prefix induction from C1/Z and uniformly quantified RET/VAL. No full reader
law is assumed. Protocol uses actual-P control equations, fixed [c,p]
continuation templates, and RET quantified over every used c,N.
Follow-up complete: Derive.lean now proves all three laws over the actual
SelfintClass.assemble, including the exact hygienic actual-reader plug.
Source rigid C1/C2 are formalized as scoped templates, their actual-P
instances are proved by simultaneous substitution, and a HeadControls
wrapper accepts the report's literal head-reduction hypotheses.

Important strengthening discovered while checking RET: in this literal
opaque-fixed-point assembly P can be chosen as the public E itself.
IsSelfInterpreter P already implies the beta-conversion return equation
for the closed source lambda-Omega, uniformly over every continuation and
suffix. Choose returned v = lambda-lambda-Omega. Thus SemanticRETVAL is
proved from the public contract; it is not assumed by the final theorem.
This does not prove a first-return/trace property or that the literal
machine closure is syntactically closed. The final source theorem needs
Sep + full contract + actual Z + source head C1/C2 only.

The all-n induction uses only ABS control (the APP fields are unused in
that proof). B1 uses the same closed probe under one prefix; B2 uses it
at both operand continuations plus C2 and the escape two-slot lemma.
No reader value identity, rigid-j law, rest-independent constructor, or
rigid-p dataflow law was assumed or derived. All builds currently pass
with only propext / Classical.choice / Quot.sound, in under one second.
Final API refinement: LambdaProtocol is now separate from Protocol, and
variable_rest_reader / abs_dataflow accept only LambdaProtocol.
derive_abs_from_source exposes the source theorem with ABS C1 and Z,
without any APP control or C2. derive_from_source_hypotheses uses the
literal source head C1/C2, actual beta-reducing Z, Sep, and full contract.
SemanticRETVAL is separately defined and proved from the contract; no
RET/VAL field remains in the control interfaces. REPORT section 8 records
the precise distinction from an operational first-return property.
