# Pumps lane: 11,077 exclusions, 32 unresolved, and a faulty premise

**The requested lower bound is not established.** This lane certifies 11,077
of the supplied 11,109 capped arms, including 4,396 of the 4,417 beta-normal
arms. Thirty-two original arms remain unresolved; they have 29 distinct
residual forms, including 21 original normal arms. More seriously, the
supplied checker implements the wrong generator substitution. Completing its
capped list would therefore not validate its other 999,554 refutations.

All work and generated files are in this directory. No new arm enumeration,
tracked-repository edits, subagents, or consults were used. The starting
inventory and earlier argument are Claude's proof lane; the certificates and
audits here are Codex's work.

## 1. Two checker findings

The first finding directly concerns the fixed knot and the capped inventory.
Write the literal generator as

```
G = lambda x. (lambda intL cont list. B(list,cont,intL,x)) (x x).
```

Its actual equation is

```
G X c s ->^4 B(s,c,X X,X).
```

[The supplied checker](../proof/holecheck.rs) line 198 instead substitutes
`G` for the fourth argument of `inst4`, implementing `B(s,c,X X,G)`.
The outer binder is bound to **X**, including when X differs from G.
The distinction is unavoidable when V mentions the frame's x.

`GeneratorAudit.lean` kernel-checks a small counterexample to that rule, using
V=x, a rigid Q, and stream I:

```
correct:           G Q C I ->^6 Q NEXT_(Q Q,C)
erroneous unfold:             G NEXT_(Q Q,C) ->^2 lambda ...
```

The first result has rigid head Q; the second has a leading abstraction.
These shapes cannot be beta-equal. This is a semantic error, not a budget
issue. The corrected macro rule in this lane passes X into both places.

There is also a separate defect in the comparison routine. `Sym.matches`
reuses `Sym.seen` between different recursively compared arguments. A state
visited in one argument is not a repeat along the head reduction of another.
`matches_bug.rs` embeds the supplied checker unchanged apart from its entry
point and reports:

```
matches lambda z x. x (I I) (I I) against lambda z x. x I I:
Some(false), steps 2
```

`GeneratorAudit.comparison_beta_equal` proves their two beta contractions in
Lean without axioms. This establishes unsoundness of the comparison routine
in general. I have **not** established which original eight-probe verdicts
are affected by this second defect; this particular expected value is not
one of those eight probes. The generator defect already prevents accepting
the original enumeration as a proof.

A concrete correction to the original "all pumps diverge" description is
also kernel-checked: V=`x list list`, wire `0101111101010`, yields a 147-bit
machine whose identity-program invocation reaches the rigid remainder R
with **six arguments in 38 beta steps**. It has a finite wrong head.
`WrongHeadConcrete.not_selfinterpreter` proves the exclusion using confluence
and preservation of rigid head names under beta reduction.

## 2. Exact coverage

These are disjoint *chosen certificate families*. A term can admit several
proofs; the ledger assigns one. "Divergence" below concerns the selected
closed-program invocation or a demanded subterm of its required normal form,
not the open variable arm considered in isolation.

| Family | Original normal arms | Distinct checked residuals | Original capped arms, including beta expansions |
|---|---:|---:|---:|
| Finite grammar with a protected pending-spine suffix | 2,689 | 3,385 | 7,199 |
| Finite grammar with exact abstract call/return | 298 | 298 | 380 |
| Substitution-stable head pump | 479 | 484 | 778 |
| Finite wrong head, arity, or normal-form component | 930 | 1,044 | 2,720 |
| **Certified total** | **4,396** | **5,211** | **11,077** |
| **Unresolved** | **21** | **29** | **32** |

The partition in the question is covered as follows:

| Starting class | Total | Certified here | Unresolved |
|---|---:|---:|---:|
| Normal capped arms | 4,417 | 4,396 | 21 |
| Non-normal arms reducing to normal capped arms | 4,163 | 4,162 | 1 |
| Arms reducing to previously refuted normal forms of at most 27 bits | 2,357 | 2,355 | 2 |
| Former 172 exceptional cases: normal form larger than 27 bits | 96 | 90 | 6 |
| Former 172 exceptional cases: still non-normal | 76 | 74 | 2 |

The two remaining members of the previously-refuted class are deliberately
not inherited as exclusions from the faulty checker. Every certificate here
is independent of that checker's verdicts. All 8,109 explicit normalization
bridge steps are replayed. Normalization is over the fixed supplied list;
its larger reducts are not a new enumeration.

