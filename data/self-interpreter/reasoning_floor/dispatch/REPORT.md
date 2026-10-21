# Lane "dispatch": decoding the tag tree differently — report

(・_・) **No sub-165 interpreter.** The lane's conclusion is negative and, I
think, informative: every way of moving *where* or *how* a tag bit is decoded
either re-derives the 165's own structure or runs into one of three walls,
which are stated as theorems with proofs below. Three complete interpreters
were built along the way (180 → 176 after letopt, 191, 200); none approaches
165.

Everything written by this lane is in
`/Users/a9lim/Work/blam/tmp/overnight/dispatch/`: `lab.py` (parser/normalizer
harness), `algebra_scan.py` (stream-algebra table), `variants1.py`,
`variants2.py` (size calibrations), and the three `.lam` files. No repository
file was touched by this lane (the modified `docs/` and `lean/` files in
`git status` belong to other lanes); no enumeration was run; every computation
was a battery (2 threads, ~2.5 s), a `polish.py` letopt pass (~10 s), or a
handful of symbolic normalizations.

Notation: `K = λxy.x` is bit 0, `F = λxy.y` bit 1, `[b]t = cons b t`, `P` the
parser (`intL`), `C` the rigid root continuation, `N`/`R` rigid rests,
`ABSV[v] = λe a. v (cell a e)`, `LIFT[f,g] = λe. f e (g e)`. Sizes use
`λ = 2, application = 2, variable = 2 + (0-based index)`.

## 1. Complete interpreters built

| file | bits | battery | letopt (≤3 cuts) | idea |
|---|---:|---|---:|---|
| `dup_replay_180.lam` | 180 | `ok=667 skip=1 fail=0` | **176** | No `next` let. The zero arm keeps both copies of the tag-less stream `r`: `r (λv. P k)` drops the second tag bit and parses the body; the continuation `k = λexp. u bit0 ABS APP` re-reads that bit from the other copy `u`, using `bit0 = K` as the projection. Same idea class as the nextfuse lane's tag replay (188/189), rendered 8 bits smaller before letopt, 12 after. |
| `fake_var_second_parse.lam` | 191 | `ok=667 skip=1 fail=0` | 191 | Every constructor parses twice; ABS feeds the second parse the constant stream `λu v. cont ABSV rest`, which the reader returns unchanged (`R (K (K X)) = X`). Independently derived, but it is the fresh lane's recorded 191 in idea and size — not new. |
| `next_knot.lam` | 200 | `ok=667 skip=1 fail=0` | 200 | The knot produces NEXT (continuation, then second tag bit) and the parser is let-bound inside it with recursive calls `x x c`; the root uses "every closed program starts with 0" to enter NEXT directly (`E C s = s (λb r. r (NEXT_C))`). Shows the root shortcut costs ~21 bits and that the knot output must be the parser, not NEXT. |

The 180 is the smallest known interpreter without a `next` binding. Its loss
against the 165 is entirely depth: NEXT's five references (`cont` ×3, `intL`
×2, counting the ones inside ABS/APP) sit four binders deeper when NEXT is
inlined into the zero arm, +16, against the 10 bits the `next` let and its use
cost; the explicit tag re-read `u bit0` adds the rest.

## 2. Exact identities (all β, checked with rigid variables)

Stream algebra on the four shapes (`r` = the stream after the two tag bits,
`N` = the rest after a unary code):

| term | `00 r` (ABS) | `01 r` (APP) | `10 N` | `110 N` |
|---|---|---|---|---|
| `s s` | `K [0]r` | `K [1]r` | `K N` | `K N` |
| `s s X` (any X) | `[0]r` | `[1]r` | `N` | `N` |
| `s (s s)` | `K r` | `r r` | `N [0]N` | `N [1][0]N` |
| `s (s s s)` | `K [0]r` | `I` | `N F [0]N` | `N F [1][0]N` |
| `s s s s` | `K r` | `r F r` | `N [1][0]N` | `N [1][1][0]N` |
| `s (s s) s` | `r` | `r r [0][1]r` | `N [0]N [1][0]N` | … |

Proofs are two or three Scott/Boolean steps each (e.g. `s (s s) = (s s) b r =
K q b r = q r` where `q = [b2]r`; then `q r = b2 b2 r r`). Two consequences
used below: (a) in the zero case `s s X →* q` *for every X*, and in the
variable case `s s X →* N` with X erased; (b) `s (s s s)` is a three-way
discriminator (`K q` / `I` / `N`-headed) — but its variable row applies the
rigid `N`, which is why no reader can use it.

