# Rust slot-search specification

## The two contracts

Two search contracts; do not blur them:

1. **Parametric slot search — implemented** (`blam slots var|abs|app`,
   `src/cli/slots.rs`, behind the `lab` feature;
   results in `results.md`: all three slots exhaustively optimal).
   Close the open slot under rigid binders and compare its complete β-normal form with the reference. A pass is a proof of contextual correctness for every substitution, not merely evidence from test markers.

2. **Fixed-interpreter/context-sharing search — the open lane** (§2;
   on the project docket).
   Allow candidates to exploit `list`, `list1`, `bit1`, the fixed point, and relationships between them. Finite probes cannot prove this lane correct; splice survivors into the complete interpreter and run the full battery plus exhaustive small programs.

Never use closed Church terms as markers for unrelated roles: that
scheme produced a false positive in the retired Python probes and is
structurally unsafe.

## Verified live facts

- Slot frame, outermost to innermost:

| Role | zero-based frame bit | de Bruijn index | BLC variable size |
|---|---:|---:|---:|
| `exp` | 0 | 1 | 2 |
| `bit1` | 1 | 2 | 3 |
| `list1` | 2 | 3 | 4 |
| `bit0` | 3 | 4 | 5 |
| `list` | 4 | 5 | 6 |
| `cont` | 5 | 6 | 7 |
| `intL` | 6 | 7 | 8 |
| `a` | 7 | 8 | 9 |

- Reference slots extracted from the checked-in 170-bit interpreter:

```text
ABS, 43 bits:
cont (λargs arg. exp (λzx zy. zx arg (zy args)))

APP, 41 bits:
intL (λexp2. cont (λargs. exp args (exp2 args)))
```

- `Machine::normalize` on an open root does not enter “UB territory” in the current safe Rust implementation; it indexes `envs[u32::MAX]` and panics. It is still unusable for open roots.
- `normalize()` has a transition-cap floor of `1 << 22`; the search must call `normalize_capped()` explicitly.

## 1. Sound parametric probe

For a candidate `C` enumerated under the eight slot binders, construct:

```text
U(C) =
λrest.
 λa. λintL. λcont. λlist. λbit0. λlist1. λbit1. λexp.
   C rest
```

Implementation detail: after decoding `C`, create `Var(9)`, form `App(C, Var(9))`, then wrap it in nine lambdas. No shifting of `C` is required: its original indices 1–8 still address the innermost eight frame binders, while index 9 addresses `rest`.

Normalize `U(C)` and compare its complete BLC normal-form stream with the corresponding reference normal form.

### Goldens

These were normalized directly from the live 170-bit interpreter.

ABS:

```text
λrest a intL cont list bit0 list1 bit1 exp.
  cont
    (λargs arg. exp (λzx zy. zx arg (zy args)))
    rest
```

Normal-form size 73, zero β-steps:

```text
0000000000000000000101111111000000111100000010111011100110111101111111110
```

APP:

```text
λrest a intL cont list bit0 list1 bit1 exp.
  intL
    (λexp2. cont (λargs. exp args (exp2 args)))
    rest
```

Normal-form size 71, zero β-steps:

```text
00000000000000000001011111111000011111111000010111101001110101111111110
```

### Why this is sound

If `U(C)` and `U(REF)` normalize to the same term `N`, then:

```text
U(C) =β N =β U(REF)
```

β-equivalence is preserved by substitution and enclosing contexts. Therefore every instantiation of all eight frame variables and `rest` produces β-equivalent behavior. This is stronger than any finite family of closed markers, streams, or continuations.

A candidate that passes this test is observationally correct wherever the slot is used. The 10-program battery in `tools/self-interpreter/harness.py` is then an engineering check on extraction, closing, and splicing—not the semantic proof.

The limitation is deliberate: a fragment that only works because `bit1`, `list1`, `a`, and `intL` have their particular runtime relationships may fail this universal test. Such a fragment belongs to the contextual lane and cannot support a parametric optimality claim.

## 2. Optional contextual probe family

If searching beyond parametric replacements, use valid parser states and rigid outer variables. Never reuse a closed term across semantic roles.

Notation:

```text
S(bits, R)       Scott bit stream with rigid tail R
⟦e⟧              reference semantic builder for object term e
Γq                cons' Xq0 (cons' Xq1 (cons' Xq2 Gq))
Kraw              λe r. Oraw e r
Krun              λe r. Orun (e Γ0) (e Γ1) r
```

Every `R`, `X`, `G`, and `O` is a distinct outer λ-bound variable. They are rigid levels during normalization, so no two roles can collide.

Use these object-term rows:

| Row | ABS body `e` | APP function `f` | APP argument `x` |
|---|---|---|---|
| 0 | `v0` | `v0` | `v1` |
| 1 | `λ.v0` | `λ.v0` | `v0` |
| 2 | `v0 v0` | `v0 v1` | `λ.v0` |
| 3 | `(λ.v0) v0` | `λ.(v1 v0)` | `v0 v0` |

For ABS row `e`:

```text
a      = actual fixed-point generator
intL   = reference 170-bit intL
cont   = Kraw, then Krun
list   = S("00" ++ enc(e), R)
bit0   = true
list1  = S("0" ++ enc(e), R)
bit1   = true
exp    = ⟦e⟧
input  = R

expected = cont ⟦λ.e⟧ R
```

For APP row `(f,x)`:

```text
a      = actual fixed-point generator
intL   = reference 170-bit intL
cont   = Kraw, then Krun
list   = S("01" ++ enc(f) ++ enc(x), R)
bit0   = true
list1  = S("1" ++ enc(f) ++ enc(x), R)
bit1   = false
exp    = ⟦f⟧
input  = S(enc(x), R)

expected = cont ⟦f x⟧ R
```

Run `Kraw` rows first; their exact strong normal forms expose the builder and tail directly. Run `Krun` only on survivors.

These probes are discriminators, not a proof. A sufficiently context-specialized fragment can agree on every finite table and fail elsewhere.

### Full-battery repair

For every full-battery program `p`, replace the shared closed tail with a rigid tail:

```text
λg t.
  E_candidate
    (λe r. (e g) r)
    (S(enc(p), t))
```

Expected:

```text
λg t. p t
```

Here `g` and `t` are distinct rigid variables. This eliminates the same marker/tail aliasing class that caused the VAR false positive.

After the 10 programs, run all normalizing closed terms through at least 18 bits—658 terms already enumerated by the repository—and compare the same symbolic-tail closure. That is cheap for a small survivor set and materially stronger than adding more hand-selected examples.

## 3. Closing strategy and resource verdicts

Use closed wrappers; do not modify the KN machine to accept open roots.

For the universal probe, the nine outer lambdas add:

- zero β-contractions;
- nine level bindings/readback transitions;
- no substitution growth.

For a concrete probe using actual frame values, construct:

```text
(λa intL cont list bit0 list1 bit1 exp. C)
  Va Vi Vk Vl Vb0 Vl1 Vb1 Ve
```

Then apply the result to the probe stream. This adds exactly eight head β-contractions. The KN machine stores eight closures; it does not copy the candidate or probe values, so the closing itself has no meaningful blowup.

Every normalization verdict must be one of:

```text
PASS       terminated and output exactly matched
FAIL       emitted an irrevocably wrong normal-form bit/prefix
DIVERGE    proved by the sound divergence oracle
UNKNOWN_BETA
UNKNOWN_TRANSITIONS
```

Never turn either cap into `FAIL`.

Recommended first rung for the 71/73-bit universal closures:

```text
β cap:          256
transition cap: 16_384
```

Promote unknowns through the existing ladder/oracle machinery. A 42-bit term can hide enormous normalization work; an exhaustive-optimality claim must report residual unknowns rather than silently discard them.

Add a comparison sink that:

- compares output incrementally with the golden;
- stops at the first mismatch;
- rejects an extra bit after the golden ends;
- reports PASS only when the machine terminates exactly at golden length.

The transition cap bounds KN environment and stack growth. The input pool is bounded by the candidate/probe syntax size, and early comparison bounds output storage. Thus a separate substitution-node cap is unnecessary on the KN path; it remains mandatory if the BB/substitution engine is used for escalation.

## 4. Sound enumeration pruning

For the parametric contract, these are necessary:

| Slot | hard required frame variables |
|---|---|
| ABS | `exp`, `cont` |
| APP | `exp`, `cont`, `intL` |

Proof: the expected universal normal form contains each variable rigidly, and β-reduction cannot introduce a free variable absent from the source.

These are not all necessary for fixed-interpreter specialization. For example, `exp` can in principle be reconstructed by reparsing `list1`, and `intL` can be recovered through the fixed-point machinery or replaced by an inline parser. Therefore:

- hard-enable these masks only in `--contract parametric`;
- do not describe the resulting search as exhaustive over all fixed-context replacements;
- contextual search should eventually sweep every occurrence mask.

Verified counts for regression tests:

```text
all open terms, frame=8, size <= 40:  4,299,963,246
all open terms, frame=8, size <= 42: 15,388,221,349

ABS with exp+cont, size <= 42:          740,485,972
APP with exp+cont+intL, size <= 40:       5,120,164
```

### Obligation-aware `go()`

Replace pending `(v,n)` with:

```rust
struct Pending {
    depth: u8,
    size: u8,
    must: u8,
    forbid: u8,
}
```

`frame = 8` is fixed and `v = frame + depth`.

