# types lane — intersection-type role supports (Claude opus, wave 5)

Lane directory `tmp/round4/types/`: `NOTES.md` (step log), `supp.py` (role supports),
`narrow.py` / `narrow2.py` (demand-driven derivation search, untabled / tabled),
`testnarrow.py`, `instr.py`, `status.py`, `shape.py`, `runlen.py` (instrumentation).
No tracked file modified, nothing committed. No compute run exceeded 100,000 states, 2 min,
1 GB or one thread.

## 0. Summary

**Update (follow-up, §5): every β-normal reader has `w ≥ 46`** (computer-checked, laws Z,
U₁, U₂, no minimality hypothesis, sharp at the 162). The band 44–45 at depth 1 fell to four
disjoint chunks by root arity. The open problem is now readers with redexes only.

- The type system, the role judgements and the support/union accounting are set up exactly
  (§2). For one role, the support of an intersection-type derivation is exactly the hole
  lane's dispensability core, so types add nothing to a single law. What they do add is the
  PAIR of types at each shared node and syntax-directedness on β-normal terms.
- **No β-normal reader has `w ≤ 43`, and none with `j` at depth ≥ 2 has `w ≤ 45`**
  (computer-checked, laws Z, U₁, U₂, no minimality hypothesis; §3). Also: inside
  `λs. s A B j` (β-normal) the 162's core is the only core with `w ≤ 46`, and inside
  `λs. s A (s B C D)` the 164's core is the only one with `w ≤ 48`.
- Negative finding: the hoped-for finite "search over types" does not exist. The input stream
  is itself a cut: every occurrence of `s` takes a stream type `[M_K → M_r → α] → α` whose
  continuation `α` and K-selection types are free, so even for β-normal readers the
  environment type of `s` is as rich as the reader. The complete type-directed search is
  needed narrowing over canonical derivations; it grows about 1.45× per bit, and tabling on
  exact residual problems saves only 20–30 %. The β-normal band `w ∈ {44, 45}` with `j` at
  depth 1 (≈1.4–3 × 10⁵ states) and every reader with redexes (over the cap already at
  `w ≤ 32`) stay out of reach.
- Honest read (§4): the method cannot close `w ≥ 46` as it stands. Its useful content is a
  sharing calculus. That calculus does three things: it bounds a shared let's whole gain by
  its argument's shared skeleton; it separates uniform intersections (cheap: the 162's `I`)
  from non-uniform ones (each needs its own separator); and it traces every role separation
  to an eraser. The next step needs a lossy, sound abstraction of residual problems,
  not more search.

## 1. Interpreters built

None. This was a theory and lower-bound lane, and no reader with `w ≤ 45` turned up.

## 2. The system, exact identities and lemmas

**System** (Gardner 1994, de Carvalho 2007; non-idempotent intersection types).
`τ ::= atom | M → τ`, `M` is a finite multiset. The rules are: `x:[τ] ⊢ x:τ`; λ-introduction
with `x : M` (where `M = []` if `x` is unused); application `P : [τ₁..τ_k] → τ`, `Q : τ_i` for
each `i`, environments summed (`k = 0` leaves `Q` untyped). Standard facts used: subject
reduction and subject expansion for full β, and the characterisation that a term is
typable with no `[]` in a positive position of the judgement iff it is weakly normalising.

**Role judgements** (principal derivations of the required normal forms, fresh atoms):

- zero: `r:[[a]→o], j:[a] ⊢ r j : o`, so `R : [σ₁..σ_m] → o` with `j:[a]` and `c:[]`;
- unary `n ≥ 1`: `c:[[θ_{n−1}]→[ν]→o], N:[ν,ν'] ⊢ c U_{n−1} N : o` (`θ` a full type of
  `U_{n−1}(N)`), with `j:[]`.

A derivation with these environments forces the normal form: the environment is consumed
exactly, `o` and `a` are fresh, and principal typings of these η-redex-free normal forms
admit no other normal form.