Reader on non-streams, with `R = λs. s (λb. b (λu r. r next) cont) (s s s)`:
`R K = λb. b (λu r. r next) cont` (the handler itself), `R I = λr. r next`,
`R F = F`. (The first two were implicit in the fresh lane's list; recorded
here because they are the only cheap ways the *parser* can yield NEXT-shaped
objects, and they do not help: `Z = λu. intL cont I` is circular — it unfolds
to itself through `Z` — and `R K` only reproduces the handler.)

## 3. Impossibility / forcing arguments

All handwritten (not Lean, not computer-checked beyond the spot checks named).
Hypotheses are stated with each.

### 3.1 The zero arm receives the tag-less stream twice (forcing lemma)

**Hypotheses.** The reader is `s H S` with the variable arm a bare continuation
(`H F r S →* cont r S`), and `S` is any application-only term over `s` that is
β-equal to `N` on every variable stream `1ⁿ0 ++ N`.

**Claim.** On a constructor stream `s = [0]q`, `S →* q`; hence the zero arm is
always `Z q q` and must erase one copy or make both useful.

**Proof.** By the table, the only application-only operands over `s` that
evaluate to `N` on all unary inputs are of the form `s s X` (and iterates such
as `(s s)(s s)`): any further argument after `s s X` applies the rigid `N`, and
`s (⋯)`-headed terms other than `s s …` apply `N` as well (rows 3–6). On
`[0]q`, `s s = K q` and `K q X = q`. ∎

The 165 pays 3 bits for the erasure (`λu λr. r next` = 14 against `λr. r next`
= 11, which fails all 667 programs). The lemma says this is not a defect of the
165's skip but of *every* whole-stream skip: the first-zero computation is
right for the variable arm exactly because it stops at the tag's own zero.

### 3.2 Trailing reader arguments reach the rigid continuation

**Hypotheses.** The 165's NEXT/ABS/APP protocol: internal continuations are
`λexp. b₂ ABS APP` and `λexp₂. cont LIFT`, with `ABS = cont ABSV` (so a
constructor's return forwards every argument after `rest` to its parent's
continuation); the variable arm is a bare continuation selected by the tag bit.

**Claim.** No reader of the form `s H S T₁ … Tₖ` with `k ≥ 1` is correct,
whatever `H`, `S`, `Tᵢ` are (in particular no choice of zero arm repairs the
158-bit `s (λb. b F cont) (s s s) next`).

**Proof.** The variable arm yields `cont r S T⃗`. Take the program `λ.1`: the
root is a constructor, its body a variable with continuation
`k = λexp. K ABS APP`, so the body returns `k r N T⃗ →* ABS N T⃗ = C ABSV N T⃗`,
three or more arguments at the rigid `C`. β-reduction cannot remove arguments
from a rigid head, and the contract requires exactly two. ∎

Corollary: the 178-bit repair (`λv r u. C v r` in the variable arm) is the
cheapest possible *shape* of repair — the extra argument must be consumed by a
λ in the variable arm, since nothing downstream can eat it.

### 3.3 The variable arm never meets `C`, and uniformity is still forced

**Observation.** Every closed program starts with `0`, so at the root only the
zero arm fires; the variable arm's `cont` is always an *internal* continuation
(`λexp. b₂ ABS APP` or `λexp₂. cont LIFT`). Hence the variable arm's calling
convention is, a priori, free.

**Claim.** Under the 165's NEXT/ABS/APP protocol the freedom is empty: the
variable arm must pass exactly `(value, rest)` with `rest =β` the real rest.

**Proof.** The same internal continuation `k = λexp. b₂ ABS APP` receives a
variable child's call and a constructor child's return (`k v rest` via the
parser law), and forwards its second argument to its parent, which may be `C`
(program `λ.1` again gives `C ABSV S`, so `S =β N`). Any extra argument is
excluded by 3.2; a thunked rest `K N` reaches `C` unforced, and a pre-skip
rest `s` (`s s s = N`) reaches `C` as `s`. So the only way to exploit the
observation is a continuation that *discriminates* its callers, which costs a
Scott wrapper or the 37-bit discriminator of the values lane. ∎

