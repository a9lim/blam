The reader lemmas and the 138-bit assembly bound are kernel-checked in
[Reader138.lean](Reader138.lean), namespace `Blc.Round3Reader138`.
The general NEXT classification remains an explicit premise through its two
numeric consequences. The specialization to the concrete canonical NEXT
has no unproved numeric premise. This is a bound for the specified separated
class, not a global interpreter lower bound or a proof of 162 optimality.

**1. Complete interpreters and reference checks.**

No new interpreter was built, and no battery or polishing run was needed.
`assembly_is_int162` and `assembly_is_int165` prove literal AST equalities
between the new assembly definition and the existing Lean `intL162` and
`intL165`, respectively. These equalities are kernel-checked by `decide`,
with no axioms. The checked reference prices are `(cost,depth)=(42,1)` and
`(49,0)`, with exactly one j occurrence each. `reader162_laws` and
`reader165_laws` check the two reader probes used by this bound; they are
not new all-unary-length reader correctness theorems. Existing interpreter
correctness modules are imported without modification.

**2. Exact definitions and identities.**

Indices are 0-based. R has root frame `[c,j]`, meaning c=0 and j=1.
The rigid suffix N=2 and the separate zero-probe tail r=3 are fresh for R.
The definitions are:

```text
P       = cons K N = U_0(N)
S       = cons F P = U_1(N)
W       = lambda u.N
Z       = cons K r
varOut  = c P N
zeroOut = r j

Reader R := FreeUnder 2 R
            AND BetaJoin (R Z) zeroOut
            AND BetaJoin (R S) varOut

cost R       = holeCost 1 R  -- j leaves cost zero; every other node costs its wire price
depth R      = occDepth 1 R  -- with occ 1 R = 1, exactly the hole's local lambda depth
functional R Q = lambda p c. substDec 1 Q R
assemble T R Q = substDec 0 (functional R Q) T
```

Thus the full independent reader laws from the brief imply `Reader R` by
specialization to the zero case and n=1. No single-hole premise is used to
prove nonlinearity or the two-lambda bound; uniqueness is imposed only for
the source-price theorem. The substitution definition shifts Q beneath
reader-local binders, so it is hygienic and gives Q no access to them.
`functional_closed` proves closure from `FreeUnder 2 R` and `FreeUnder 2 Q`.

`pair_apply`, `stream_square`, `stream_constant`, and `constant_apply`
prove the application algebra, including arbitrary operands X:

```text
S S ->* W
S W ->* N P
W X -> N
S X -> X F P
```

The last equation holds for arbitrary X, so includes all rigid spines.
`Value` contains S, W, and normal rigid terms whose c-headed spine never
has P as its first argument. `value_apply` proves closure under application.
`app_tree_algebra` is structural induction over every lambda-free tree B in
frame `[s,c,j]`: `contract B S` reduces to some `Value`. There is no source
size bound, enumeration, fuel hypothesis, or normalization oracle in that
induction. `value_ne_output` proves that `c P N` cannot be such a value.

The source accounting identities are:

```text
holeCost_wire:
  wire t = holeCost j t + (j+2)*occ j t + occDepth j t

functional_wire [FreeUnder 2 R, occ 1 R = 1]:
  wire (functional R Q) = 4 + cost R + wire Q + freeLeaves 0 Q * depth R

knot_fill_wire [FreeUnder 1 T, Closed H]:
  wire (substDec 0 H T) = ghostCost 0 T + freeLeaves 0 T * wire H

canonical_assembly_exact [FreeUnder 2 R, occ 1 R = 1,
                          FreeUnder 2 Q, wire Q = 92, freeLeaves 0 Q = 4]:
  wire (assemble SelfintKnot.knot R Q) = 116 + cost R + 4 * depth R
```

The equality is restricted to the attaining knot and the exact 92/4 price
facts. It is not asserted for every member of the class.

**3. Lower bounds and their exact hypotheses.**

The principal theorem statements, with the common namespace omitted, are:

| Theorem | Hypotheses | Conclusion |
|---|---|---|
| `reader_nonlinear` | `Reader R` | `1 <= nonlinear R` |
| `reader_two_lambdas` | `Reader R` | `2 <= lamCount R` |
| `reader_nonlam_cost` | `Reader R`, `occ 1 R = 1`, `not IsLam R` | `22 <= cost R` |
| `reader_depth_charges` | `Reader R`, `occ 1 R = 1` | depth 0 implies cost >=22; depth 1 implies cost >=18; depth >=2 implies cost >=17 |
| `reader_weighted_cost` | `Reader R`, `occ 1 R = 1` | `22 <= cost R + 4 * depth R` |
| `assembly_lower` | `FreeUnder 1 T`, `BetaJoin T (h T)`, `FreeUnder 2 R`, `occ 1 R = 1`, `FreeUnder 2 Q`, `NextPrice Q` | `116 + cost R + 4 * depth R <= wire (assemble T R Q)` |
| `functional_118` | `Reader R`, `occ 1 R = 1`, `NextPrice Q` | `118 <= wire (functional R Q)` |
| `class_bound_138` | `FreeUnder 1 T`, `BetaJoin T (h T)`, `Reader R`, `occ 1 R = 1`, `FreeUnder 2 Q`, `NextPrice Q` | `138 <= wire (assemble T R Q)` |
| `class_bound_multiplicity` | same as `class_bound_138` | `1 <= k` and `18 + 120*k <= wire (assemble T R Q)`, with `k=freeLeaves 0 T` |
| `canonical_class_bound` | `FreeUnder 1 T`, `BetaJoin T (h T)`, `Reader R`, `occ 1 R = 1` | `138 <= wire (assemble T R canonicalNext)` |

Here h is `var 0`, and the only numeric NEXT premise is exactly:

```lean
structure NextPrice (Q : Term) : Prop where
  bits : 92 ≤ wire Q
  captures : 4 ≤ freeLeaves 0 Q
```

The reader proof is complete under its stated laws. The application-rooted
case uses `weakStep_counts`: with at most one nonlinear binder, a head
contraction preserving nonlinearity removes at least one source lambda and
one source leaf. This handles linear and vacuous contractions together and
does not assume that beta reduction decreases BLC wire size. The depth-one
case excludes cost 17 by showing the extra lambda is vacuous and must add
an index charge or contain the marked hole. `vacuous_index_charge` provides
the checked source-count argument.

Both fixed-point results are used with their actual statements:
`SelfintKnot.fixedpoint_has_hole` supplies k>=1, and
`SelfintKnot.fixedpoint_hole_multiplicity` supplies ghost cost >=18+2k.

For `canonicalNext`, `canonicalNext_bits`, `canonicalNext_captures`,
`canonicalNext_parameters`, `canonicalNext_scope`, and
`canonicalNext_normal` prove size 92, four free leaves (two c and two p),
the correct scope, and beta normality directly.

The remaining unformalized implication for arbitrary Q is:

```text
beta normality + canonical rigid NEXT branch laws + two-arm tag use
    ==> wire Q >= 92 AND freeLeaves 0 Q >= 4.
```

The nine-form pruning/classification proof is not formalized here. Its
finite terminal-form price facts in `floor/Facts.lean` were rechecked, but
those facts alone do not prove the universal classification. The separator,
opaque fixed-point equation, and independent reader laws are class
hypotheses; they are not derived from arbitrary closed-source interpreter
correctness. No proof that every assumed class member implements the full
interpreter contract was added; that standard syntax/environment induction
is not needed for the source-size conclusion.

**Verification.**

Final command, from `/Users/a9lim/Work/blam/lean`:

```sh
lake env lean -j2 /Users/a9lim/Work/blam/tmp/round3/lean138/Reader138.lean
```

Pinned toolchain: `leanprover/lean4:v4.32.2`. Exit 0, no warnings or errors.
Final measured wall time: 2.176 seconds; user 2.194 seconds;
system 0.148 seconds. This type-checks the new module using the existing
compiled Blc imports; it is not a clean rebuild of all transitive modules.
No run used more than two Lean threads. The separate unchanged
`floor/Facts.lean` check exited 0 in 0.711 seconds. No search was run.
All writes are confined to this lane, and tracked git status remained clean.

The exact final axiom output is:

```text
'Blc.Round3Reader138.reader_nonlinear' depends on axioms: [propext, Quot.sound]
'Blc.Round3Reader138.app_tree_algebra' depends on axioms: [propext, Quot.sound]
'Blc.Round3Reader138.reader_two_lambdas' depends on axioms: [propext, Quot.sound]
'Blc.Round3Reader138.reader_depth_charges' depends on axioms: [propext, Quot.sound]
'Blc.Round3Reader138.reader_weighted_cost' depends on axioms: [propext, Quot.sound]
'Blc.Round3Reader138.functional_wire' depends on axioms: [propext, Quot.sound]
'Blc.Round3Reader138.assembly_lower' depends on axioms: [propext, Quot.sound]
'Blc.Round3Reader138.class_bound_138' depends on axioms: [propext, Quot.sound]
'Blc.Round3Reader138.class_bound_multiplicity' depends on axioms: [propext, Quot.sound]
'Blc.Round3Reader138.canonical_assembly_exact' depends on axioms: [propext, Quot.sound]
'Blc.Round3Reader138.canonical_class_bound' depends on axioms: [propext, Quot.sound]
'Blc.Round3Reader138.reader162_laws' depends on axioms: [propext, Quot.sound]
'Blc.Round3Reader138.reader165_laws' depends on axioms: [propext, Quot.sound]
'Blc.Round3Reader138.assembly_is_int162' does not depend on any axioms
'Blc.Round3Reader138.assembly_is_int165' does not depend on any axioms
```

