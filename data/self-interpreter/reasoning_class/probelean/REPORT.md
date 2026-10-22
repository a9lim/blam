# Divergent-probe technique: kernel-checked

**Verdict: Lemma A and the full two-argument factorization corollary are
proved, without `sorry` or new axioms.** The file is `Probe.lean`, namespace
`Blc.DivergentProbe`. Nothing under `lean/Blc/` was edited.

No interpreter was built, no search or battery was run, and no new bit bound
is claimed.

## 1. Definitions and exact generality

The local definitions are:

```lean
def HNF (t : Term) : Prop := headStep t = none
def Solvable (t : Term) : Prop :=
  ∃ k p, headSteps k t = some p ∧ HNF p
```

`headStep` reduces beneath leading lambdas. Thus `λe a. Ω` is unsolvable,
although it has a weak head normal form. `solvable_iff_beta_hnf` proves that
the definition is equivalent to reaching an HNF by arbitrary beta reduction.
No full-normal-form premise is used anywhere in Lemma A.

`lemmaA` works for **any unsolvable probe value**, even an open one.
`lemmaA_after_two` requires only

```lean
¬ Solvable (.app (.app v (.var 0)) (.var 1))
```

because a solvable term remains solvable when applied to rigid arguments.
Consequently the requested hypothesis “unsolvable after any two arguments”
is more than sufficient; the two displayed rigid arguments already suffice.
There is no special assumption about the behavior of an underapplied probe.

## 2. Lemma A

The de Bruijn slots before substitution are C=0, x=1, y=2. Removing x by
`substDec 1 v` leaves the rigid suffix N=1.

```lean
theorem lemmaA {kappa v X : Term}
    (hscope : FreeUnder 1 kappa)
    (hv : ¬ Solvable v)
    (h : BetaJoin (.app (.app kappa v) (.var 1))
      (.app (.app (.var 0) X) (.var 1))) :
    ∃ A, Betas (.app (.app kappa (.var 1)) (.var 2))
      (.app (.app (.var 0) A) (.var 2))
```

`hscope` is exactly FV(kappa) ⊆ {C}. The conclusion is an actual beta
reduction, not merely a beta conversion or eta equality.

The stronger `lemmaA_context` takes any term t, with no scope restriction,
and a `Blind v` probe:

```lean
BetaJoin (substDec 1 v t) (C X N) → ∃ A, Betas t (C A y)
```

Here `Blind v` means that no finite application spine headed by v is
beta-convertible to a rigid term. `blind_of_unsolvable` discharges this
premise for every unsolvable v. This is a reusable substitution/reflection
lemma independent of the continuation presentation.

## 3. Continuation classification and exact corollary

From the fresh-argument conclusion of Lemma A, `classify_continuation`
proves that kappa beta-reduces to one of precisely these forms:

```text
C
λa. C B
λa b. C B b
```

The payload B remains arbitrary and may diverge or depend on the displayed
binders. The Lean representation is `CanonicalHead kappa`.

`channel_shape` proves that any rigid observation of `kappa A1 ... Am`
has head C and exactly m arguments. `channel_two_rest` proves that a
successful two-argument call forwards its second argument up to beta
conversion. No unique-occurrence or normal-payload assumption is used.

For the caller, the slots are kappa=0, forbidden independent C channel=1,
N=2. After inserting kappa_C by `substDec 0 kappa`, the public slots are
C=0 and N=1. The forbidden slot is how the C-free factorization hypothesis
is expressed without variable capture.

```lean
theorem probe_two_argument_corollary {T kappa v X Y : Term}
    (hscope : FreeUnder 1 kappa)
    (hv : ¬ Solvable v)
    (hprobe : BetaJoin (.app (.app kappa v) (.var 1))
      (.app (.app (.var 0) X) (.var 1)))
    (hC : occ 1 T = 0)
    (hrun : BetaJoin (substDec 0 kappa T)
      (.app (.app (.var 0) Y) (.var 1))) :
    ∃ k A B,
      headSteps k T = some (.app (.app (.var 0) A) B) ∧
      Betas B (.var 2)
```

This is the full claimed factorization: **T head-reduces to kappa A B
with exactly two arguments, and B beta-reduces to N while kappa is still
an independent free variable.** It is not merely a theorem about callers
already assumed to be two-argument tail calls.

`probe_two_argument_corollary_after_two` uses the weaker two-rigid-argument
probe premise from section 1. `two_argument_factorization` factors out
`CanonicalHead kappa` as the reusable algebraic hypothesis.

Additional checked consequences:

- `direct_return_remainder`: a successful direct `kappa a b` return forces
  `b →β* N`.
- `nfree_direct_return_impossible`: such a return is impossible if b has
  no occurrence of N.
- `trailing_argument_impossible`: `kappa a b c` cannot be beta-convertible
  to the required two-argument public C result.

## 4. Canonical 162-value instantiation

Define `omega = (λw. w w) (λw. w w)` and `probe = λe a. omega`.
For every body value supplied by the public parser relation:

```lean
theorem canonical_probe_reduces {B : Term} (hB : Den omega B) :
  Betas (absV (.lam B)) probe
```

The proof uses `Den` at d=0 and k=2 with arbitrary environment tail
`consP (.var 0) (.var 1)`. It therefore does not assume normality,
closedness, or absence of the code suffix in the evaluator value.
`canonical_probe_unsolvable` follows by the head cycle of `probe`.

`canonical162_probe_return` connects this representation to an actual 162
parser run. For every suffix R and continuation K it supplies B and U with:

```text
Den omega B
U →spine* R
parser162 K (quote(λomega) ++ R) →spine* K (absV (λB)) U
¬ Solvable (absV (λB))
```

Thus this is an instantiation for the actual canonical parser values,
not an unconnected surrogate term. `lemmaA_canonical` and
`probe_two_argument_corollary_canonical` specialize the results above to
these values.

## 5. Infrastructure and proof route

All of this infrastructure is kernel-checked in the lane file:

1. `headFactorizes_hnf` extends the existing indexed parallel-reduction
   pullback to arbitrary HNF targets, retaining residual beta reduction.
2. `hnf_beta`, `hnf_betas`, `solvable_join`: HNF is beta-preserved, and
   having an HNF is invariant under beta conversion.
3. `solvable_subst_reflect`, `unsolvable_subst`: every original head step
   survives arbitrary substitution; a terminating substituted head
   computation bounds the original one.
4. `solvable_app_reflect`, `unsolvable_apps`: unsolvability survives any
   finite list of applications.
5. `hnf_subst_rigid`, `solvable_app_rigid`, `unsolvable_of_two_rigid`:
   rigid arguments preserve solvability, yielding the after-two form.
6. `hnf_join_signature`: beta-convertible HNFs have identical leading
   lambda counts, head indices (bound or free), and exact spine arities.
   Arguments can be completely nonnormal. `rigid_join_shape` is its
   no-leading-lambda counterpart used by Lemma A.
7. `reflect_rigid`, `reflect_remainder`: the instance's rigid output
   forces an original rigid head, the unsolvable probe excludes its own
   head slot, and the suffix variable reflects exactly.
8. `classify_continuation` uses fresh rigid arguments and the FV bound.
   The caller factorization then uses source head normalization, absence
   of the independent C channel, exact arity preservation, and reflection
   of the suffix with kappa still free.

No solvability theorem remains assumed. No standardization, confluence,
or probe property was introduced as an axiom.

## 6. Build and axiom audit

Run from `/Users/a9lim/Work/blam/lean` to select its pinned Lean 4.32.2;
the repository root currently selects a different Lean version.

```sh
cd /Users/a9lim/Work/blam/lean
LEAN_PATH=/Users/a9lim/Work/blam/lean/.lake/build/lib/lean \
  lean -j2 /Users/a9lim/Work/blam/tmp/round4/probelean/Probe.lean
```

No `-o` is used. Builds take well under one second here, with two Lean
threads. `BUILD.log` contains the final command, version, elapsed time,
exit status, and the `#print axioms` output.

The main theorems (`lemmaA`, `lemmaA_after_two`, the canonical
instantiations, continuation classification, and both probe corollaries)
use only:

```text
propext, Classical.choice, Quot.sound
```

The factorization theorem after supplying `CanonicalHead`, canonical
probe reduction/parser-return theorem, and direct-return consequences
need only `propext` and `Quot.sound`. Full HNF head-signature stability
needs only `propext`. No `sorryAx`, added `axiom`, or unsafe proof shortcut.

## 7. What this does and does not settle

The semantic lemma and its algebraic corollary are complete. Applying them
to a proposed parser still requires proving the actual interface hypotheses:
FV(kappa_C) ⊆ {C}, the same continuation at the probe and identity run,
and the C-free single-channel factorization. H2 is represented by using
the very same kappa in `hprobe` and `hrun`; it is not inferred from parser
closedness. The report's actual-NEXT restriction remains necessary.