This is the reason the handler-bound laws (`H K R R = R next`, `H F R T = cont
R T`) are not an assumption but a consequence of the root contract plus the
uniformity of internal continuations; the open door in the reader bound is only
"a different NEXT", not "a different variable arm".

### 3.4 One reader for both tag bits, with the state in the continuation, is impossible

This is the lane's main theorem. The 165 uses two readers: `s H S` for the
first bit and `r next` for the second. The natural fusion is one reader whose
zero arm re-enters *itself* with a transformed continuation, the automaton
state (first bit read / second bit read) being carried by the continuation.

**Hypotheses.** `P` and `T` closed terms such that for all terms `k`:
1. (variable law) `P k (1ⁿ0 ++ R) =β k v R` for some value `v` (any
   convention) and `n ≥ 1`;
2. (re-entry) `P k ([0] t) =β P (T k) t`;
3. (parametric correctness) `P k (⌜M⌝ ++ R) =β k V_M R` for every closed `M`,
   with `V_M =β λz.M`.

**Claim.** No such `P`, `T` exist.

**Proof.** Fix `k = C` and `R` rigid. For closed `M`, hypotheses 2 and 3 give
`P C (00⌜M⌝R) = P (T(TC)) (⌜M⌝R) = T(TC) V_M R`, which by 3 must be
`C V_{λM} R` with `V_{λM} =β λz λx. M` (M closed, so `λ.M = λx.M`). For closed
`M, N`, the APP program gives `P C (01⌜M⌝⌜N⌝R) = P (TC) ([1] t) = TC t N'`
with `t = ⌜M⌝⌜N⌝R` and `N'` the variable law's rest for `[1]t`, which must
equal `C V_{MN} R`.

Write `T k =β λt λj. G[k,t,j]` (the two laws apply `T k` to two arguments and
need a `C`-headed result without leading λ, so this hnf shape is forced). The
head of `G[k,t,j]` is `t`, `j`, or `k` — the only free variables; a leading
λ would survive into the result.

*Head `j`.* The ABS law gives `T(TC) V R = R G⃗`, `R`-headed. ✗

*Head `t`* (the natural reader shape `λt j. t ⋯`). Then
`T(TC) V R = V A₁ … A_m` for fixed `m` (the `Aᵢ` may mention `V`, `R`,
`TC`). Take `M_n = λⁿ.1`, so `V_{M_n} =β λ^{n+1}.1`, the projection onto its
last argument. For `n ≥ m+1`, `V_{M_n} A₁ … A_m =β λ^{n+1-m}.1`, a
λ-abstraction, but the law requires the `C`-headed `C V_{λM_n} R`. ✗

*Head `k`.* By the APP law's shape, `G = k A₁ A₂` exactly. Then
`T(TC) V R = TC A₁' A₂' = C A₁[C,A₁',A₂'] A₂[C,A₁',A₂']` with
`Aᵢ' = Aᵢ[TC,V,R]`, so `A₁[C,A₁',A₂'] =β λx.V` and `A₂[C,A₁',A₂'] =β R`,
while from APP, `A₁[C,t,N'] =β V_{MN}` and `A₂[C,t,N'] =β R` for genuine
streams `t`. So `A₁` is a value extractor for application code and must read
`t`'s bits; its hnf is `λ^q. h B⃗` with `h ∈ {t, j, k, bound}`, and since
`V_{MN} =β λz. M N` is a λ-term that is neither `C`-headed nor
`z`-headed for `M N = (λ.1)(λ.1)`, we have `q = 1` and `h ∈ {t, j}`.
 - `h = t`: `A₁[TC,V,R] = λz. V B⃗` with `|B⃗| = p`; for `V = λ^{n+1}.1` this is
   `λ^{n+2-p}.1`, and then `A₁[C,A₁',A₂'] = λz. A₁' B⃗' = λ^{n+3-2p}.1`, which
   must be `λx.V = λ^{n+2}.1`, forcing `p = ½`. ✗
 - `h = j`: `A₁[TC,V,R] = λz. R B⃗`, so `A₁[C,A₁',A₂'] = λz. A₂' B⃗'` with
   `A₂' = A₂[TC,V,R]`; `A₂` must compute the rest from the stream, so its head
   is `t` (→ `V ⋯`, a λ for large-arity `V`, not `R`), `j` (→ `R ⋯`, giving
   `λz. R ⋯ B⃗'`, not `λx.V`), or `C` (→ `C ⋯`, not `λx.V`). ✗