There are no `sorry`, new axioms, `Classical.choice`, `unsafe`, or
`native_decide` declarations or uses in the new module. The reported
axiom dependencies are at most `propext` and `Quot.sound`.

[build.log](build.log), [build.json](build.json), and
[facts-check.log](facts-check.log) record commands, timings, hashes, and
outputs. The final Reader138.lean SHA-256 is `875574bdde3611379c1e670f193057a5edf3ea4a38386fba13fdd66bd7d4f600`.

**4. Next proof step.**

The missing formal link for the arbitrary-NEXT class is the pruning theorem
that supplies `NextPrice`. Independently, this reader proof establishes
only the weighted charge 22. Proving 162 optimality within the canonical
separated class would require the substantially stronger weighted reader
charge 46; the reference 162 attains 46. No evidence here excludes a reader
of weighted cost 22 through 45, or constructions outside this class.

**5. Follow-up: NEXT price discharged from structural laws.**

The arbitrary-NEXT implication identified as unformalized above is now
kernel-checked in the same file, namespace `Blc.Round3Next138`. In
particular, `next_price` proves `Next Q -> NextPrice Q`, and the new
`Blc.Round3Next138.class_bound_138` has no numeric NEXT hypothesis.
The earlier sections describe the initial delivery; this section supplies
the previously missing implication and supersedes their statements that
it remains unformalized.

The exact hypotheses are packaged as `Next Q`:

```text
FreeUnder 2 Q                         -- c=0, p=1
NormalForm Q                         -- no beta step from Q
forall b, Q = lambda b -> TwoArmUse 0 0 b
Q K t =beta T0 t                     -- rigid t=var 2
Q F t =beta T1 t

T0 = p (lambda f. c Abs(f))
T1 = p (lambda f. p (lambda g. c App(f,g)))
Abs(f)   = lambda e a. f (lambda b r. b a (r e))
App(f,g) = lambda e. f e (g e)
```

The implementation uses `BetaJoin` for these beta equations, and the
literal existing `absVt` and `appVt` ASTs for ABS and APP. `tagValue true`
is K and `tagValue false` is F. `TwoArmUse j pending t` tracks the number
of applications on the current maximal spine. Its variable case is
`n = j -> pending = 2`, its application case increments `pending` only
in the function child and resets it in the argument, and its lambda case
increments the tag index and resets `pending`. Thus tag uses as data,
partial tag applications, and tag spines of arity greater than two are
excluded. Arbitrarily many tag occurrences are allowed. The leading
lambda is proved by `Next.lambda`; it is not a hidden assumption in the
definition of `Next`.

The expanded standalone conclusion is:

```lean
theorem next_bound_of_rigid_laws {Q : Term}
    (hscope : FreeUnder 2 Q) (hnormal : NormalForm Q)
    (htag : ∀ b, Q = .lam b → TwoArmUse 0 0 b)
    (hzero : BetaJoin (.app (.app Q churchTrue) (.var 2))
                     (.app nextZero (.var 2)))
    (hone : BetaJoin (.app (.app Q churchFalse) (.var 2))
                    (.app nextOne (.var 2))) :
    92 ≤ wire Q ∧ 4 ≤ freeLeaves 0 Q
```

The proof formalizes the pruning and common-head argument uniformly,
without enumerating source programs or postulating the nine-form list:

1. `tagged_of_twoArm` puts every normal source satisfying the exact arity
   condition into `Tagged`, distinguishing ordinary neutral spines from
   full tag choices and lambdas.
2. `Prunes` records structural deletion while retaining all surviving
   binders and de Bruijn indices. `pruning_monotone` proves both
   `wire u <= wire t` and, for every cutoff c,
   `freeLeaves c u <= freeLeaves c t`. It allows independent choices at
   individual tag occurrences. The deterministic `prune` receives such
   a certificate; `prune_tag_absent` proves that every tag occurrence has
   disappeared. `prune_normal` proves normality, and `prune_beta` proves
   that actual substitution of K/F reduces to the chosen pruning followed
   by removal of the unused tag slot. `shift_subst_absent` restores that
   slot exactly, so surviving syntax is priced in its original frame.
3. `normal_applied_fresh` proves that a normal W in frame `[c,p]` with
   `W t =beta Ti t` is literally Ti or `eta Ti`. The latter is the explicit
   AST `lambda r. Ti r`. A checked inverse renaming makes the fresh
   substitution injective; there is no beta-eta conversion assumption.
   `Next.pruned_forms` therefore gives the four possible pairs of fully
   pruned source bodies, with the original tag slot restored.
