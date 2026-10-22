# Global lane: explicit ceilings for probe and conversion arguments

**No unconditional floor above 40 is proved here.** The new results are
kernel-checked counterexamples to several proposed ways of obtaining a much
larger floor. In particular, the entire infinite tower family has an 88-bit
interpreter, and the entire Church application-spine family has a 154-bit
interpreter. These are restricted-domain terms, **not self-interpreters**.
Their proofs are inductions, not finite test batteries.

There is also a new obstruction to converting every interpreter into the
separated class by beta equality: a first-bit guard preserves the exact
closed-source contract and violates a necessary off-domain law of every
class member. A conversion preserving only the closed-source contract is
still possible in principle; its additive size guarantee is equivalent, at
the level of minima, to the numerical lower bound one wants to prove.

The requested broad directions are not formal proof systems, so a ceiling
for one precise set of obligations does not exclude a refinement using new
obligations. The table states exactly what is capped. In particular, I found
no nontrivial ceiling below 162 for the **full** value-projection contract,
and no impossibility theorem for a size-aware semantic conversion. Those
remain open rather than being declared exhausted.

## 1. Quantitative results and their exact scope

Write `I = lambda x.x`, `K = lambda x y.x`, `F = lambda x y.y`,
`Omega = (lambda x.x x)(lambda x.x x)`, and `Q(M,N) = code(M) ++ N`.
All suffix quantifiers below allow arbitrary terms, including divergence.

| Obligations used by the lower-bound argument | Maximum bound on the original E from those obligations alone | Witness or reason |
|---|---:|---|
| The established minimum width/capture/nonlinearity counts alone | 33 | The source-count inequalities are attained by `Delta S`, of 33 bits. This is not an interpreter. |
| Increasing the number of distinct origins for different output binding roles | Cannot force a second such origin | The record's shared-S translation puts every reconstructed output binder at one original `S.x`. |
| Escape Lemma A's forwarding conclusion by itself | No additional source node | `kappa = C` already has `kappa x y = C x y`. It costs 2 bits in the one-free-variable frame. |
| Remainder extraction on all closed sources | 62 | `rem70`, minus the 8-bit `E F` projection overhead; existing theorem. |
| Remainder on all towers, unary skipping, and arbitrarily late origin growth | 37 | `tower45`, minus 8; existing construction and growth calculation. |
| Values on every `lambda^n.I` | 48 | New 57-bit decoder, minus 9. |
| Values on every `lambda^n.I` **and** every `lambda^n.Omega` | 75 | New 84-bit decoder, minus 9; includes the escape lane's poison value. |
| Both outputs, jointly, on every `lambda^n.I` | 88 | New 88-bit restricted interpreter. |
| Values on every `lambda f x. f^n x` | 112 | New 121-bit decoder after let optimization, minus 9. |
| Both outputs, jointly, on every `lambda f x. f^n x` | 154 | New 154-bit restricted interpreter. |
| The full value-decoder contract on all closed sources | 162 | `intL162 K` has 171 bits. This ceiling is only the record upper bound; the route remains open. |
| Conversion into the separated class with additive overhead `d >= 0` | `162 - d` when positive | The class already contains a 162-bit member. Current class floor 146 gives only `146 - d`. |

The rows are **ceilings on possible lower-bound proofs using the stated
obligations**, not new lower bounds of 48, 75, 88, 112, or 154. They cannot
be added. Nor does a witness for each row supply one witness for the union
of all rows. The new witnesses give no ceiling below 162 for a proof using
all the normal and divergent probes together with additional structure.

There is a bookkeeping correction to the prompt: the value projection adds
**9**, not 8, bits. `|K| = 7`, `|F| = 6`, and an application costs 2:

```
|E K| = |E| + 9,                 |E F| = |E| + 8.
```

`GlobalBarriers.lean` proves the full value projection, its transfer theorem,
and these upper limits. Thus a value floor of at least 50, or a remainder
floor of at least 49, would already improve the global 40. Nothing here
rules either improvement out.

## 2. A beta-preserving conversion into the class is impossible globally

For any closed term E define

```
G(E) = lambda c s. s K (E c s) s.
```

This is the familiar first-bit gate used for a different purpose: it is an
off-domain obstruction witness, not a proposed size improvement.

For a Scott cell `S = cons b R`, the exact reductions are

```
S K -> K b R ->* b,
G(E) C S ->* b (E C S) S.
```

