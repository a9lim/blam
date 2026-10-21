# ( •̀_•́ ) Independent adversarial review of Theorem S

**Verdict: error in the proof.** The restriction to stream-linear readers does
not repair the claimed proof. There are beta-normal readers within Class S
that violate several of the revised case bounds. Three of the counterexamples
have **only affine binders**, so they satisfy even the strongest natural
interpretation of the restriction. The fourth duplicates only a directly
received stream bit and tail.

**I found no reader below 43 bits and no second 43-bit reader.** The examples
refute the proof's numerical sub-bounds and exhaustiveness claims, rather than
the numerical conclusion of Theorem S.

Locations below refer to `tmp/overnight/reader-proof/REPORT.md`, SHA-256
`7d71031ae5508665e9aca15d044e85d51452b1c28c0701bd2da8ee8eb0595a27`, the version
marked `[after review 2]`. I read the requested earlier Codex review, but did
not consult another model or read the other current reviewers' reports. No
reader bodies were enumerated; all terms below were constructed by hand.

| Witness | Bits | Class-S justification | Refuted assertion |
|---|---:|---|---|
| `B44` | 44 | every binder affine | shape (beta) >= 46; shape (alpha-prime) >= 51; shapes exclusive |
| `B46` | 46 | every binder affine | corrected shape (alpha) dual-operand subcase >= 58 |
| `B57` | 57 | every binder affine | shape (beta-prime) >= 67 |
| `B65` | 65 | nonlinear binders receive only the first bit and tail | shape (delta) >= 69 |

Throughout, `I = λa.a`, `F = λa b.b`, `K = λa b.a`, `P_n = 1^n0 ++ N`,
and the identities `P_m P_m X →* N` for every `m >= 0` and
`Z_R Z_R X →* R` are used. Costs are those of the specified frame
`[s, next, cont, intL, x]` without optimizing the source.

## 1. A 44-bit affine reader combines shapes (beta) and (alpha-prime)

**Locations:** lines 567–593, 643, 682–704, 706–724; consequently 866–868,
989–992, and 1016.

```text
B44 = s I (λu. s (λq. cont) (s s u)) next.
```

It has `(L,A,X) = (3,7,8)`, hence size `6 + 28 + 2 + 8 = 44`. It is
beta-normal; its three binders have multiplicities 1, 1, and 0. Thus there
is no source copying under any reduction order.

Write `V = λu. s (λq. cont) (s s u)`. The two laws follow uniformly:

```text
Z_R I →* K R,
B44[Z_R/s] →* K R V[Z_R/s] next →* R next.

P_n I →* F P_{n-1},
B44[P_n/s]
  →* V[P_n/s] next
  →  P_n (λq. cont) (P_n P_n next)
  →* cont P_{n-1} N.
```

For the symbolic stream `S = λh. h β τ`, the outer head reduction is

```text
S I V[S/s] next →* β τ V[S/s] next.
```

The **first selection node is a stream node**, exactly shape (beta).
In the variable output, `cont P_{n-1}` is the **second node of the input
copy inside `V`**, exactly the non-dispatch shortcut added as (alpha-prime).
An origin-tagged reduction confirms both the output provenance and absence
of source copying.

These mechanisms coexist. Line 643's “exactly one shape applies” is false.
Prioritizing either case does not rescue the count: the body is below both
claimed floors. In particular, `|V| = 29`, whereas line 724 asserts
`|V| >= 31`. The beta-case calculation charges a separately supplied tail
and a source `n_P`; here one inner cell supplies both the tail and `n_P`.
Conversely, the alpha-prime calculation assumes the arms are under an
ordinary source dispatch binder. Here `V` is at depth zero and its `s` at
depth one, contradicting the placement assumptions at 689–692.

The general case split must allow combinations of selection-node and
output-node provenance. Adding (alpha-prime) as a mutually exclusive row
does not do that.

## 2. The corrected >=58 subcase of (alpha) has a 46-bit affine inhabitant

**Locations:** lines 655–665, 843–855; the distinct-origin implication at
594–607 is also implicated.

Define

```text
T21 = s I (s s) next,
B46 = s (λb. b (λu t. t) cont) T21.
```

Direct counting gives

```text
T21: (L,A,X) = (1,4,1), |T21| = 21.
B46: (L,A,X) = (4,8,4), |B46| = 46.
```

Both are beta-normal and all binders are affine. The operand has exactly
the two values required by the disputed subcase:

```text
T21[Z_R/s]
  →* (K R) (Z_R Z_R) next
  →* R next,

T21[P_n/s]
  →* (F P_{n-1}) (P_n P_n) next
  →* (P_n P_n) next
  →* N.
```

Consequently the outer reader reduces to `T21[Z_R/s]` in the zero case and
to `cont P_{n-1} T21[P_n/s]` in the variable case. Its `n_P` is the outer
dispatch cell's own second node. Its zero output application lies inside
`T21`. It is therefore precisely the subcase at 658–665, now claimed to
require `|T| >= 33` and `|B| >= 58`.

The arithmetic for this actual inhabitant is