Files defining the complete membership and checking boundary:

- `members.tsv`: one row for every original capped arm, its source size,
  beta-reduction count, residual, and assigned family.
- `certificates.json`: one record per distinct residual, including the
  finite invariant or pump reconstruction parameters and its source record.
- `coverage.json`: the counts above and the input file's SHA-256.
- `verification.json`: every independently checked residual, graph or
  constraint counts, equation counts, and final verification timing.
- `unresolved.bits`: all 32 original unresolved arms.
- `unresolved_residuals.bits`: the 29 distinct unresolved residuals.
- `unresolved_normal.bits`: the 21 original normal unresolved arms.
- `unresolved.md`: those 29 residuals in readable lambda notation, with
  original-preimage counts. No row is assigned a divergent fate from growth
  or resource exhaustion.

Input SHA-256:
`e98f6082563dda27bd624dd3dc737bb7b696bcef57ad7834b0b92593fbcb7b78`.

## 3. The certificate invariants and their proofs

### A. Finite grammar and protected suffix

Each source lambda is lifted to a constructor carrying exactly its free
captures. A constructor with k consecutive binders consumes k pending
arguments; its macro rule is those k actual head beta contractions. P and G
use their literal four-step knot equations. No eta conversion is used.

The certificate is a finite regular tree grammar plus a finite set of head
configurations `(language label, known pending arguments)`. Its configuration
meaning permits an arbitrary further pending suffix. Productions are rigid
atoms, applications, captured lambda constructors, and aliases. Every
reachable production is checked:

- an alias or application leads to another listed configuration;
- a lambda has enough *known* operands, and its instantiated rule image is
  included in the successor language;
- a rigid head or an underapplied lambda is forbidden in a successful
  certificate.

Dropping excess pending arguments merely moves them into the arbitrary
protected suffix. It never grants a missing argument. Underapplication,
rigid heads, and size caps cause UNKNOWN during discovery.

For any concrete instance, application/alias decomposition is finite by the
inductive membership derivation of the finite concrete term. It reaches a
saturated lambda rule and takes a positive weak-head segment. The successor
satisfies the same invariant. Thus every concrete configuration has another
positive weak-head segment; a finite weak-head clock is impossible.

`grammar.py` constructs these invariants. `verify.validate_graph` separately
checks membership, every transition, and rule-image language inclusion. The
latter is a structural proof using grammar aliases and constructors; arbitrary
payload languages are not sampled.

### B. Call/return grammar

The second grammar analysis retains arguments as unevaluated language labels
and retains all arguments of partially applied closures. Each demanded label
has a finite set of possible weak-head results: a rigid head, or a lambda
constructor with its capture context and already supplied arguments.

The certificate supplies closed constraints for rigid atoms, lambdas,
aliases, function evaluation, partial application, and saturated application.
A saturated application requires language inclusion of the instantiated body
and inclusion of all of that body's results in the application's result set.
Arguments are evaluated only when demanded. The root result set is empty.

Induction on a hypothetical finite concrete weak-head evaluation derivation
puts its result in the corresponding abstract result set. The empty root set
contradicts such a derivation. It is enough to check a closed solution of the
constraints: the checker does not assume that discovery computed a least
fixed point. Resource exhaustion is never an empty-set certificate.

`eval_grammar.py` constructs the solution;
`verify.validate_eval` separately checks every closure constraint and every
body-language inclusion. This family's soundness argument is handwritten;
the finite instances are computer-checked, not individually formalized in
Lean.

### C. Substitution-stable pumps

A certificate is a finite pattern q with rigid metavariables, a concrete
entry instance, and a replay satisfying

```
q ->_head positive ; ->_beta* q[theta] A1 ... Ak.
```

The path never evaluates a metavariable as a function. Repeated occurrences
must match consistently. Ordinary capture-avoiding substitution preserves
the checked path. Consequently, every instance q[sigma], with any additional
trailing arguments, reaches another instance with another trailing list.
The mandatory head step strictly decreases a hypothetical weak-head clock;
the intervening beta steps cannot increase it. Iteration is impossible with
a finite clock.

