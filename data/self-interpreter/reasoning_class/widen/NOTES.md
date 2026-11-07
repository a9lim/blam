# Widen lane working notes

Read BRIEF, complete class-bound.md, SelfintClass.lean and WireCost.lean;
read round-3 NEXT, values, env, recursion and adversary reports.

## Initial finding

The requested arbitrary-source four-capture bound cannot hold: locally
let-binding c and p gives a beta-equivalent NEXT with only one source leaf
for each parameter. For example `(lambda a b. Q[a/c,b/p]) c p` has two free
leaves. For canonical Q its expected price is 101 (to check in Lean).
Consequently a uniform `116+cost(R)+4 depth(j)` source bound also fails
at sufficiently deep holes even though the rigid laws and canonical values
remain valid. Need a cost/capture tradeoff, not separate minima.

Plan: pin the counterexample, formalize full-source necessary facts, and
prove a usable widening with an explicit local cost condition permitting
source redexes and unconstrained tag placement in administrative syntax.
Investigate whether a stronger beta-normal arbitrary-tag theorem is feasible.
No term sweep or outside write; no consult.

## Checked results so far

Widen.lean compiles (two threads, about 0.8s), no sorryAx. It embeds the
unchanged Round3Reader namespace from floor/ReaderHoist.lean because local
-o imports require extra root setup; plain checking works.

- RigidNext drops every source-shape part of H2, retaining scope [c,p]
  and the two canonical rigid branch equations.
- letBoth = (lambda p c. canonicalNext) p c: 105 bits, two free leaves,
  beta-reduces to canonicalNext. (Initial guessed price 101 was wrong;
  105 is kernel-checked.)
- tagFour = lambda b. b (lambda p c.T0) (lambda p c.T1) p c:
  beta-normal, 113 bits, two free leaves, both rigid laws checked.
  Thus removing the two-arm restriction alone invalidates four captures.
- Six inert wrappers around the reader162 hole: reader cost90/depth7.
  With letBoth, literal assembly233 < 116+90+28=234. No smaller interpreter.
- Hoisting bridge to authoritative class quantities checked:
  cost(hoist R)=costR+d+6+f, depth=0, Reader and one-hole preserved.
- reader source charges cost>=12+4f and cost>=8+2d+4f checked.
- Every arbitrary RigidNext has >=2 captures, >=1 nonlinear binder,
  >=2 live binders, a live capture, hence >=23 bits. Full H2 removal gives
  E>=47+costR+2d>=67. Weak, explicitly not the desired 92 theorem.
- Administrative affine reductions preserving exact wire balance transfer
  the old 116+w and 138 bounds. Linear free-occurrence movement is checked
  by (Farg-1)*occDepth <= 6+outerReferences, not presumed to shrink.
- Complete c/p let-sharing cannot improve min below162: hoisted canonical
  assembly is strictly smaller (shared_next_dominated_below_162).
- Stronger frontier theorem: arbitrary RigidNext with q>=92 and q+3F>=104
  is dominated below162 by canonical NEXT in either R or hoist R.
  Therefore ALL arbitrary NEXTs q>=98 cannot reduce the minimum over readers.
  Remaining possible failures of that sufficient frontier:
  q<=91, or F=2/q<=97, or F=3/q<=94.
  This is a no-enumeration arithmetic localization, not proof those small
  cases are impossible. The same reader-weight46 conjecture suffices for
  the frontier-widened class.

Next: semantic helper proofs for shared parameters/admin paths, materialize
and battery/polish the 233-bit same-reader counterexample, write REPORT.
No H1 or H3 removal claimed. Need final explanation of global minimum vs
fixed-reader formula. Full arbitrary-NEXT optimality remains open.

## Stable report written

REPORT.md now records all theorems, exact hypotheses, counterexamples,
proofs of the price-frontier comparison, and the remaining small NEXT regions.
A full all-unary FullReader interface and hoist_fullReader are checked;
frontier_162_of_full_reader_floor uses the original all-reader46 conjecture.
This avoids silently assuming it for every two-probe Reader.

The sole complete witness deep_shared_233.lam passed 233/667/1/0;
repository polish.py returned162 and passed162/667/1/0. A lane-local shim
caps workers at2, all blam calls at100s, and writes temps in lane scratch.
The full source beta-reduces to intL162 in Lean; its bitstring is tied to the
materialized source. No new algorithm and no sub162.