**L1 (support = typed positions; handwritten from the standard facts).** Suppose `p` is
untyped in some derivation of law ℓ. Then `p` is ℓ-dispensable: `R[Ω/p]` keeps the
derivation, so it normalises, and BT-monotonicity gives `nf ⊑ target`, hence `=` target.
Conversely, a dispensable `p` is left untyped by the derivation of `R[Ω/p]`. So the core of
ℓ is the intersection of all derivation supports, and with joint dispensability (hole lane,
reviewed) a single derivation attains it. Supports are ancestor-closed.

**L2 (handwritten, immediate).** `c` is never typed in the zero derivation and `j` never in
a unary one. So the shared skeleton `T = supp_Z ∩ supp_U` contains no `c` and no `j`.
Every maximal role-only branch hangs at an argument position of a `T`-node whose
function part has `[] →` type in the other role. The `[]` comes from an *eraser*: the
second slot of a zero `K`, the first slot of a unary `F`, the second slot of `U₀`'s
terminal `K`, or a reader λ whose binder occurrences are all untyped in that role (traced
back to one of the others or to a syntactically dead binder).

**Supports of the known readers** (computer-checked, `supp.py`: position in support iff
replacing it by a fresh rigid variable breaks the law; laws Z, 1, 2, 3; bits are shared /
Z-only / U-only / filler, plus `4·depth(j)`):

| reader | shared T | Z-only | U-only | fillers | 4d | w |
|---|---|---|---|---|---|---|
| 162 `λs. s I (λu. s (λq.c) (s s u)) j` | 14 | 0 (`j`) | 26 | 2 (`u`) | 4 | 46 |
| 164 `λs. s (λb. b F c) (s I (s s) j)` | 28 | 6 (`F`) | 10 (`c`, `s s`) | 0 | 4 | 48 |
| 165 `(λn s. s (λb. b (λu r. r n) c) (s s s)) j` | 28 | 14 | 5 (`c`) | 2 (3rd `s`) | 0 | 49 |
| R84 | 39 | 19 | 22 | 0 | 4 | 84 |
| R75 | 36 | 20 | 15 | 0 | 4 | 75 |

In all five, `supp₁ = supp₂ = supp₃`: the reader part of the unary derivation does not depend
on `n` (the skip `U_m U_m →⁴ U_{m−1} U_{m−1}` types input cells only), and only the types
grow with `n`. Every role-only branch root is an argument of a cell bit (`b X Y`), of the
stream's own bit through `s I`, or of `U₀`'s terminal `K` (the 162's `u`, the 165's third
`s`, and `j` in the unary runs of the 162 and 164).

**Type pairs at shared nodes (handwritten from the canonical derivations).** The 162's
dispatcher `I` gets these two types:

- zero: `I : [τ_K] → τ_K`, with `τ_K = [[a]→o] → [] → [a] → o` (`K` takes `r`, erases `V`,
  returns `r`, then `j : a`);
- `n = 1`: `I : [τ_F] → τ_F`, with `τ_F = [] → [[]→o] → [] → o` (`F` erases the tail `U₀`
  and takes `V : [] → o`, where `j` is untyped).

So `I : ([τ_K]→τ_K) ∧ ([τ_F]→τ_F)` is one polymorphic identity at two instances. Call such
a pair *uniform*: both types are instances of one parametric type. It costs 4 bits. In R84
the shared let argument `X = s (λb t. b (λa k. k a) (t t)) j` has the pair
`([[a]→o] → o) ∧ ν`: a λ on zero and `N` on unary. That pair is non-uniform, and `X`
contains its own separator (the bit application `b _ _`), which is a second dispatch.