These theorems do not establish the separated class's independent rigid
reader laws at every unary length, nor exclude stream-capturing
continuations, additional C channels, or noncanonical value interfaces.
The next proof step for lower-bound lanes is a genuine interface theorem
for their candidate family, or a context-by-context application supplying
these hypotheses. The divergent-probe argument itself now has a checked
foundation and needs no further handwritten solvability bridge.

## 8. Follow-up: deriving the interface laws from the actual assembly

**All three requested derivations are now kernel-checked, including the
hypothesis plumbing and every-n induction.** New file: `Derive.lean`,
namespace `Blc.ProbeInterface`. It pastes the existing Probe/Slots code,
crediting Claude escape's generalized slot lemmas, and imports the unchanged
`Blc.SelfintClass` assembly definition. No file outside this lane was edited.

### 8.1 Exact assembly and separation hypotheses

The definition of the actual parser is literal:

```lean
parser T R Q = SelfintClass.assemble T R Q
            = substDec 0 (SelfintClass.functional R Q) T
```

The `Sep T R Q` structure states:

```text
FreeUnder 1 T
FreeUnder 2 R                 -- source reader frame [c,j]
FreeUnder 2 Q                 -- source NEXT frame [c,p]
BetaJoin T (app (var 0) T)     -- opaque fixed-point law
```

`Sep.closed` proves the actual parser closed.
`Sep.unfold` proves `P =β H P`, with `H = functional R Q`; this is not an
assumed parser equation. `Sep.run_reader` then proves

```text
P c s =β (atC actualReader c) s.
```

The exact actual NEXT and reader are:

```text
next   = substDec 1 P Q
reader = substDec 1 P (substDec 1 Q R)
```

`actual_reader_plug` proves the hygienic identity

```text
reader = substDec 1 next R.
```

Consequently the final unary theorem concerns the real reader with its real
NEXT inserted, not an unrelated abstract parser relation. No one-occurrence
condition on j, beta-normality of Q, or constructor value law is assumed.

The public contract is explicitly

```lean
IsSelfInterpreter (SelfintClass.assemble T R Q).
```

### 8.2 Precise source versions of Z, C1, and C2

The actual zero law is quantified over every c, every genuine bit, and every
remaining stream r:

```text
reader[c] (cons K (cons b r)) →β* next[c] b r,
b in {K,F}.
```

The more general API accepts beta conversion instead of reduction.
Requiring only the two genuine bits avoids silently assuming a zero law for
arbitrary malformed bit terms.

`HeadControls Q A F B` formalizes the report's rigid source controls in the
[c,p] frame. It requires `FreeUnder 2 A`, `FreeUnder 2 F`, and
`FreeUnder 2 B`, and these literal head-reduction statements:

```text
Q K t   →h* p A t
Q F t   →h* p KF t
KF x y  →h* p (B x) y
```

Here KF is the source template named F in Lean; the tag F is churchFalse.
The slots are c=0, p=1, t/x=2, and y=3. B represents the function
`λx. k2[x]`, so `B x` is the report's `k2[x]`.
These are fixed source templates, not metavariable functions that may
silently inspect the future stream. This gives a precise meaning to
“built before the body is read” and “t/y-free.” The payload constructor
bodies are not constrained.

`RigidControls` is the weaker beta-conversion form. The checked bridges
`rigid_abs_instance`, `rigid_app_instance`, and `rigid_second_instance`
instantiate the rigid source variables hygienically by the actual closed P
and arbitrary c, x, y, and r. `Protocol.of_rigid` constructs the actual-P
interface from them. Thus no informal rigid-to-actual instance step remains.

`LambdaProtocol` contains only Z and the ABS control. `Protocol` extends it
with the APP controls. This makes the absence of any C2 dependency in (a)
and (b) explicit in their theorem signatures.

### 8.3 RET/VAL simplification: a semantic equation follows from the contract

The formal proof establishes a stronger conditional result than originally
requested: **no separate RET or VAL premise is needed for (a)-(c)** under
this literal fixed-point assembly and the displayed control laws.

`SemanticRETVAL P` is the uniformly quantified equation needed by the
probe method:

```text
for every c,N, some closed v satisfies
  v rigidArg1 rigidArg2 has no HNF,
  P c (quote(lambda-Omega) ++ N) =β c v N.
```

`semantic_retval_from_contract` proves it from `IsSelfInterpreter P` alone.
The same witness works everywhere: `v = λe a. Ω`. Indeed the public source
is `λy. Ω`, whose required value in the exact contract is `λe y. Ω`.
The existing checked probe theorem supplies unsolvability.