Consequently

```
G(E) C (cons K R) ->* E C (cons K R),
G(E) C (cons F R) ->* cons F R.
```

Every closed source starts with the zero bit: its root cannot be a free
variable, and both lambda and application codes start with 0. Therefore
`IsSelfInterpreter E` implies `IsSelfInterpreter (G(E))`, including on
divergent sources. Literal source accounting gives

```
|G(E)| = |E| + 30.
```

Now every separated-class member satisfies at least the length-one root
variable law

```
E C U_1(N) =beta C U_0(N) N.                     (RV)
```

Here is the short, handwritten bridge from the actual class definition.
The knot equation gives `E =beta H E`. Unfold `H = lambda p c.R[Q/j]` and
apply `C,U_1(N)`. Substitute `p := E`, `c := C`, and the actual instantiated
NEXT for `j` into the reader's independent length-one law. Its right side
contains no `j`, so the result is exactly (RV). NEXT's normality and branch
cost are irrelevant to this implication.

In contrast, `G(E) C U_1(N) ->* U_1(N)`. For independent rigid `C,N`, this
is a beta-normal outer lambda, while `C U_0(N) N` is a beta-normal rigid
application. They cannot be beta equal. Beta equality is a congruence, so
`G(E)` is not beta equal to **any** term satisfying (RV).

The generic guard correctness, +30 accounting, violation of (RV), and
non-joinability with every (RV) term are kernel-checked in
`GlobalBarriers.lean` (`guard_contract`, `guard_size`,
`guard_not_join_root_variable`). The bridge from the separated assembly to
(RV) is the handwritten substitution argument above.

Using the proved 162 gives a concrete **192-bit** witness. This refutes a
beta-preserving conversion asserted for *all* interpreters. It does **not**
refute a conversion restricted to sources shorter than 162: the exhibited
witness is larger than that threshold.

## 3. Contract-only conversion: exact minimum arithmetic

Let `g` be the minimum size of a true interpreter and `s` the minimum in
the separated class. Both minima exist because their sets contain the 162.
For a fixed nonnegative integer d, the following are equivalent:

1. There is a map F from interpreters to class members such that
   `|F(E)| <= |E| + d` for every interpreter E.
2. `s <= g + d`.

For 1 -> 2, apply the map to a globally minimum interpreter. For 2 -> 1,
map every input to one minimum class member. This proof is kernel-checked
as `semantic_conversion_iff`, with abstract predicates and explicit
minimum witnesses; it uses no axioms.

This does not invalidate a useful syntax-directed construction. It says
that *existence of a contract-only map* is no easier numerically than its
desired conclusion. A zero-overhead map would be exactly equality of the
global and class minima. A map with positive overhead cannot prove 162
from a class whose minimum is at most 162.

Specific thresholds:

- With the current class floor 146, beating 40 requires `d <= 105`.
- Even after proving class optimality at 162, beating 40 requires
  `d <= 121`, and proving global optimality through this transfer needs
  `d = 0`.
- The constant map to the known 162 already has overhead 122 using the
  current global floor 40. It transfers at most 40 even with a sharp class
  bound, or only 24 from the currently proved class floor 146.

The existing +17 embedding into a stream-using NEXT does not give any of
these reverse size guarantees.

## 4. Infinite tower and poison families have small witnesses

These are new constructions, with complete family proofs in
`TowerBarriers.lean`. Write `box(A) = lambda unused.A`, with the binder
chosen fresh. Then `K A ->* box(A)`. The displayed recursive equations
refer to the `G G` state of the finite source `(lambda x.x x) G`.

### Values on lambda towers: 57 bits

The finite source is

```
(lambda x.x x)
  (lambda x s.
    s I F (lambda b r. b (x x r))).
```

Its state V has exactly these clauses, for arbitrary R:

```
V (1 ++ R)   ->* I,
V (00 ++ R)  ->* K (V R).
```

For the first clause, `s I ->* I` on a one-headed stream, so
`s I F NEXT ->* F NEXT -> I`. For a zero-headed stream,
`s I F NEXT ->* tail(s) NEXT`. The next Scott cell supplies its bit b and
tail r; a second zero gives `b = K` and hence `K (V r)`.

Induction on m now gives

```
V (0^(2m) 1 ++ R) ->* box^m(I).
```