**L3 (bit-variable dichotomy, β-normal readers; handwritten, subformula property).** Let
`b` be bound by the first λ of the first argument of an `s`-occurrence typed in both roles.
In a β-normal reader every type in a derivation is a subformula of the root and
environment types. So every zero-typed occurrence of `b` has a `K`-type `[β]→[]→β` and
every unary-typed one an `F`-type `[]→[β']→β'`. Hence in each shared application
`b X Y W⃗`, `X` is unary-untyped and `Y` is zero-untyped: the first argument is Z-only or a
filler, the second U-only or a filler. Tail-opened bits are unary-only: `t (λb. …)` is
zero-untypable, since `t : [a]→o` would force a λ to have the atom type `a`. Corollary
(j-spine): `j : a` is never applied, and its parent spine is zero-typed, so not `c`-headed.
At depth 1 that spine's head is `s`.

**L4 (shared-let split identity; handwritten).** Let `ℓ = (λx. B) A` have `x : M_Z` in
zero and `x : M_U` in unary, both nonempty, and suppose no occurrence of `x` in `B` is
typed in both roles. Replace `ℓ` by `(λx_Z x_U. B') A_Z A_U`, where `A_Z` and `A_U` are `A`
with the other role's branches turned into fillers and the occurrences are renamed by role.
This keeps every role derivation, hence every law, and the weight rises by exactly

    |T_A| + 4 + F_B + #occ(x_Z) + (filler difference),

where `T_A = supp_Z(A) ∩ supp_U(A)` (c-free, j-free) and `F_B` counts `B`'s outward leaves.
So a shared let's entire gain over role-separated lets is its argument's shared skeleton
plus O(index) terms. Example: in R84, `T_A = s (λb t. b _ _) _` is 17 bits. An `x` occurrence
typed in both roles is itself a node of `T`, and its pair is again an intersection that
`A` must inhabit. The let is a cut, so its interface types are unconstrained: they carry
exactly what `A` communicates in each role. In the 165, `λn` has `M_U = []` and is a pure
zero router.

**L5 (divergence certificate used for cut-offs; handwritten, implemented in
`narrow*.py`).** Suppose the normal-order head machine passes from `(H, base ++ P₁)` to
`(H, base ++ Y ++ P₁)` (stack bottom to top, same read-back head `H`) without popping below
`base`. Then `(H P₁) →* (H P₁) Y`, so there is no head normal form and the law fails for
every completion: needed-position runs are completion-independent.

## 3. Lower bounds (computer-checked unless marked)

**The search.** It is the computational form of building the canonical derivations of all
laws at once: needed narrowing.

- A partial term has holes. Each law runs by a Krivine normal-order machine against its
  target normal form, and a hole is refined only when a run needs it (as `λ`, `@`, a bound
  variable, `c`, or `j` at most once). Holes never refined are untyped in every law (L1)
  and charged 2 bits as fillers.
- `LB = refined + 2·open + (j unplaced: 4·max(dmin, jlo) − 2) + (c unplaced: dmin)`.
- `--betanormal` forbids a λ at an application head.
- Completeness argument (`narrow.py` docstring, REPORT-level form):
  - Follow any qualifying `R*` by refining each needed hole as `R*` has it. Runs coincide
    with `R*`'s up to the first needed hole, so no prefix fails.
  - `LB ≤ w(R*)`: each open subtree costs ≥ 2. `j`'s subtree costs ≥ 4·depth and `c`'s
    ≥ 2 + depth, and the two increments are additive even when they share a subtree.
  - A certified cut-off (L5) cannot lie on `R*`'s path. Uncertified cut-offs are listed
    and refuted below.
  - Tabling (`narrow2.py`): a memo hit means a state with the same canonical residual
    problem and at least as much remaining budget was fully explored without solution.
    Completions correspond one to one and costs shift by the offset difference.
- Termination: each `λ`/`@` raises `LB` by ≥ 2.
- Sanity checks: the machine agrees with `rd.py` on 162/164/165/R84/R75/47 for Z, 1, 2, 3.
  `--prefix '\s. s _ _ j'` at 46 finds the 162; `'\s. s _ (s _ _ _)'` at 48 finds the 164;
  both tabled and untabled.