4. `merged_lower` is structural induction over every `Tagged` source.
   The recursive `merged` bound has separate general-term and
   ordinary-spine components. The ordinary component requires the same
   head variable and arity and forbids a tag choice in a function position
   receiving an additional argument. A complete tag choice costs its
   dispatch plus both pruned arms; matching ordinary heads and lambdas
   can share their source constructors. Running the same induction with
   either wire cost or outer-free-leaf count proves both inequalities.
   `merged_targets` evaluates only the four fixed canonical target pairs:
   every body costs at least 90 bits and has at least four outer free
   leaves. Adding Q's leading lambda gives 92 bits.

The new assembly statements, all in `Blc.Round3Next138`, are:

| Theorem | Hypotheses | Conclusion |
|---|---|---|
| `next_price` | `Next Q` | `NextPrice Q` |
| `assembly_lower` | `FreeUnder 1 T`, `BetaJoin T (h T)`, `FreeUnder 2 R`, `occ 1 R = 1`, `Next Q` | `116 + cost R + 4*depth R <= wire (assemble T R Q)` |
| `class_bound_138` | `FreeUnder 1 T`, `BetaJoin T (h T)`, `Reader R`, `occ 1 R = 1`, `Next Q` | `138 <= wire (assemble T R Q)` |
| `class_bound_multiplicity` | same as `class_bound_138` | `1 <= k` and `18 + 120*k <= wire (assemble T R Q)`, with `k=freeLeaves 0 T` |

`canonicalNext_is_Next` verifies all the structural and semantic
hypotheses for the concrete 92-bit NEXT, including both rigid branch
laws. `canonicalNext_minimum` combines this checked membership with its
exact 92-bit/four-leaf prices and the universal inequalities. This proves
attainment of both minima. Uniqueness of the minimizer and a literal
enumeration theorem for the nine terminal source shapes are not claimed
or needed for the requested inequalities.

There is no remaining unformalized numeric implication in this class
bound. Its assumptions remain substantive: the separated assembly,
opaque fixed-point law, reader probes and single j occurrence, canonical
rigid NEXT laws, source normality, and exactly-two-arm tag use. They have
not been derived from arbitrary interpreter correctness. The weighted
reader gap from 22 to 46 and the global 162-optimality question remain
as stated in section 4.

The final command remains:

```sh
cd /Users/a9lim/Work/blam/lean
lake env lean -j2 /Users/a9lim/Work/blam/tmp/round3/lean138/Reader138.lean
```

Final result: exit 0, no warnings or errors, **4.274 seconds wall**,
5.269 seconds user, 0.338 seconds system. Existing compiled imports were
used; this is not a clean transitive rebuild. The command uses two Lean
threads. No source enumeration, search, new dependencies, or changes
outside the lane were made. Tracked git status remained clean.

The principal new axiom lines are:

```text
'Blc.Round3Next138.pruning_monotone' depends on axioms: [propext, Quot.sound]
'Blc.Round3Next138.merged_lower' depends on axioms: [propext, Quot.sound]
'Blc.Round3Next138.prune_beta' depends on axioms: [propext, Quot.sound]
'Blc.Round3Next138.normal_applied_fresh' depends on axioms: [propext, Quot.sound]
'Blc.Round3Next138.Next.pruned_forms' depends on axioms: [propext, Quot.sound]
'Blc.Round3Next138.merged_targets' depends on axioms: [propext]
'Blc.Round3Next138.next_price' depends on axioms: [propext, Quot.sound]
'Blc.Round3Next138.next_bound_of_rigid_laws' depends on axioms: [propext, Quot.sound]
'Blc.Round3Next138.class_bound_138' depends on axioms: [propext, Quot.sound]
'Blc.Round3Next138.assembly_lower' depends on axioms: [propext, Quot.sound]
'Blc.Round3Next138.class_bound_multiplicity' depends on axioms: [propext, Quot.sound]
'Blc.Round3Next138.canonicalNext_is_Next' depends on axioms: [propext, Quot.sound]
'Blc.Round3Next138.canonicalNext_minimum' depends on axioms: [propext, Quot.sound]
```

All printed declarations in both namespaces have at most `propext` and
`Quot.sound`; no `sorryAx`, new axiom, `Classical.choice`, `unsafe`, or
`native_decide` is used. [next-build.log](next-build.log) contains the full
output, and [next-build.json](next-build.json) records the final command,
timings, and source hash. The final Reader138.lean SHA-256 is
`c9290b5e5efe876df9980a1b233ead25a8fa79c9ff1a97e4149e67d46a12f8cb`.