```text
12 + (2 + 21) + 6 + 5 = 46.
```

There are several concrete failures in the claimed inventory for `T`:

* Its selection uses a created first node, costing 10 rather than the
  asserted mandatory 12.
* It never binds the zero tail. The created selection argument already
  supplies `R`.
* Its `next` is at depth zero, costing 3 rather than at least 5.
* Most significantly, its final application node is `R next` in the zero
  reduction **and the consumed `Q next → N` node in the variable reduction**.
  The same source `next` leaf survives in one reduction and is the erased
  consumer argument in the other.

The tagged normalizer identifies both application roles with source path
`B.a`, and the shared leaf with `B.a.a`. No source node is copied in either
run.

Thus “no node is duplicated” does not imply the report's blanket
distinct-origin charging conclusion. It ensures injectivity of residual
origins for distinct nodes within one run. It does not establish disjointness
of roles across two runs, or prove that two named roles are different events
in the first place. This example realizes the overcharge in the very
subcase that was re-counted after review 2.

## 3. Shape (beta-prime) admits 57 bits and does not need a second bit test

**Locations:** lines 581–584 and 734–746.

```text
Z = λu r. r next,
X = λq t. s (λw. cont),
B57 = s (λb. b Z) X (s s s).
```

Here `(L,A,X) = (6,8,11)`, so `|B57| = 57`. Every binder is affine.
The symbolic head form is

```text
β Z τ X (S S S).
```

The second selection node is the dispatch cell's own second node, so this
is shape (beta-prime). There is only **one** cell opening on this symbolic
head path before selection, not the two charged at 742–744.

For zero,

```text
B57[Z_R/s] →* Z X[Z_R/s] (Z_R Z_R Z_R) →* R next.
```

For a variable stream, put `r = P_{n-1}`. It is always a cell, including
when `n=1`:

```text
B57[P_n/s]
  →* r X[P_n/s] (P_n P_n P_n)
  →* P_n (λw. cont) (P_n P_n P_n)
  →* cont r N.
```

`X` ignores both the bit and tail it receives. It handles the `n=1` input
`K N` by erasing both, so it does not need the second bit test claimed at
738–739. The output `n_P` uses another cell, combining (beta-prime) with
(alpha-prime). The shared external skip provides the zero arm's `R` and
the variable output's `N`.

This is a numerical counterexample to `|B| >= 67`, not just an objection
to its explanation.

## 4. Shape (delta) can retain another copy of the erased tail: 65 < 69

**Locations:** lines 585–588, 748–760, and the “extras” assertion at 859–864.

```text
B65 = s (λb r. s b (b (r next) (λq t. cont r))) (s s s).
```

It has `(L,A,X) = (4,10,15)`, hence 65 bits, and is beta-normal. Only `b`
and `r` are nonlinear. They receive the first cell's bit and tail directly;
every other source binder is affine. This meets the literal Class-S
restriction and never duplicates source nodes.

After the outer cell opens, let

```text
C = b (r next) (λq t. cont r).
```

The remaining body is `s b C (s s s)`. Symbolically, `S β →* β β τ`, so
the head form is `β β τ C (S S S)`: exactly shape (delta).

On zero, `b=K`, `r=R`, and `Z_R K →* K`. Therefore

```text
B65[Z_R/s] →* K C (Z_R Z_R Z_R) → C →* R next.
```

On a variable stream, `b=F`, `r=P_{n-1}`, and `P_n F →* r`. Then

```text
B65[P_n/s]
  →* r (λq t. cont r) (P_n P_n P_n)
  →* cont r N.
```

The tail erased or consumed by the **second** cell-bound dispatch is not
the separately retained `r` from the **first** opening. Thus both `z-R`
and `v-tail` use a bound leaf, contrary to the mandatory compounds at
750–752. The extra head-path opening lowers the cost of other roles,
contrary to 862–864. The complete reader is below the asserted 69-bit floor.

## 5. Class S needs one definition and explicit reduction quantifiers

**Locations:** lines 18–25, 78–79, 328–337, 594–607, and 893–896.

The literal restriction and the proposed “equivalently, no node of B is
ever duplicated” are not equivalent as written. For example, the report's
own 57-bit construction at line 807 is

```text
Bwhole = s (λb r t. b (r next) (cont r (t t t))) s.
```

It is beta-normal and satisfies both laws. Its nonlinear `t` receives the
whole initial stream from the final `s` operand. No source node is duplicated,
since substituting for that `s` has replaced it entirely by input material.
But this whole stream was not produced as a bit or tail by a cell step.
If the intended class includes whole streams, the literal definition must
say so; if it excludes them, the stated equivalence is false.

There is also a reduction-order ambiguity. Consider the valid beta-normal
64-bit reader

```text
Bord = s (λb r t. b (r next) (cont t (t t t))) (s F).
```

Normal-order reduction contracts `λt` on the unevaluated source expression
`s F` and copies its source application and source `F`. Alternatively,
normalize that operand first. It becomes the pure stream tail `R` or
`P_{n-1}`, and the remaining reductions copy no source node. Both behaviors
were checked with origin labels. The definition must specify whether it
requires existence of suitable reductions for zero and every `n`, a fixed
strategy, or the condition for every reduction. Those are different classes.