**B1. No β-normal term `R` (free variables among `c`, `j`, one `j`) with `w(R) ≤ 43`
satisfies `R Z(r) = r j`, `R U₁ = c U₀ N` and `R U₂ = c U₁ N`.** No minimality hypothesis.
β-normal readers are λ-rooted, so `depth(j) ≥ 1`. The result is made of two runs:

- D1-43, `j` at depth 1: `narrow2.py 43 --betanormal --jdepth 1` gives 96,933 states,
  0 solutions, 33 s, 574 MB. It has three cut-offs, all `λs. s (λx₁x₂x₃. x₃ x₃) W _`, whose
  zero run is `W W _`. All three are refuted:
  - `W₁ = λx. x (λy. x y)`, handwritten: `W₁ M_k →_h M_k M_{k+1} →_h … →_h W₁ M_{k+1}` with
    `M₀ = W₁` and `M_{k+1} = λy. M_k y`, an infinite head reduction.
  - `W₂ = λx. x (x (λy. x))`: `blam adjudicate` gives DIVERGE, "no whnf on the term's own
    head chain".
  - `W₃ = λx₁x₂. x₁ x₁ H`, handwritten: `W₃ W₃ →_h λx₂. W₃ W₃ H₁`, so `W₃ W₃ A` has no hnf
    for every `A` and every filling of `H`.
- D2, `j` at depth ≥ 2: `narrow.py 45 --betanormal --laws 1,2,0 --jdepth 2+` gives 99,562
  states, 0 solutions, 0 cut-offs, 13 s.

**B2. A β-normal term with `j` at depth ≥ 2 satisfying Z, U₁, U₂ has `w ≥ 46`** (that is
D2). This is the record's depth-≥2 closure for the β-normal case, now without its minimality
assumption.