`PumpLemmas.family_pump_no_nf` kernel-checks this family argument.
`classify.py`, `simplified.py`, and `dag_pump.py` discover instances;
`verify.py` replays entry and loop without searching. Simplification is
finite beta reduction between mandatory head steps. The DAG variant uses
exact structural hash-cons identities, never hash equality as a verdict.
Six late certificates have entry/period pairs `(1020,13)`, `(680,36)`,
`(30,99)`, `(360,86)`, `(142,246)`, and `(149,131)`, in macro steps.

### D. Finite wrong normal-form observations

The selected source program is closed, with a known exact normal form.
Actual and required terms are compared by weak-head shape, descending under
binders using fresh rigid names. A discrepancy of rigid head, arity, or
lambda versus rigid form is a finite beta-normal-form obstruction. A pump
in a demanded component is instead assigned a divergence certificate.
The checks preserve beta equality, not beta-eta equality.

No shared global history cache is used to reject separate comparisons.
The compiler and knot equations are checked independently as described below.

## 4. Complete Lean witnesses and general lemmas

`WrapperConcrete.not_selfinterpreter` is a complete theorem for the literal
147-bit source with V=`lambda u. u list u`, wire `0001011011010`.
Let W(s)=`lambda u. u s u`, and let N(c) denote this machine's NEXT.
The grammar is

```
H ::= N(c) | W(H),         c arbitrary
states: s I t Gamma,       s,t in H; Gamma arbitrary.
```

Its two exact equations are

```
W(s) I t Gamma ->^2 s I t Gamma
N(c) I t Gamma ->^5 t I W(t) N(K(c,I)) Gamma.
```

The first peels a wrapper. The second parses its second operand and
regenerates two H operands without evaluating the trailing list.
The module kernel-replays both equations on placeholders, lifts them by
substitution, proves the 25-step entry from the identity-program invocation,
and applies the invariant. `arm_wire`, `next_wire`, and `machine_bits` pin
the actual source, the fixed NEXT bytes, and its 147-bit size.

`WrongHeadConcrete.not_selfinterpreter` is the complete finite wrong-head
witness V=`x list list` described above. `GeneratorAudit.lean` checks the
incorrect generator rule and the independent comparison-cache counterexample.
`PumpLemmas.lean` contains the general clock/invariant and protected-tail pump
lemmas. The concrete exclusion theorems use only `propext` and `Quot.sound`;
there is no `sorry`, oracle verdict, or resource-exhaustion premise.
The comparison equality theorem needs no axioms.

The entire inventory is **not** a kernel-checked theorem. Its explicit
remaining trusted mathematical argument is soundness of the regular-language
certificate schemes and their lambda-lifting realization. Individual macro
rules are checked on fresh rigid arguments by a separate literal de Bruijn
reducer in `lambda_check.py`. The existing formal substitution-stability
lemma justifies extending those finite equations to arbitrary captures.

## 5. Reproduction and limits

From the repository root:

```
python tmp/round3/pumps/verify_all.py
python tmp/round3/pumps/check_lean.py PumpLemmas GeneratorAudit WrapperConcrete WrongHeadConcrete
```

The first command checks the fixed input set and all beta bridges, checks the
literal macro equations, and independently audits every selected certificate.
The final run checks 5,211 residuals, covering 11,077 source arms. It does not
enumerate arms. `source_hashes.json` pins the checking sources.

Exploratory passes used one process per slice, at most two simultaneous
workers. Each run was bounded below two minutes; all completed slices were
under 100 seconds. A costly experimental simplifier was interrupted before
that limit, then given explicit per-case deadlines. No timeout was promoted
to a proof. The final replay takes about nine seconds on this machine.
A separate, frozen native certificate-search binary found no Ratchet,
HeadTowerRatchet, Selector, or PassengerDiagonal certificates for the final
29 residuals (`native-cert.log`); this contributes no exclusion.

Files named `pilot*`, `class-*`, `combined-*`, or `refined-*` predate the
corrected G rule and are discovery records only. Their verdicts must not be
used. `certificates.json`, `members.tsv`, and `verification.json` are the
current authoritative outputs.

No correct complete interpreter was built or claimed. The two 147-bit
sources are formal counterexamples to correctness, not new interpreter
records. No battery pass or sub-162 construction is claimed.

The next theorem-producing work is: certify the 29 explicit residuals;
repair and review the generator and comparison/re-entry logic; and repeat
or independently validate the original complete enumeration. That final
new enumeration is outside this lane's authorization. Until then,
`|V| >= 28` in the stated reader shape remains unproved.