Last clean Widen.lean compilation includes all printed axioms with no sorryAx.
Main source is879 lines and checks in about1s. No long search was run.
Next: final artifact audit/log capture; consider whether any further local
argument can tighten the open frontier without enumeration.

## Full-reader comparison and knot multiplicity complete

Added kernel-checked reader162_fullReader via one symbolic eight-step head
trace plus existing inductive skip_self; deepReader_six_fullReader follows
by its beta reduction. frontier_dominated_full now states domination with
FullReader on both sides, so the same-minimum claim is fully formal even
for sizes >=162. frontier_inherits_full_reader_floor transfers any all-unary
reader bound (30/46 remain external conjecture/handwritten inputs as stated).

Fully arbitrary RigidNext now also has |E| >=18+k(26+q)>=18+49k for opaque
knot multiplicity k. Thus any sub162 has k=1 or k=2 with q<=45; k>=3 is at
least165. All new lemmas compiled with only propext/Quot.sound, plus
Classical.choice for hoisting/comparison. Widen.lean now995 lines.

The small-NEXT q<=91 / F2 q<=97 / F3 q<=94 regions remain open. A direct
count of source nonlinear binders cannot price all output binders: beta
contraction can turn a previously affine enclosing binder nonlinear by
copying a captured variable. No extra source-binder bound was asserted.
Next/final: check artifact identities and save final compilation log.

## Final proof and artifact check

Added next_frontier (old class inclusion) and
frontier_optimal_iff_reader_floor (the exact all-unary iff). The completed
same-minimum claim now has full-reader existence, old-class inclusion and
the iff all kernel-checked. No source-shape requirement on NEXT remains
beyond RigidNext plus the two numerical frontier inequalities.

check_artifacts.py passes: the .lam source, .blc, source.json and Lean's
literal wire agree; the polished .lam/.blc equal canonical int162 exactly;
31 printed theorem dependencies use only propext, Quot.sound and
Classical.choice. Final compile output and timing are lean.log and
proof_check.json. No extra battery run or term enumeration was needed.
All lane work is complete. Remaining small NEXT regions, H1 opacity and H3
canonical values are explicit in REPORT.md. No sub162 claim.

## Coordinator follow-up: H2 closure investigation

New requested target: all RigidNext q>=92 and q+3F>=104; settle a cheap
subregion if full proof does not close. Do not treat parameter aliases as
all possible nonlinear sharings: a general redex can copy an open function
with local captures. Minimum source only forbids cost-decreasing redexes;
linear contractions can increase index cost, and reduction may increase F.

Promising unbounded cheap-end lemma: every RigidNext needs >=3 live source
binders. Separated0 terms are closed under substitution of global variables
by Separated0 terms (needs hygiene lemma). A body with <=1 live binder is
Separated0. With <=2 live source binders, a live weak-head contraction leaves
Separated0; erasing head contractions strictly shrink wire while retaining
<=2 live binders. A lambda-rooted NEXT must use its tag; consuming it also
leaves a separated body. Strong induction should close all syntax, no sweep.

Combining >=3 live with a local-capture index bit separate from the rigid p
index should give q>=30, and q>=32 for lambda roots. For a hypothetical
q<=31 source, count_wire_bound forces nonlinear=1/live=3. Any nonerasing
weak-head step consumes its sole nonlinear binder or leaves <=2 live;
erasing steps shrink. This should give q>=32 for arbitrary sources.
These claims are a proof plan until Lean compiles.

### Follow-up: first unrestricted exclusion checked

`rigidNext_three_live` and `rigidNext_at_least_32` now compile with plain
`lean -j2` (3.34 s, no errors). No source enumeration. The key new invariant
is separation under substitution for a global: a term with at most two live
source binders either loses internal live capture at its next live head
contraction, or shrinks at an erasing contraction. The tag-lambda case uses
the same invariant after consuming the tag binder. Thus every RigidNext
needs three live source binders. Locally bound index bits are separated from
both parameter-depth charges; a source capture pays at least one local bit.
These give q>=30 globally and q>=32 for a lambda source. Below32, the source
has exactly one nonlinear and three live binders; any weak-head step either
consumes the sole nonlinear binder, reduces live count below3, or erases and
strictly shrinks. Strong induction eliminates the non-lambda case.