This is a semantic return equation. It does **not** prove an operational
first-return assertion, a prescribed evaluation trace, or syntactic
closedness of the literal machine closure at its first return. The report's
informal “hands its continuation exactly (value, rest)” must distinguish
those stronger operational readings from beta conversion. Only the latter
is required for these beta-law conclusions, and it is now derived.

The simplification uses the fact that the recursive parser p is instantiated
by the same fixed point as the public interpreter (or a beta-equal parser).
An arbitrary different internal worker, especially one behind a root adapter
or using another return protocol, would need its own public-contract bridge.
The theorem does not identify every closed internal worker with P.

### 8.4 Every-n variable rest: the entire induction is checked

`iterA hp n c` is the n-fold ABS continuation. `iterA_scope` proves that
`iterA hp n C` has no free variable except C, for every n.
`parse_prefix` proves, by induction on n,

```text
P c (quote(lambda^n M) ++ N)
  =β P (iterA hp n c) (quote(M) ++ N).
```

This induction uses actual Z and ABS C1 only. It does not use C2, a variable
law, a value law, or normality.

`iterA_probe` applies the full contract to the closed source
`lambda^n (lambda-Omega)`. Together with the derived semantic return equation
it supplies each nested continuation's Lemma-A premise. Separately, applying
the full contract to `lambda^(n+1).var(n)` supplies the identity-family run.
`run_no_second_C` proves H3 from the closed parser and the quoted input;
there is no extra public-C channel in the abstract parse configuration.

Applying the checked corollary at each depth gives `variable_rest_parser`.
Unfolding the actual assembly and using Church-Rosser gives
`variable_rest_reader`:

```lean
∀ n, ∃ X,
  Betas (.app (substDec 1 (next T R Q) R)
          (unary (n + 1) (.var 2)))
    (output (.var 0) X (.var 2))
```

Here `unary n N = streamOf (vbits n) N`, exactly the same U_n convention as
widen's `FullReader`. This is every positive unary length, c abstract, and
j instantiated by the actual NEXT. The rest has already reduced to N in
the conclusion; no value identity is asserted.

### 8.5 ABS and APP second operand

`abs_dataflow`, using only `LambdaProtocol`, proves

```text
kA x y →β* c A_K y.
```

It obtains the probe instance by stripping one lambda prefix and using the
public contract twice, then applies Lemma A with `FV(kA) ⊆ {c}`.

`app_second_dataflow`, using the full `Protocol`, proves

```text
k2[x] z w →β* c A_2 w.
```

Its checked reduction/conversion chain is: APP zero handoff, APP C1, the
first closed-probe equation, C2, the second closed-probe equation, and the
public contract on `(λy.Ω)(λy.Ω)`. The two-slot lemma then leaves both value
slots abstract. The first probe's closedness is used explicitly when
reflecting the second value-slot substitution.

A_K and A_2 may depend on the displayed rest variables. No eta contraction
to a rest-independent constructor is performed. All p occurrences in these
dataflow conclusions have been instantiated by the actual P.

### 8.6 Entry points and verification

The single end-to-end theorem is:

```lean
derive_from_source_hypotheses
  (hs : Sep T R Q)
  (hi : IsSelfInterpreter (SelfintClass.assemble T R Q))
  (hc : HeadControls Q A F B)
  (hz : actual beta-reducing zero law)
  : ActualLaws T R Q A B
```

`ActualLaws` contains exactly (a) every positive unary rest law, (b) the ABS
rest law, and (c) the APP second-operand rest law. `derive_from_assembly`
accepts the weaker beta-conversion controls and zero law.
`derive_abs_from_source` proves (a) and (b) without either APP control or C2.

Build from the pinned-toolchain directory:

```sh
cd /Users/a9lim/Work/blam/lean
LEAN_PATH=/Users/a9lim/Work/blam/lean/.lake/build/lib/lean \
  lean -j2 /Users/a9lim/Work/blam/tmp/round4/probelean/Derive.lean
```

`DERIVE_BUILD.log` records the final successful build and axiom audit.
All three law theorems, both end-to-end variants, and the ABS-only theorem
use only `propext`, `Classical.choice`, and `Quot.sound`. The assembly,
substitution bridges, prefix induction, and derived semantic RET/VAL use
only `propext` and `Quot.sound`. No `sorry`, added axiom, or unsafe shortcut.
All runs remain far below two minutes and use `-j2`.

The remaining boundaries are unchanged: C1/C2 and actual Z are explicit
control/interface assumptions; the rigid-j reader law, rigid-p dataflow
laws, exact value component, and rest-independent constructors are not
proved. In particular this is not a derivation of `FullReader` or
`RigidNext`, whose additional conclusions would be circular assumptions
for this task.