`code(lambda^n.I) = 0^(2(n+1)) 10`. Thus the public 57-bit term returns
exactly `box(lambda^n.I)` for every n and N. Notice how weak mere lambda
depth is as an obligation: the input's own K bits supply the vacuous
wrappers. The quotation-origin restrictions allow precisely these wrappers.

The theorem is `value57_towers`. It quantifies over all n and all suffixes.
On the non-tower source `I I`, the decoder returns I, whereas the required
value is `box(I)`, so this is not a full value decoder.

### Both outputs on lambda towers: 88 bits

The finite source is `towerBoth88.lam`:

```
(lambda x.x x)
  (lambda x c s.
    s (lambda b r.
      b (x x (lambda v.c (b v))) (c I) (r F))).
```

Its two relevant clauses are

```
P C (10 ++ N)  ->* C I N,
P C (00 ++ R)  ->* P (lambda v.C (K v)) R.
```

To derive them, the first cell passes b,r to the handler. The actual b
selects the recursive parser or `C I`; the shared final argument `r F`
discards the next cell. On the zero branch the captured b is K. On the
one branch r is the terminating-zero cell, so `r F ->* N`.

Induction on m gives `C box^m(I) N` on `0^(2m)10 ++ N`, which is the full
required answer on `lambda^n.I` when `m = n+1`. This includes arbitrary
continuations and suffixes, not just value and tail selectors. The theorem
is `both88_towers`; `tower_full_ceiling` states the 88-bit barrier directly.

The source has one continuation factory, reused at every depth. Each
generated continuation forwards its suffix exactly, but infinitely many
depth obligations do not force infinitely many source factories. On `I I`
this term leaves the second I's code in the suffix, so it is not a
self-interpreter.

### Towers plus the divergent poison values: 84 bits

The finite source is

```
(lambda x.x x)
  (lambda x s.
    s I F (lambda b r.
      b (lambda z.x x r) (lambda z.Omega))).
```

It satisfies

```
V (1 ++ R)   ->* I,
V (00 ++ R)  ->* box(V R),
V (01 ++ R)  ->* box(Omega).
```

The first clause is the preceding reader calculation. On a leading zero,
the second input bit selects the displayed box. Therefore the same tower
induction gives all `lambda^n.I` values. Since Omega's own code starts
with 01, a separate induction gives

```
V Q(lambda^n.Omega,N) ->* box(lambda^n.Omega)
```

for every n,N. No normalization of Omega is invoked: the exact divergent
term remains below its box. This includes `n = 1`, the value of
`lambda y.Omega` used by the escape lane, and every number of outer lambda
wrappers around it. The theorems are `value84_towers`, `value84_poison`,
and `poison_value_ceiling`.

It returns `box(Omega)` on `I I`, so again this is a restricted decoder.
Its 75-bit transfer ceiling applies to these value equations, not to the
full interpreter contract on their union.

## 5. Generic application spines: 154 for both outputs, 121 for values

Take the normal, closed Church numeral sources

```
M_n = lambda f x.f^n x,
code(M_n) = 0000 (01110)^n 10.
```

Their values are pairwise distinct beta-normal terms; the application
spines do not collapse to I. Let `B_n = (01110)^n 10` be the body's code.
When the first bit of a nonempty spine is consumed, the next four bits
are 1110. Those four bits are a unary skip word. Consequently

```
r = 1110 ++ R:  r r r ->* R,
r = 0 ++ N:     r r r ->* N.
```

These are instances of the existing all-unary `skip` theorem. Thus the
same tail expression handles both recursive application steps and the
terminal variable; no separate pending-left-child parser is needed for
this restricted grammar.

Define the numeral successor value and the four-cell discard operation:

```
Succ(v) = lambda f x.f (v f x),
drop4(s) = (lambda q.s q q q q) F.
```

Four uses of Scott tail projection prove `drop4(0000 ++ R) ->* R`.
For the exact numeral syntax, two beta contractions under f,x prove
`Succ(M_n) ->* M_(n+1)`.

### CPS body and public boundary

The 104-bit finite CPS body `spineBody104.lam` implements

```
P C s =beta
  s (lambda b r.
    b (P (lambda v.C (Succ(v)))) (C F) (r r r)).
```

At `B_0 = 10`, the Boolean selects `C F`, and the skip returns N.
At `B_(n+1) = 0 1110 B_n`, it selects the recursive call and the same
skip returns `B_n ++ N`. Induction yields

```
P C (B_n ++ N) ->* C M_n N.
```