Next: derive the stronger assembly/knot consequences and inspect the
minimum-counterexample conditions for all remaining source regions. The
full92/104 pair remains open. New axioms prints and final artifact hash audit
will be updated after all follow-up lemmas are stable.

### Follow-up completed proof development

Uniform complete single-parameter aliases are now covered:
- shareC Next has q=oldq+occ(p)+6>=99; canonical100/F3.
- shareP Next has q>=99; canonical99/F3. The new proof transports Tagged
  and pruning through bindHole and evaluates only four fixed renamed target
  pairs; merged_lower supplies the universal bound. Both satisfy FrontierPrice.
New unrestricted assembly bound76, knot bound18+58k, and sub162 two-hole
localization q32..45 compile. These retain H1/H3 and the independent reader.

Formalized lexicographic minimum existence for J_s=q+sF, s=0/3 separately,
and minimum_counterexample. A minimum has no contextual AdminBeta redex;
all remaining linear redexes have Farg>=2 and strict index tax
(Farg-1)D>6+G. Root weighted beta delta is exact and checked. A fixed28->30
linear-growth example confirms why unrestricted source normalization is not
free. No exhaustive classification of surviving nonlinear open-function
sharing or arbitrary tag spines was obtained. Full92/104 remains open;
remaining disjoint regions are32..91, F2/92..97, F3/92..94. H3 not pursued.

REPORT section8 now contains proofs, exact hypotheses, alias table,
minimum-counterexample reduction, honest failure boundary and next target.
Widen.lean compiled clean in3.68s before adding final axioms prints; now54
printed dependency checks. Removed staging helper text files; authoritative
proof source is Widen.lean. Final action: run check_artifacts.py to refresh
lean.log/proof_check.json, then deliver report.

### Final follow-up audit passed

check_artifacts.py passes at the final source hash
f6905af9e462c24dc8ca52545611c47038ce7a84d18a77de0d7fbcfc5dee86ef.
Lean elapsed3.7607s, two threads, exit0, no warnings. All54 requested theorem
names are present in the dependency audit;52 use only the allowed standard
axioms and2 fixed computations are axiom-free. The checker now handles both
Lean print formats explicitly rather than assuming every theorem has axioms.
Source/wire/Lean identity and polished canonical162 identity still pass.
No tracked repository changes; writes remain in this lane. Report section8
and the final log/json are ready for coordinator delivery. H2 still open;
no new interpreter, no H3 theorem, no source sweep.

## Second coordinator follow-up: price NEXT obligations at source

New target is arbitrary-source NEXT>=92 (q32..91), with permission to settle
an unbounded structural subfamily if the global region resists. Stay on NEXT;
close46 is independently proving reader source-cost bridges. Read its live
NOTES: weighted/contextual beta accounting and first-redex source budgets
are established there, but classification of bounded arguments remains open.
Its results are not assumptions here and its files remain read-only.

Starting from the round-2 nine-form proof, inspect which output obligations
can be charged to distinct source origins. Need exact ownership of sharing
sites before adding parse/return/cell/lift/dispatch costs. Existing minimum
construction excludes AdminBeta but does not classify arbitrary open-function
sharing or beta-normal longer tag spines. No consults, source sweeps, or
writes outside this lane.

### New proof route: a one-let source certificate

The nine-form argument does not itself price arbitrary original sources:
it relies on Boolean normalization being pure pruning. A useful larger
fragment admits one explicit let and requires each pruned let contraction
to be already normal. Its arbitrary repeated tag tests and code sharing can
be priced without enumerating source terms.

Plan: inverse-substitution completeness for a fixed target gives every
possible body by cutting subtrees equal to the shared argument. If that
argument is used, an unshifted subterm of the target determines it. For two
branches, each argument projection comes from a fixed target subterm set;
the existing unbounded merged-source theorem prices the argument pair once
and the body pair once. Erasure cases use one-sided wire bounds. Extend
this local certificate through arbitrary source contexts with at most one
let. A generalized merge recurrence allows neutral-headed tag choices in
function position, covering longer tag spines that still normalize by
pruning. Numeric evaluation will concern only the fixed target trees and
all their inverse cuts, not a source-size/fuel search.