Hence no `T`. ∎

What the theorem says: the second tag bit needs a *second* decoding state,
and plain continuations cannot carry it. The state must live in a separate
object — the 165's `next` (a distinct λ-abstraction applied by the stream), the
166's `λb. b (P KA) (P KP)`, or an explicit mode flag (203–219). Each of these
pays at least one λ and one application beyond the first reader, and the
165's `λu λr. r next` + `λbit1. P (λexp. bit1 · ·)` is the cheapest
arrangement found; combined with 3.1 and the recorded handler bound this is why
the two-reader structure is locally rigid.

### 3.5 Why the remaining "share a decoder" questions of the brief are closed

- *Variable case and APP case sharing a step.* Both start with `…1`, but the
  variable's `1` terminates with a `0` after which the stream must not be
  touched (it is the rigid rest), while the APP's `1` is followed by two codes
  that must be parsed. A shared step would have to apply the tail in the APP
  case and not apply it in the variable case; by 3.3 the only discriminating
  information is the first bit, which the handler already dispatches on.
- *The skip doing NEXT's job.* By 3.1 the skip is `s s X` with `X` erased on
  every stream; it can carry no NEXT work (the 166–169 variants `s s next`,
  `s s cont`, … change only off-stream behaviour).
- *The environment walk and the tag dispatch sharing a decoder.* Both already
  use the bare Boolean as the decoder. The cell `λzx zy. zx arg (zy args)` puts
  the tail inside its `F` branch (the walk must *apply* the tail to the outer
  environment), the handler `λb. b Z cont` puts the tail after the dispatch
  (the variable arm must *not* apply the tail). A handler of cell shape returns
  `cont' b' r''` on a variable, which needs a 27-bit stream rebuild; a cell of
  handler shape is the 25-bit K-repair cell (166). Sharing one selector
  `λx y b. b x y` between them never pays: a call `W X Y` costs ≥ 8 bits, the
  same as the inline `λb. b X Y`, plus the let.
- *Reading the second bit by a stream application that also supplies the
  parse.* `r next` already does both. Any alternative must either bind `b₂`
  (`λbit1 …`, the 165), use `b₂` as a selector of parser partials (166), use
  it as the continuation (`r intL`, the recorded 164 that loses one component),
  or recover it later from the duplicate copy (180/176 above, the depth tax).

## 4. Honest read

Within the 165's protocol (closures applied to environments, raw unary codes
as variable values, two-argument continuations, the real rest), I now believe
the control structure is forced module by module *and* at every two-module
seam I could name: the whole-stream skip forces the duplicate (3.1); trailing
arguments and alternative variable-arm conventions die at the rigid root
continuation (3.2, 3.3); carrying the second-bit state in the continuation is
impossible (3.4); and the depth tax makes every "inline NEXT and recover the
bit later" rendering lose by ≥ 11 bits (the 176 is the best of that family).

Where a sub-165 could still hide, if anywhere:

1. **Not in dispatch.** The brief's four questions for this lane have negative
   answers with proofs or exact costs. I would not spend another lane here.
2. **A different value/continuation protocol at the root.** Every protocol I
   tried was fine internally and failed only because `C` is rigid and binary.
   A protocol that is *cheaper internally* and whose root adapter is *free*
   (absorbed into the knot or into the always-zero first bit) would beat the
   analysis above. The 200 shows the obvious root shortcut costs ~21 bits; the
   question is whether a knot can hand the root a differently-typed entry at
   no cost. That is the knot lane's seam (`R Z →* next next`), approached from
   the protocol side.
3. **The index tax (29 bits).** `cont` costs 8 bits of depth, `intL` 5,
   `next` 4. These are pure layout; letopt has exhausted let structures of the
   165's own core, but a core with fewer *references* (one `cont`, one `intL`)
   would change what letopt can do. I found no such core — every attempt to
   share the `cont` application between ABS and APP costs a λ.
4. **A proof.** 3.4 is the kind of statement that could go to Lean: it is a
   finite case analysis over hnf heads with the projection programs
   `λⁿ.1` as witnesses. Together with the handler bound, 3.1–3.3 and the
   nextfuse obstructions, the conditional theorem "165 is minimal among
   interpreters with the 165's NEXT/ABS/APP protocol and a stream-headed
   reader" looks within reach as a handwritten result; the unconditional
   question remains as open as the brief says.