The public boundary restores the exact outer value lambda:

```
E = lambda C s.
      P (lambda v.C (lambda z.v)) (drop4(s)).
```

The body costs 104 and this boundary adds 50: **154 bits**. The theorem
`church_full_contract` proves the full result `C (lambda z.M_n) N` for
every n,C,N. `church_full_ceiling` gives the corresponding ceiling on
any lower bound derived only from this entire family.

### Value-only body and the 121-bit rendering

The direct value body instead satisfies

```
V s =beta s (lambda b r. b (Succ(V (r r r))) F).
```

The same induction gives `V (B_n ++ N) ->* M_n`. Its public boundary is

```
D = lambda s z. V (drop4(s)).
```

The initial inlined rendering has 123 bits. Let optimization produced
**121** by factoring the closure construction as the literal beta redex

```
(lambda v f x.f (v f x)) (x x (r r r))
```

inside the recursive generator. One beta contraction gives exactly the
original inlined source and grows it by two bits. This is directly
kernel-checked as `churchValue121_beta`; correctness transfers by that
one contraction. `church_value121_contract` and `church_value_ceiling`
are the all-n/all-suffix theorems, so the value-projection transfer stops
at **121 - 9 = 112** on this family.

Both public terms deliberately discard four input cells before decoding.
On the identity source I, those cells are the entire code, leaving the
rigid suffix as the decoder's next input. Its rigid head is then the
suffix, not the required continuation/value shape. Neither is a full
self-interpreter or full value decoder.

## 6. What the divergent probe does and does not charge

I accept the escape lane's Lemma A in its corrected scope: if only C is
free in kappa and `kappa v_W N =beta C X N`, then
`kappa x y ->* C A y`. Its head-variable argument survives divergent values
and is stronger than testing normal values alone.

There are three distinct issues before using it for a global bit bound.

1. **Finding the interface.** The global contract does not give the
   stream-free-continuation condition H0 or the single-C-channel condition
   H3. A continuation may capture a suffix computation; the root C may
   also reach the worker through another channel. The escape review's
   counterexamples apply. The general head decomposition explicitly allows
   both public variables in every stream-headed payload.
2. **Counting obligations.** The conclusion itself needs no new binder:
   `kappa = C` works. Repeated nontrivial transformations of the first
   payload can use the one factory in `towerBoth88`. An additional tail
   must be passed in a runtime call, but a runtime call is not a new source
   occurrence. The fixed 84-bit decoder satisfies the poison-value
   equations at every lambda depth without supplying arbitrary semantics.
3. **Charging original structure.** The record's modified shared-S
   translation shows that all complex output binders may descend from one
   original binder. Width 3, two live captures, and two incomparable
   nonlinear binders are simultaneously sharp. The missing quantitative
   fact concerns the cost of using and connecting shared code, not a larger
   count of those objects.

The new 121-bit witness gives a small, relevant example of why residual
wire length is not automatically chargeable to the source. In its one
contracted redex, the argument `x x (r r r)` has five free occurrences,
the substituted variable occurs once at depth two, and there are no outer
references in the contractor's body. The exact wire-cost formula gives

```
delta = (5 - 1) * 2 - 6 = 2.
```

The shorter source really is the version that constructs the value through
an affine beta redex. This is a source connection/capture saving, not a
separate module minimum.

For head traces, the existing growth theorem is already stronger than
merely finding a nonlinear contraction: it forces growth arbitrarily late.
Nevertheless `tower45` realizes that indefinitely with one recurring
context. The 88-bit term adds exact tower values and suffix forwarding;
the Church-spine terms add arbitrarily deep applications and genuinely
different normal values. None forces a per-depth source charge. Full
application parsing still has the independent 70-bit remainder witness,
so counting pending-source residual operations alone cannot surpass its
62-bit transfer ceiling.

## 7. Artifacts and verification

### Complete interpreter built

| Artifact | Written bits | Let-optimized rendering | Exact battery line | Purpose |
|---|---:|---:|---|---|
| `guard192.lam`, `guard192.blc` | 192 | 192, through two cuts | `192 bits  ok=667 skip=1 fail=0` | Correct closed-source interpreter violating the class's root-variable law. |

Its all-source correctness is separately proved in Lean; the battery is
only a source-export regression check. The battery used two workers and
took 2.281 seconds. The fixed let-structure normalization took 0.152 s.

### Restricted witnesses — no full-interpreter claim