**B3. The finite family of unary laws.** With `{Z, U₁}` alone (Lean's `Reader` laws) or
`{Z, U₂}` alone, no β-normal solution has `w ≤ 40` (39,674 and 41,906 states). `U₂` adds
almost no pruning, and `U₁` cannot be dropped (closure barrier's `s Δ I (s s) j`). Runs are
tiny: the longest non-divergent law run in the `w ≤ 40` search is 24 β-steps.

**B4. Pinned uniqueness** (β-normal, laws Z, 1, 2). Every family member with `w ≤ 46` or
`≤ 48`, respectively, has the named core:

- `λs. s A B j`, `w ≤ 46`: the 162's `λs. s I (λu. s (λq.c) (s s _)) j` (44,010 states;
  one `W₃`-type cut-off);
- `λs. s A (s B C D)`, `w ≤ 48`: the 164's core (13,230 states).

**What did not fit the cap** (measured growth, not run):

- β-normal, `j` at depth 1, `w = 44`: about 1.4 × 10⁵ states; `w = 45`: about 2–3 × 10⁵;
- the pinned 162 family `λs. Y j`, β-normal: about 1.1 × 10⁵ at 45 (51,093 at 43);
- one shared let `λs. (λx. _) _`, otherwise β-normal: about 1.8 × 10⁵ at 45 (27,761 at 40);
- general readers with redexes: over 10⁵ states already at `w ≤ 32`.

**Search-size facts** (`w ≤ 38`):

- zero law alone: 32,549 states, 338 zero cores;
- unary alone: 50,095 states, 36 unary cores;
- jointly: 28,320 states.

So the two laws prune each other only weakly. About half the states have a stream-headed
first operand (an open family in class-bound). Tabling on exact residual problems saves
19 % at 36 and 26–31 % at 40–43: the residual problems are genuinely distinct.

## 4. Honest read: can the method close `w ≥ 46`?

**Not as it stands.** There are three reasons, in order of weight.

1. **For one role, types are dispensability (L1).** The support of the canonical derivation is
   the hole lane's core. Everything the hole lane proved about a single law transfers, and
   types add nothing there.
2. **There is no finite type space, even for β-normal readers.** Their derivations are
   syntax-directed from the environment types of `s`, `c`, `j`, as hoped. But `s`'s type is
   not fixed by the laws. `R · input` is a cut, and each occurrence of `s` takes
   `[M_K → M_r → α] → α` with `α` (the continuation) and the `K`/`F` selection types free.
   Those parameters are determined by the rest of the reader, so "search over types" is
   search over canonical derivations, which is needed narrowing over terms.
   - It is complete, and it closes β-normal readers through 43 (all depths) and through 45
     at depth ≥ 2.
   - Its growth is about 1.45× per bit. Tabling on exact residual problems saves only
     20–30 %: the residuals really are distinct.
   - So the β-normal depth-1 band `{44, 45}` needs 2–3× the cap. Readers with redexes, where
     every let adds a second free interface, overflow at `w ≤ 32`.
3. **The sharing gap is semantic, and exact types only re-express it.** L4 shows that a
   shared let gains exactly the shared skeleton `T_A` of its argument (c-free, j-free) plus
   index terms. So bounding sharing means bounding `|T_A|`, or more generally `|T|`, for
   readers ≤ 45. Types classify shared nodes as *uniform* (the same derivation shape in both
   roles, like the 162's `I`, cheap) or *separating* (the subtree contains a role-only
   branch, hence by L2 an eraser, and by L3 a bit application `b X Y` with role-only
   arguments, or the stream's own bit through `s I`). But nothing in the type discipline
   prices how many separators a small reader needs, or how much uniform plumbing (`s s`,
   `s s s`, tails) can be reused across them. In R84 and R75 the extra sharing is paid for
   by a second separator inside the shared value. That is a hint, not a theorem.

**What would get there (proposals, marked).**

- *(Synthesis.)* The decomposition `w = |T| + Σ Z-only + Σ U-only + fillers + 4d` has
  independent role-only parts given `T` and the slot labels: zero never touches U-slots and
  unary never touches Z-slots. If the minimum role-only fill of each separator slot could
  be priced in closed form from its interface (L3 fixes those interfaces for bit
  applications: `K`-type versus `F`-type arguments), the search would run over shared
  skeletons `T` only. Those are c-free and j-free and 14–39 bits in the known readers.
  The cost would add rather than multiply. My measurements argue against getting this by
  search alone: the joint search (28,320 at 38) is already smaller than either single-law
  search (32,549 zero, 50,095 unary). The blow-up is the shared prefix itself, not a
  zero × unary product, so pricing has to come from argument.
- *(Speculation.)* A "uniform-interface" lemma: in a minimum reader every shared node
  outside the first separator is uniform. If true, post-dispatch sharing is plain stream
  plumbing, whose variants are few and priceable. The 164 (second `s I` separator,
  `w = 48`) pays 12 bits for its second separator. A proof would need
  exactly the "bounded sharing" step the record lacks.
- *(Standard result available.)* Non-idempotent inhabitation is decidable
  (Bucciarelli–Kesner–Ronchi Della Rocca 2014). A memoised inhabitation search becomes
  finite once the interface types are fixed. The derivations involved are tiny (≤ 24
  β-steps for every non-divergent run at `w ≤ 40`). So a bounded enumeration of stream
  interface types, followed by tabled inhabitation, is a sound route for the β-normal band
  44–45. Whether it fits the cap is untested: it needs multiset unification, which I did not
  build.

**Lean.** Nothing was kernel-checked. The finite parts are Python narrowing runs of up to
about 10⁵ states with a hand-written machine. Porting them to Lean against
`Blc/SelfintClass.Reader` would need an executable normaliser with a proved completeness
argument for narrowing. That is a project in its own right, and I judged it out of scope
next to the open band.

**Where a sub-162 could hide.** Not among β-normal readers below 44, and not among β-normal
readers with `j` deeper than 1. What remains is β-normal readers at exactly 44–45 with `j`
at depth 1, plus every reader with a redex: shared lets, the 165-style root let, openers.
I would look for a reader with redexes, where cut interfaces allow non-uniform sharing.
The closest such objects (R59, R84, R104) are far above 46, so I expect none exists.
That is belief, not evidence.

## 5. Follow-up: the β-normal band `w ∈ {44, 45}` at depth 1

**Theorem BN46 (computer-checked; the partition lemma and the cut-off refutations are
handwritten or engine-certified as marked).** Let `R` be β-normal, with free variables
among `c` and `j` and exactly one `j`, and suppose it satisfies `R Z(r) =β r j`,
`R U₁(N) =β c U₀ N` and `R U₂(N) =β c U₁ N`. Then `w(R) ≥ 46`, with equality attained by
the 162's reader. No minimality hypothesis is used.

**Partition (exact; handwritten).**

- A β-normal `R` satisfying the zero law is `λs. s A₁ … A_k` with `k ≥ 1`. Any other root
  fails, because `R Z(r)` would be headed by `c` or `j`, would be a λ, or would be `Z`
  itself.
- So `depth(j) ≥ 1`, and the cases are:
  - `j` at depth ≥ 2: D2, `narrow.py 45 --betanormal --laws 1,2,0 --jdepth 2+`: 99,562
    states, 0 solutions.
  - `j` at depth 1, split by the exact root arity `k`. Every law's normal-order run needs
    the root head first, so the search fixes the root spine before anything else. Prefixes
    with `k` holes, plus a minimum-arity constraint, therefore cover each arity exactly once.

| chunk | command (B = 45, `--betanormal --jdepth 1`) | states | sols | cut-offs | time | RSS |
|---|---|---|---|---|---|---|
| k = 1 | `narrow2.py … --prefix '\s. s _'` | 45,497 | 0 | 0 | 10 s | 306 MB |
| k = 2 | `narrow2.py … --prefix '\s. s _ _'` | 78,828 | 0 | 0 | 16 s | 471 MB |
| k = 3 | `narrow2.py … --prefix '\s. s _ _ _'` | 59,550 | 0 | 7 | 35 s | 364 MB |
| k ≥ 4 | `narrow3.py … --prefix '\s. _' --minarity 4` | 32,810 | 0 | 0 | 9 s | 194 MB |

`narrow3.py` is `narrow2.py` plus a spine index in the hole metadata: spine holes with index
below `K` may only become applications. Consistency checks:

- With `--minarity 1` at B = 41 it gives 46,171 states, against 46,190 for the
  unconstrained run. The 19 extra states are roots that fail at once.
- It is identical to `narrow2.py` on `'\s. s _ _'` at B = 41.

**The seven k = 3 cut-offs.** In each one the zero run reaches a self-application with no
head normal form. The open holes are only ever bound to variables that never reach head
position, so every completion fails.

- `W₁ W₁` (two cases), `W₁ = λx. x (λy. x y)`: handwritten, infinite head reduction through
  η-expansions.
- `W₂ W₂` (two cases), `W₂ = λx. x (x (λy. x))`: `blam adjudicate`, DIVERGE, no whnf on its
  own head chain.
- `W₃ W₃ _`, `W₃ = λx₁x₂. x₁ x₁ H`: handwritten, `W₃ W₃ →_h λx₂. W₃ W₃ H₁`.
- `W₄ W₄ _`, `W₄ = λx. x (x I x)`: `blam adjudicate`, DIVERGE, no whnf.
- `λs. s (λx₁x₂x₃. x₃ H x₃) W₅ _`, `W₅ = λx₁x₂. x₂ H' x₂`: handwritten,
  `W₅ A W₅ Y⃗ →_h →_h W₅ A' W₅ Y⃗` forever.

**Consequence.** Within the class, a sub-162 interpreter would need a reader with at least
one source redex, where close46's kernel-checked source theory applies. The pricing route
(1) was not needed for the β-normal case. It remains the natural tool for the redex case,
where the plain search overflows already at `w ≤ 32`. None of these runs relies on class-bound's
earlier finite checks or minimality reductions.