For a variable of 1-based index `i = size - 1`:

```text
if i <= depth:
    occurrence = 0                   // candidate-local binder
else:
    r = i - depth - 1
    occurrence = 1 << r              // frame role
```

Accept the leaf iff:

```text
occurrence & forbid == 0
must & !occurrence == 0
```

Lambda:

```text
(depth, n, must, forbid)
  -> (depth+1, n-2, must, forbid)
```

Application requires a unique obligation partition. For every subset `S ⊆ must`:

```text
left:
    must   = S
    forbid = forbid ∪ (must \ S)

right:
    must   = must \ S
    forbid = forbid
```

Interpretation: a required variable goes left if it occurs there; otherwise it is forbidden on the left and required on the right. If it occurs in both, it is classified in `S`, while the right remains unrestricted. This makes the partition unique and avoids duplicate generation.

Precompute a saturating DP:

```text
count(depth, size, must, forbid)
```

using exactly the variable/lambda/application recurrence above. Use zero counts to skip branches and use subtree counts when splitting Rayon tasks. Factor branch expansion so `go()` and `split_tasks()` cannot drift.

Regression-test the constrained DP against a brute occurrence-mask enumerator through at least 17 bits.

## 5. Skeleton search

Do not start by enumerating arbitrary lambda contexts with holes. That simply recreates raw program search while making equivalence and budget attribution harder.

Use a role-typed parser IR:

```text
Parser ::= Fix[f](p. λk s. Parse(p,k,s))

Parse(p,k,s) ::=
  Read[t0](s; b0,s1.
    If(b0,
       Node(p,k,s1),
       Ret(k, Hvar(s1), Hskip(s1))))

Node(p,k,s1) ::=
  Read[t1](s1; b1,s2.
    Call(p,
      λe1,s3.
        If(b1,
           Ret(k, Habs(e1), s3),
           Call(p,
             λe2,s4. Ret(k, Happ(e1,e2), s4),
             s3)),
      s2))
```

Primitive compilation contracts:

```text
Read(s; b,t.Q)  = s (λb t.Q)

implicit Read is allowed only when
Q(b,t) = F(b) t and t is not free in F:
s (λb.F(b))

Ret(k,e,s)      = k e s, modulo the chosen global K convention
Call(p,k,s)     = p k s, modulo the chosen global Parser convention

Habs(e)         = λargs arg. e (Hcons(arg,args))
Happ(e1,e2)     = λargs. e1 args (e2 args)
Hvar(suffix)    = suffix
Hskip(s)        = s s s
Hcons(x,xs)     = λzx zy. zx x (zy xs)
```

A skeleton is the canonical tuple:

```text
(fixpoint_template,
 global_calling_convention_vector,
 legal_tail_fusion_mask,
 scheduling_template,
 ordered hole signatures/scopes)
```

Initial fixed-point catalog:

```text
shared/current:
  (λx. x x) (λx. (λp. Body[p]) (x x))

direct duplicated:
  (λx. Body[x x]) (λx. Body[x x])

Curry-Y applied to λp.Body[p]

one or two additional known Θ/Y layouts
```

Do not enumerate unrestricted fixpoint contexts initially.

Calling conventions are global choices, not per-call-site adapters:

```text
Parser arguments: (k,s) or (s,k)
Continuation arguments: (e,s) or (s,e)
ABS environment binders: (args,arg) or (arg,args)
cons' payload order: (head,tail) or (tail,head)
```

A hole record contains:

```text
semantic role
ordered in-scope binder roles
application arity/context
fixed occurrence count
minimum and maximum bit budget
```

For a linear skeleton:

```text
total_bits = fixed_bits + Σ hole_bits
```

If a hole occurs more than once, multiply by its occurrence count; preferably reject nonlinear holes in the first implementation.

### Deduplication

- Compile binders to de Bruijn immediately; alpha variants disappear.
- Canonicalize dependency-independent binders and nodes by semantic role order.
- Require one global calling convention; prohibit local adapters.
- Maximally η-contract every linear final-tail edge. Do not enumerate both explicit and implicit forms when the contraction side condition holds.
- Represent holes as unique rigid constructors and hash the compiled context.
- Cache candidate libraries by `(hole signature, ordered frame layout, budget)`, not by skeleton ID.
- Do not attempt whole-term β-normalization for deduplication across recursive fixpoint templates.

### Status

The parametric ABS/APP/VAR harness is implemented and its sweeps are
complete (`results.md`). The contextual lane (§2, drop the must
mask to 0) is the open mechanical route; the skeleton sweep above is
the lane after that. Both remain architecture-family searches — not
interpreter optimality proofs — and contextual multi-hole survivors
still require splicing, symbolic-tail batteries, and exhaustive
small-program differential testing.
