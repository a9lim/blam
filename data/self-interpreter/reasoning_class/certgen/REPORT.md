# certgen — regular closure/stack certificates; SF2 soundness bug

**The general regular checker certifies 33 of the requested 36 residual
cutoffs; all remaining sources are excluded by separate symbolic Lean
proofs.** The checker uses one allocation-independent finite regular
invariant, with no W5/SR/SF case split. It supports K-like and multi-argument
closures by retaining regular languages of pending arguments.

**The old SF2 rule is unsound and remains withdrawn.** An accepted
counterexample has a kernel-checked head normal form. Seven of its eight
positive inventory cases have regular replacement certificates; the eighth,
`rootnarrow/work/h2_2.json` cut index 31, is excluded by a protected-argument
invariant in `lean/Blc/SelfintRootCutoffs.lean`. That module also closes the
three sources left by the regular checker.

Evidence labels: **[L]** kernel-checked, **[C]** independently checked finite
computation, **[H]** handwritten proof. No statement here assumes source
minimality. The recorded computations and resource measurements below are
the saved certificate run, not a fresh replay of every archived case.

## 1. Complete interpreters and controls

No interpreter was built. No sub-162 claim, interpreter battery result, or new
reader lower bound is asserted.

`CONTROLS.json` records six positive divergence controls (Omega, W5, SR,
SFprime, an arity-two base, and the shared Y-family's H H), all accepted.
Nine terminating terms were tested with four allocations each: **36/36 were
rejected**, including the SF2 false positive after filling its hole with I,
an ignored Omega operand, under-applied K, and both previously documented
fuel/SF pitfalls. The exact closure evaluator independently reaches a
weak-head normal form on every negative control; their displayed forms also
have head normal forms. Three forged certificate mutations are rejected.

## 2. Exact identities and proofs

### 2.1 The SF2 counterexample [C, L]

Write

    T_z = lambda a b. b b z
    H_W = lambda z. z T_z W
    R_W = (lambda x. x x) H_W.

The exact five-step identity is

    R_W Z ->h^5 W W H_W W Z.

Proof: contract Delta, then the two dispatcher calls, then the two binders
of T_H. The first argument of T_H is discarded; its **second** argument W
becomes the head. With W opaque the reference closure evaluator reaches the
hole after five beta steps. Nevertheless, the existing
`certsf.certify2(R_W,Z)` returns `True` (`SF2_BUG.json`).

For the closed filling W = I, **`R_I Z ->h^17 r`**. This literal reduction and
`Solvable (R_I Z)` are kernel-checked in `SF2Counterexample.lean`, using the
repository's `Blc.headSteps`, `SelfintClass.Z` and `SelfintProbe.Solvable`.
Both theorems use only `propext`.

The faulty step is `rootnarrow/work/certsf.py:187`: every dummy argument is
named `#Z_i`; `base`/`isS` treats every such constant as an S-element. SF2's
stated invariant constrains only the first argument. A two-argument template
can consequently return an arbitrary later argument and have it incorrectly
recognized as an S-head.

`audit_sf2.py` makes a conservative **local** repair by marking only the first
argument as S and all later ones as arbitrary. It rejects the false positive.
It also withdraws `h2_2.json:31` and `h2_5.json:31` from the eight old SF2
acceptances. The latter is independently recovered by the new checker; the
former uses the separate protected-argument proof in `SelfintRootCutoffs`.
The invalid rule itself supplies no evidence for its conclusion.
No predecessor file was modified.

### 2.2 One general regular-shape certificate [H, C, L]

A shape is a source-code base plus an environment of finite value addresses
and a finite continuation address. Value addresses denote regular sets of
closure trees; continuation addresses denote regular sets of stacks of typed
arguments. The stack may be unbounded. Its first argument and the remaining
arity are retained through the grammar, including after K-like erasure.

The checked invariant contains the initial empty-environment/empty-stack
state, contains **every** possible abstract successor, and contains no opaque
head or lambda with an empty stack. Store allocation is untrusted discovery;
allocation modes and context lengths do not alter the certificate rule.

`Regular.lean` proves the finite checker sound by forward simulation to a
concrete call-by-name Krivine machine. `progress` supplies a concrete successor
for every related state; `invariant_no_stop` proves that no finite concrete
run can end in a terminal state. `goodb_sound`, `check_sound`, and
`range_sound` justify replay by finite kernel computation. Cyclic stores are
allowed, with inductive denotations of finite concrete closures/stacks.
The proof does not mistake an abstract cycle, an empty flow set, or exhausted
fuel for divergence. Its axiom inventory is only `propext`, `Quot.sound`.

**Formal boundary:** `SelfintRegularSoundness.lean` now proves the general
translation to ordinary lambda reduction and every scoped opaque filling.
Administrative transitions preserve the instantiated term and decrease a
closure rank; lambda/pop is exactly a weak-head beta step. An executable
source-DAG check supplies well-founded decoding. See `SOUNDNESS.md`.

The archived `Case*.no_stop` theorems remain literal code-table claims.
Their individual source-DAG and decoding correspondences have not been
replayed through the new general theorem. The small exact instance in
`SelfintRegularExamples` checks the complete path to `not Solvable`.

## 3. Exclusions, validation, and remaining limits

### 3.1 Supplied input coverage

Indices throughout are **zero-based**. `MANIFEST.json` retains each literal
source, chosen allocation, certificate hash, and individual resource record.

| Input | Certified / supplied | Kernel-replayed code-table instances |
|---|---:|---:|
| `h2_2.final_left` | 9 / 12 | 8 |
| `h2_5.final_left` | 11 / 11 | 11 |
| `pre_h63re.txt` | 12 / 12 | 12 |
| `h3_1.json` — all original cut-offs | 18 / 18 | 18 |
| **Total inspected** | **50 / 53** | **49** |

`h3_1.json` contains eighteen original cases without identifying the one
reported residual. Certifying all eighteen includes that residual. Hence
**33/36** of the requested residuals have regular certificates. The three
others have independent symbolic proofs in `SelfintRootCutoffs.lean`.

The terms outside the regular-certificate coverage are all in `h2_2.final_left`, at indices **0, 2, 3**
(lines **1, 3, 4**). With Delta = lambda x. x x, their forms are:

| Index | Term | Failed abstraction obligation |
|---:|---|---|
| 0 | `Delta (lambda z. z (lambda a b. b (z a)) (z W))` | possible opaque head W |
| 2 | `Delta (lambda z. z (lambda a b. z (z b)) (z W))` | possible opaque head W |
| 3 | `Delta (lambda z. z (lambda a b. z (z a)) W)` | possible lambda with empty stack |

The value/continuation stores lose the relationship between a captured z and
its particular pending arguments. The resulting **abstract** paths may force
W or under-apply a lambda. These are not observed concrete halts. Increasing
call context, changing allocation, and a few checked finite-prefix probes
did not supply an invariant within the tested settings. This is a limitation
of these instantiated abstractions, **not** a proof that the whole regular
shape domain cannot express these terms.

`Case04` (index 4 of `h2_2.final_left`) is accepted by the independent Python
checker, with the proved general checker and ordinary-lambda semantic bridge
available. Its **individual Lean replay is deferred**: the memory
watchdog stopped repeated decompositions of its largest finite invariant.
It has 1,926 quotient states. `deferred_lean.json` records the exception;
none of its capped jobs is counted as a proof.

### 3.2 Predecessor regression

The bounded audit inspected **835** recorded cut-offs from `h_xfull1`,
`h2_1`, `h2_2`, `h2_5`, and `h3_1`. It re-obtained **256** positive
W5/SR/SFprime/SF2 certificates; unaccepted or capped old checks were not
classified as semantic failures. C1/C2 are not conflated with this regression:
C2 can reject a reader by a terminating head mismatch.

| First successful old variant | Old positives | New checker passes |
|---|---:|---:|
| W5 | 21 | 21 |
| SR | 5 | 5 |
| SFprime | 222 | 222 |
| SF2 | 8 | 7 |
| **Total** | **256** | **255** |

The sole miss is `h2_2.json:31`, discussed above. Thus unconditional acceptance
of every old SF2-positive input would be an unsound validation requirement.
`REGRESSION.json`, `SF2_AUDIT.json`, and `SF2_REPLACEMENTS.json` carry the
per-source outcomes. Seven portable replacement certificates for old SF2
cases are saved separately.

### 3.3 Resource evidence and reproduction

The final **104 required Lean modules pass**, covering the generic proof,
49 original code-table certificates, and the explicit SF2 counterexample.
Maximum successful file: **9.34 s**, **1.357 GB sampled RSS**, two threads.
Maximum final discovery: **2,993 states**, **8,819 work visits**, **0.111 s**,
**26.42 MB RSS**, one thread. The independent manifest/axiom/source/resource
audit passes (`VERIFICATION.json`). No `sorry`, `sorryAx`, `native_decide`,
or new axiom supplies a required theorem.

Operational exception: the first exploratory `probe_aam.py` process grouped
multiple separately bounded checks, totaling **137,048 reported states plus
capped attempts**. Under the requested aggregate per-run interpretation this
exceeded the 100,000-state cap; it ran in 0.53 s. Those experimental invariants
are not final evidence. All final evidence was regenerated with one source
per subprocess and conservative limits. Capped Lean attempts were discarded.

From the repository root:

    PYTHONDONTWRITEBYTECODE=1 python tmp/round4/certgen/certify.py '(\x.x x)(\x.x x)' --context 0
    PYTHONDONTWRITEBYTECODE=1 python tmp/round4/certgen/certify.py --check tmp/round4/certgen/Case01.json
    PYTHONDONTWRITEBYTECODE=1 python tmp/round4/certgen/controls.py
    PYTHONDONTWRITEBYTECODE=1 python tmp/round4/certgen/run_all.py
    PYTHONDONTWRITEBYTECODE=1 python tmp/round4/certgen/validate.py

The CLI accepts an arbitrary term or `--file`, optional `--zero-probe`, a
bounded allocation context, and `--out` to save a portable certificate and
Lean replay source. `UNKNOWN` is neither a halt nor an exclusion. The saved
required formal module list deliberately excludes the deferred Case04.

## 4. Honest read and next proof step

This replaces most shape-specific certificate engineering with one finite
closure/stack invariant and a proved checker. It closes every listed
h2_5 and pre_h63re residual and all h3_1 originals, but it
does not close the full docket or establish 162 optimality.

The next domain improvement should preserve a relationship between captured
parameters and the continuation that supplied them, rather than enlarging a
uniform call string. The three remaining new cases and the reopened
`h2_2.json:31` isolate that need. The next formal step is a reusable theorem
connecting the finite acyclic code-table closure machine to the repository's
head-step relation and scoped substitutions. Neither step is claimed done.

The immediate correctness action for the coordinator is to withdraw the
unqualified SF2 rule and its unsupported `h2_2.json:31` exclusion; the other
seven audited SF2 cases have independent replacement certificates here.