| Artifact | Written -> let-optimized bits | Kernel-checked domain |
|---|---:|---|
| `towerValue57.{lam,blc}` | 57 -> 57 | Value on every `lambda^n.I`, every suffix. |
| `towerBoth88.{lam,blc}` | 88 -> 88 | Both outputs on every `lambda^n.I`, every C,N. |
| `poisonValue84.{lam,blc}` | 84 -> 84 | Values on every `lambda^n.I` and `lambda^n.Omega`, every suffix. |
| `churchSpine154.{lam,blc}` | 154 -> 154 | Both outputs on every `lambda f x.f^n x`, every C,N. |
| `churchValue123.{lam,blc}`, `churchValue121.{lam,blc}` | 123 -> 121 | Values on every `lambda f x.f^n x`, every suffix. |

The restricted witnesses were not presented to the standard battery as
candidate interpreters. Their precise infinite contracts are the proofs.
Auxiliary `spineBody104` and `spineValueBody87` are body readers, not
additional public interpreter candidates. Let optimization here means the
smallest rendering reported through three cuts; no global minimum of any
restricted family is claimed. The longest individual operation was the
154-bit term's normalization, 21.950 s, at two threads. The 123 -> 121
normalization took 8.198 s; its correctness is pinned by the single beta
contraction above, not by trusting an optimizer equivalence assertion.

The three proof files are:

- `GlobalBarriers.lean`: projections, overheads, full-projection ceilings,
  guard correctness and non-equivalence, minimum/conversion arithmetic.
- `TowerBarriers.lean`: complete tower/poison inductions and ceiling
  theorems.
- `SpineBarriers.lean`: complete Church-spine inductions, public adapters,
  the 121 -> 123 beta step, and ceiling theorems.

Each additionally pins its public terms' exact BLC wires to the exported
ASCII artifacts. All three pass Lean with `-j2`; `lean-check.log` records
the checks and axiom reports. The substantive family and guard theorems
use only `propext` and `Quot.sound`; the abstract conversion arithmetic
uses no axioms. No admitted proof or custom axiom was introduced. The
separated-class implication (RV), the interpretations of method scope, and
the already established 40/146 bounds are not newly formalized here.

Recheck from the repository's `lean/` directory:

```
LEAN_PATH="$PWD/.lake/build/lib/lean" lean -j2 ../tmp/round4/global/GlobalBarriers.lean
LEAN_PATH="$PWD/.lake/build/lib/lean" lean -j2 ../tmp/round4/global/TowerBarriers.lean
LEAN_PATH="$PWD/.lake/build/lib/lean" lean -j2 ../tmp/round4/global/SpineBarriers.lean
```

`export_tower_witnesses.py` and `export_spine_witnesses.py` export the fixed
hand-derived sources. `check_guard.py` exports and checks the guard.
`polish_restricted.py` runs only the prescribed let-structure normalization
of these fixed terms; logs and JSON records are beside them. There was no
source-layout sweep or term census. The symbolic checks close fixed
algebraic clauses; the inductions supply completeness over probe depth.
All work stayed in this lane, with no commits or tracked-source edits.
There was no external consult or independent human/model review in this hop.

## 8. Judgment and the remaining proof step

The most useful positive result is a sharper diagnosis of which tests are
too weak. Arbitrarily many lambdas, arbitrarily late code growth, a
divergent poison under arbitrarily many lambdas, and arbitrarily deep
generic application spines each admit constant-size specialized code.
The new ceilings are exact for the stated proof obligations and cost
constant proof schemas plus induction; increasing a depth parameter will
not move them.

For a global improvement, full remainder extraction is still capable in
principle of yielding 41 through 62, and full value extraction can in
principle reach 162. A useful next theorem would have to exploit **both
arbitrarily varying children of an application**, including their varying
binding structure and exact suffix. The Church-spine shortcut works
because every left child is the fixed variable 2 and its code merges with
the application tag into a unary skip word. A lower-bound proof must force
the additional control needed when that shortcut is unavailable.

That obligation still does not imply disjoint source modules: rem70 and
the shared-S examples prevent the familiar additive argument. The missing
step is a sound charge on original source connections/captures which counts
shared definitions once, includes their control wiring, and survives the
quotation-origin restrictions. I did not obtain that invariant, a
small-overhead semantic conversion, or a new global floor. The floor remains
**40**, and none of these results proves that an improved proof must have
exponential cost.