This excludes active helper application that creates further beta redexes
after the let; such function sharing is a genuine remaining case. First
check whether the conservative lower recurrence still reaches92 before
investing in its proof infrastructure.

### Fixed-target source recurrence succeeds (not yet a Lean theorem)

one_let_bound.py derives inverse cuts only from the four target pairs,
including the two optional suffix eta expansions. It takes0.0022s on one
thread. Generalized pure-pruning body floors are90,106,105,101; corresponding
capture floors4,5,5,4. Allowing exactly one let at any position gives body
floors96,110,110,103, hence whole NEXT>=98. A let before the tag binder has
whole-source floors99,112,113,110. These are conservative lower recurrences,
not a claim every numerical minimum is attained. The pure canonical body
still attains90. Only19 paired target-context states are needed; root
inverse cut counts are4/6,4/7,5/6,5/7. No source enumeration or reduction fuel.

Now formalizing the inverse-substitution completeness and the generic
projection/source-cost induction. The intended grammar allows all Boolean
selector placements, including longer spines, PROVIDED the projected result
is already normal after its one explicit let contraction. It excludes
active lambda helpers that need additional contractions at their use sites.
The complete proof, not this Python output, is needed before claiming98/99.

### Source certificate is now kernel-checked

The new OneLet section of Widen.lean compiles with no errors or warnings.
Formal completeness: arguments_complete finds every used argument by
extruding a target subtree; inverse_complete includes every inverse body;
cuts_complete combines them. Including unused inverse bodies simplifies
completeness and changes root cut counts to 8/10,8/12,10/10,10/12 without
changing any lower bound. No source terms are enumerated.

Plain permits complete Boolean choices at arbitrary positions, including
function position; both projected trees must be normal only at the final
semantic bridge. Its generalized merge gives q>=92 and F>=4. Once adds
exactly one DESIGNATED let contraction in arbitrary source context. The
root proof charges its two projected arguments through one merged source
argument, not separately; erasure cases are proved. Context induction and
the rigid-law/confluence bridge give q>=98. A let before the tag binder
has q>=99. These 98/99 bounds imply FrontierPrice by the already proved
F>=2. covered_admin_frontier also permits an arbitrary sequence of the
previously proved cost-safe administrative contractions before a covered
endpoint. No reader assumptions enter any of these NEXT price theorems.

Exact limitation: this is normality AFTER structural Boolean pruning and
the designated substitution. The grammar can have extra source redexes in
branches that pruning erases, but no live beta step beyond the designated
let is performed by the projection. Active helper applications created by
pruning or substitution remain outside the theorem. Thus this does NOT
prove every source beta-normal outside one let, nor arbitrary NEXT>=92.
The numerical region q32..91 survives only outside the covered family;
no global cutoff inside that region has been proved.

Completing endpoint inclusion, exact fixed-target table, dependency audit,
and REPORT section9 before returning the result. No tracked changes.

### Final second-follow-up audit

REPORT section9 is complete. Widen.lean passes in 12.0918s on two
threads, with 76 printed theorem dependency sets; no errors, warnings,
proof holes, or added axioms. Allowed dependencies are propext, Quot.sound,
and Classical.choice. SHA256:
7a58de22c922bb4b9ef2a5f263fff8c05e2b5316d39a9d35778662eb3c76653b

All old Next sources embed in Covered. headChoiceNext (102 bits, F5)
proves the pure family is strictly wider than the old two-arm class.
The 92/98/99 bounds are attained respectively by canonicalNext,
identityNext, and shareP canonicalNext, all with checked rigid laws and
Covered derivations. fixed_target_values verifies the exact four-pair
table in Lean independently of Python. The no-normalization boundary
after designated substitution remains explicit in REPORT. No global
q>=92 theorem, new interpreter, reader result, or H3 result is claimed.

check_artifacts.py retains the complete 233-to-162 source identity
audit and now expects 76 printed sets. one_let_section.lean is the
assembly source for the new namespace; assemble_onelet.py inserts it
into standalone Widen.lean. lean.log and proof_check.json are current.
No lane subprocesses remain; tracked git status is clean.