Under a precise, literal reading in which each permitted nonlinear
contraction receives an actual pure input bit/tail, the **no-source-copying
implication itself is defensible**. Use a first-copy argument: a source
binder cannot acquire additional occurrences without an earlier source-copy
event; input binders are affine; and a permitted nonlinear source
contraction has no source node in its argument. Merely having a
stream-origin root would not be a sufficient purity condition.

That implication does not prove the subsequent disjoint-role inventory,
as `B46` demonstrates. Moreover, no choice among these reasonable Class-S
definitions excludes `B44`, `B46`, or `B57`: all their binders are affine.

## 6. Other revised realization claims still need arguments

These are additional gaps, not further counterexamples to the 43-bit bound.

**Lemma 2.5(iv), 548–565.** The repaired `λh. r h` example and its 9-bit
cost for an immediately outer `r` are correct. The claimed source-syntax
alternative between that expression and a literal `λh. h F' P'` remains
incomplete. For example,

```text
λh. s (λq t. t h)
```

reduces to `P_{n-1}` on `s=P_n`. It is neither stated literal form: a fresh
tail binding occurs inside its body. It occurs in the valid, stream-linear,
beta-normal 65-bit reader

```text
s (λb r. b (r next)
            (cont (λh. s (λq t. t h)) (r r r))).
```

Its root is a source lambda and its eventual cell-body applications are
stream nodes. I found no violation of the proposed coarse `+6` surcharge,
but proving that surcharge for arbitrary source syntax needs more than
asserting this two-form classification. Replacing the term by a
beta-equivalent eta-expansion does not establish its source-node inventory.

**Functional operands, 822–826.** “Its value is one term” does not imply
that an operand replaces at most a 2-bit leaf in each arm. The beta-normal
stream-linear reader

```text
s (λb r f. b (r next) (f r)) (λr. cont r (r r r))
```

has 61 bits. Its operand supplies the entire variable-arm computation,
including `cont`, both output applications, and the N-source. The procedure
is passed affinely, and its nonlinear `r` receives a pure tail. It does not
violate the numerical gamma floor, but disproves the stated justification
for dismissing arbitrary functional operands. A quantitative bound on such
placements is still needed.

**N-source reduction, 481–512.** The proof's list at 482 still omits the
stream-derived `I` that T8 now explicitly allows. In addition, `c` in the
terminal-`K` count at 508–510 is undefined, and no bound on it in terms of
source size is supplied. No repeated contraction of a source lambda alone
does not bound the number of copied input lambdas. Under a precise
pure-bit/pure-tail discipline a separate input-copy accounting invariant
may repair this, but that invariant is not proved here. I found no
counterexample to the 10-bit N-source floor itself.

## What was checked fully

I read the complete revised report, the earlier Codex review and its fixed
check code, the actual `int165.lam`, the named-term toolkit, and the
repository beta-normalizer/battery interfaces. I found no new error in the
elementary T1–T7 arguments for the required free variables, symbolic-head
dichotomy, no lambda-free reader, suffix duplication, and ancestry of the
bare surviving `N`, with the report's qualified rebuilt-tail caveat. The
equal-index chain identity used above is valid by induction.

The four principal counterexamples have the all-length reductions given
above. Their normality, bit costs, and finite normal forms were also checked
mechanically. The script

```text
python3 tmp/overnight/verify/vreaderS_codex_checks.py
```

contains only fixed hand-selected readers. It compares both laws for zero
and `n = 1..16, 31, 64`, with every ambient name and suffix rigid. A tagged
de Bruijn reducer retains original source/stream origins, checks for source
copying, and agrees with the repository normalizer. Traces for zero and
`n=1,3,16` are recorded. This is executable evidence, not a Lean
formalization or a lower-bound certificate.

The literal 43-bit reader remains `(L,A,X)=(3,7,7)` and passes. The
displayed `41+2d` arithmetic for its specific arrangement is correct.
The report's 51-bit alpha-prime construction and the earlier 59-bit
dual-operand construction also pass, but they do not attain the minima
claimed for their unrestricted shapes.

Three new readers were spliced into the actual 165 source and checked
against the complete default interpreter battery, using a fresh frozen
copy of the release executable and two workers:

| Reader | Complete interpreter | Result |
|---|---:|---|
| `B44` | 166 bits | 667 ok, 1 skip, 0 failures |
| `B46` | 168 bits | 667 ok, 1 skip, 0 failures |
| `B57` | 179 bits | 667 ok, 1 skip, 0 failures |

Each battery took about two seconds. Artifacts beside this review are
`vreaderS_codex_checks.py`, `vreaderS_codex_checks.json`, and
`vreaderS_codex_splice/{hybrid44,alpha46,beta_prime57}.lam`.

The strict 43-bit bound and its uniqueness clause remain unproved by this
report. Any repair must account jointly for selection provenance, output
provenance, retained tails from other openings, and cross-reduction reuse
of source nodes. Restricting copying does not remove these examples.
