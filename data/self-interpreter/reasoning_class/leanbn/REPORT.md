# leanbn — BN46 kernel-checking design and a checked pilot

**Verdict:** the requested structural and arithmetic foundations now have
kernel-checked proofs, and a complete small subchunk has been checked end to
end. **BN46 itself is not yet a Lean theorem.** The remaining work is a
verified symbolic residual/refinement checker and its certificate DAG, including
memo transport and divergence. Scaling the literal-layout checker used in the
pilot would exceed the roughly thirty-file budget; I stopped that route.

## 1. Complete interpreters

None built or changed. No new bit count or battery claim.

As an interface control, `Foundations.lean` proves that the existing
`SelfintClass.reader162` satisfies Z, U1, **and U2**, is beta-normal, has one
source j, and has weight exactly 46. Its U2 result is checked by 22 beta
steps. This reuses the existing literal reader; it is not a new interpreter.

A necessary interface correction: `SelfintClass.Reader` contains only Z and
U1. The new `BN46.Reader012` extends it with

```
U2   = pairT churchFalse S
out2 = c S N
R U2 =β out2
```

The final BN46 target must explicitly use this extra law:

```
∀ R, Reader012 R → NormalForm R → occ 1 R = 1 →
  46 ≤ SelfintClass.cost R + 4 * SelfintClass.depth R
```

No final theorem with that conclusion is asserted in these files.

## 2. Exact identities and soundness lemmas

All the following statements are in `Foundations.lean`, compiled with
`lean -j2`. They use the repository's `Term`, `Beta`, `Betas`, `BetaJoin`,
`NormalForm`, `occ`, `cost`, and `depth`, not an unconnected toy calculus.

**Shape, using Z alone (`zero_shape`).** If `FreeUnder 2 R`, `NormalForm R`,
and `BetaJoin (R Z) zeroOut`, then

```
∃ as ≠ [], R = λs. s as
```

Proof: a normal non-lambda has a rigid free head c or j, which remains that
head under reduction and cannot become r. After exposing the root lambda,
a second lambda persists under reduction and cannot become `r j`; a body
headed by c or j again remains rigid. Thus the body is headed by s. Its
argument list cannot be empty, since the result would be Z, a lambda.
There is no minimum-reader, weight, or unary-law hypothesis.

**Symbolic orphan replay (`orphan_replay`, `orphan_preserves_join`).** For a
checked ordinary reduction `t →β* u`, if free hole slot q is absent from u,
then for arbitrary a and b,

```
substDec q a t →β* substDec q b u.
```

Consequently replacing a by b preserves beta-joinability with any target.
The proof uses substitution stability of beta reduction, absence of q, and
confluence. It is valid for arbitrary replacements, including divergent ones.

**Needed occurrence (`needed_occurrence`).** Suppose `t →β* u`, the target n
is normal and contains free name i, i is absent from t, i < q, and filling
hole q by a makes t beta-joinable with n. Then q occurs in u. If q had
vanished, orphan replay would give a residual still lacking i, contradicting
preservation of free-name absence under beta reduction.

For reader laws, `joint_needed_names` checks `occ 1 R > 0` and
`occ 0 R > 0` against the existing `Reader`. Thus the zero law demands j and
the unary law demands c. Applied to all erased holes, the preceding argument
is the needed-occurrence repair: unplaced required names cannot all be hidden
in orphans. It does not justify the known-unsound arbitrary-single-law memo.

**What the orphan theorem does and does not certify.** Its premise is a
literal, checked symbolic beta trace and literal absence from its residual.
An open source hole under d binders must be represented by a fresh free
function slot applied to those d bound variables; filling the slot by the
d-fold abstraction of its source subtree implements capture correctly.
These lemmas do **not** prove that Python's `rb`, `HC`, comparison worklist,
or canonical memo key denotes such a residual. That representation/replay
bridge remains to be implemented in the proposed checker. Calling the current
file a verification of `narrow2`/`narrow3` would be false.

**Cheap orphan filling (`FillOrphans`).** Replacing any collection of source
subtrees under at least one lambda by variable 0, when each replaced subtree
has no source j, preserves beta-normality, j count, and j depth, and cannot
increase `weightAt`. This is a separate structural induction, so semantic
orphan replay is not being used to assume a price fact. The needed-name
argument supplies the absence premise for a successful one-j completion.

**Admissible lower bound (`hole_charge`, `lower_bound_admissible`).** For any
source subtree t at depth d >= 1, write J=`occ (d+1) t`,
D=`occDepth (d+1) t`, and C=`occ d t`. The stronger additive inequality is

```
2 + 4*d*J + 4*D + d*C ≤ weightAt d t + 2*J.
```

It follows by induction on the literal source. In particular it counts both
names simultaneously even if they occur inside the same hole; there is no
unproved disjoint-hole assumption.

Sum over open holes at depths at least m >= 1. A legal one-j completion has
one future j if `ju=false`, and zero future j if `ju=true`. If j is unplaced,
its total depth is at least jlo; if c is unplaced, some open hole contains c.
The sum proves exactly

```
refined + 2*open
  + (ju ? 0 : 4*max(m,jlo)-2)
  + (cu ? 0 : m)
≤ completed weight.
```

These hypotheses are explicit in `lower_bound_admissible`. It applies to
states below the stream lambda. For the depth>=2 run, first use `zero_shape`
and start under that lambda; the original bare depth-0 start is not silently
covered by the m>=1 proof.

**Arity price (`arity_price`).** Every one-j two-probe reader literally of
the form `λs. s A1 ... Ak` satisfies `w >= 4*k+7`, with arbitrary operands,
including redexes. The proof sums the same charge and uses the demanded c
and unique j. Hence k>=10 is excluded below 46 in the kernel. Only arities
1 through 9 remain after the normal-reader shape reduction.

## 3. Complete impossibility check and measured resources

`Pilot.lean` proves

```
arity9_weight44_impossible:
  as.length = 9 → Reader (λs. s as) → weight (λs. s as) = 44 → False.
```

This is a complete subchunk. It assumes neither beta-normality, one j, a j
depth, nor U2: all its operands may contain source redexes. It says nothing
about the other weights or arities.

The proof chain is:

- `terms_complete`: the exact-price generator contains every scoped literal
  term at positive source depth, including every allowed variable index;
- `forests_complete`: all exact-price operand lists are generated;
- `source_price`: `w(λs. s as) = 4 + 2*length(as) + argsWeight(1,as)`;
- therefore arity nine at weight 44 has operand budget exactly 22;
- `(forests 9 22).length = 873`, reduced by `decide +kernel`;
- all 873 fail the zero law, checked by `decide +kernel`;
- the normalizer's reductions are proved to be `Betas`, and confluence plus
  normal-form uniqueness refutes `Reader`. Fuel exhaustion returns failure
  of the checker to certify, never a refutation.

No Python search result, `native_decide`, or new axiom is used in this proof.
The printed dependencies of the pilot conclusion are only `propext` and
`Quot.sound`; the foundation conclusions additionally use `Classical.choice`
where existing head/normal-form infrastructure does. None uses `sorryAx`.

| File/check | Wall seconds | Sampled peak RSS, decimal GB | Result |
|---|---:|---:|---|
| `Foundations.lean`, final | 1.011 | 0.463 | All foundation lemmas and sharp positive control pass |
| `Pilot.lean` | 9.006 | 1.334 | All 873 sources refuted, complete theorem passes |
| `Count23.lean` | 6.207 | 1.524 | Counts 2,781 arity-nine weight-45 sources only |
| Weight-45 count plus same refutation checker | 15.111 | 1.999 at guard | Killed by RSS watchdog; no theorem obtained |

The failed version is retained as `row23_memory_experiment.lean.txt`, not an
active Lean file. All three delivered `.lean` files pass individually within
the requested two-minute/two-GB limits. `Count23.lean` is a standalone
benchmark with the pilot's duplicated namespace: compile separately, not as
an additional import beside `Pilot.lean`.

The wrappers poll the exact child PID every 0.1 seconds, impose CPU and
115-second wall limits, and kill at 1,900 MiB RSS for Lean / 950 MiB for
Python. RSS is sampled process resident memory, not an instrumented maximum
inside the Lean kernel. Wall time includes imports, elaboration and kernel
checking; I did not separate those phases. Logs and `.resource.json` files
are adjacent to each source.

Reproduction, from the repository root:

```
python tmp/round4/leanbn/run_lean.py tmp/round4/leanbn/Foundations.lean
python tmp/round4/leanbn/run_lean.py tmp/round4/leanbn/Pilot.lean
python tmp/round4/leanbn/run_lean.py tmp/round4/leanbn/Count23.lean
```

The wrapper runs from `lean/` with exactly
`LEAN_PATH=/Users/a9lim/Work/blam/lean/.lake/build/lib/lean` and `lean -j2`.

## 4. Full certificate design, size estimates, and next step

**Recommended route: a proof-producing symbolic reduction DAG.** Python may
choose holes, export nodes, and find matching prior states; Lean must establish
all of the following locally:

1. Encode source partial trees with distinct hole IDs, source depth,
   head-position restriction, fixed cost, one-j flag, c flag, and root-arity
   restriction. Prove literal-source completion/refinement coverage.
2. Encode a source hole under d binders as an external function variable
   applied explicitly to all d binders. This avoids trusting a closure
   readback implementation. Export ordinary beta-reduction locations and
   check their contractions against `Term.substDec`.
3. A residual comparison carries its target and a reconstruction context for
   already checked output. A mismatch certificate proves a persistent lambda,
   wrong rigid head, wrong rigid arity, or a mismatch inside a normal target.
   Prove its soundness; a raw Python `fail` bit is not a certificate.
4. A refinement node branches over every legal source constructor and every
   in-scope variable. Omitted branches must have a checked budget, scope,
   normality, or unique-j reason. Use the proved lower bound above.
5. A memo edge names an **earlier proved unsatisfiable** residual problem,
   explicitly transports live hole IDs and their binder arguments, checks
   all metadata, and checks the remaining-budget inequality. Prove that
   orphan filling plus that transport yields an affordable completion of
   the earlier problem. Store an existence-refutation theorem, not the
   false assertion that all literal completions correspond bijectively.
6. A cycle leaf carries a nonempty checked head-reduction segment and its
   untouched stack suffix/low-water condition. Prove that it pumps forever
   and use normal-order head termination for normalizable terms. The seven
   exceptional cut-offs also need formal W1--W5 lemmas, quantified over their
   open captures. Neither a fuel cap nor a Rust verdict can close a leaf.
7. Prove the root coverage from `zero_shape`, one-j depth, and the exact arity
   partition, then compose shard theorems. Add U2 explicitly at the top.

**What has actually been measured for this design.** The lane-local wrapper
imports the unchanged reviewed `narrow3.py` with bytecode writes disabled.
The final instrumented k>=4 run reproduces exactly:

- 32,810 states; 1,567 memo hits; 20,309 failing law calls; 9,965 stored keys;
- no solutions and no unresolved fuel cut-offs;
- 629,248 source AST nodes in aggregate, maximum 21 per source;
- 39,877 needed residuals, 7,702,670 tuple/scalar payload nodes;
- 22,459,553 bytes of serialized residual JSON in aggregate;
- 635,735 metered beta steps across 60,255 comparison attempts;
- 16.030 seconds including the monitor, peak RSS 0.195 GB.

The comparison count exceeds the law-call count by 27: even this nominally
cut-off-free chunk invokes certificate fallback. Zero printed cut-offs does
not remove the cycle-checker proof obligation.

These are **Python instrumentation measurements**, not a Lean DAG check.
`search_metrics.json` records them. No run exceeded 100,000 search states.
The independent arity-count script is a count DP, not a larger term search.

**Size/time estimates, with uncertainty explicit.** The five reported search
chunks total 316,247 states. Assuming the measured k>=4 averages held across
all chunks, an uncompressed residual export would have roughly 216 MB of
JSON-equivalent payload, 74 million tuple/scalar nodes, and six million
metered beta steps. This is a linear planning estimate; the other chunks'
residual complexity, sharing and cycle traces have not been measured here.
Trace locations, targets, and refinement edges add data, while hash-consing
and exporting only postorder proof obligations remove duplication.

| Route | Kernel/time and file assessment |
|---|---|
| Literal layouts plus whole-term normal forms, as in the pilot | Measured 873 sources / 9 s / 1.33 GB; 2,781-source semantic row fails memory. A comparable one-check-per-state expansion would need hundreds of safe shards, exceeding thirty. Literal completions can outnumber narrowing states, so this is already an optimistic comparison. Stop this route for full BN46. |
| Verified narrowing executed entirely by kernel reduction | Would need a complete machine, key and search soundness proof; evaluating the Python algorithm in Lean's native runtime would not suffice. State counts alone do not give a defensible kernel time. The pilot shows that allocation and repeated definitional reduction can dominate even small enumerators. No evidence currently places this route under the file/memory cap. |
| Exported symbolic DAG with local proof checking | Best candidate. A target of 12,000 visited-state equivalents per data shard partitions the five chunks into 9+4+7+5+3 = 28 shards, leaving about two common/assembly files. That is a design target, **not demonstrated feasibility**. It requires sharing, local replay, and substantially lower memory per checked state than the pilot. |

For scheduling the DAG, per-state check times of 1 / 5 / 10 ms would imply
about 5.3 / 26.4 / 52.7 minutes total kernel work, and 12 / 60 / 120 seconds
per 12,000-state shard, before import/elaboration overhead. These are
sensitivity calculations, not measured forecasts. To keep thirty files,
the next prototype should demonstrate around 12,000 covered states in at
most 90 seconds and comfortably below 1.5 GB; otherwise smaller shards plus
imports/assembly will exceed the budget. The available memory above the
0.46-GB foundation baseline is only roughly 85 KB per state at that target.

**Remaining mathematical/formal work:** source-hole encoding and refinement
coverage; the symbolic-residual reconstruction/mismatch lemma; exact memo
transport including canonical renaming; the cycle-pumping checker and W1--W5
special leaves; final partition coverage and exported data. The foundation
file closes the shape, arithmetic, and symbolic needed-occurrence/orphan
lemmas, but not those algorithmic bridges.

**Honest read:** BN46 remains computer-checked globally. This lane supplies
reusable kernel foundations and a genuine kernel-checked small subchunk,
not a replacement proof of the entire Python result. A sub-162 reader with
source redexes remains outside the BN46 statement. The next useful formal
step is a small symbolic residual checker benchmark, especially one with a
real memo edge and a real cycle leaf; generating more literal layouts would
spend the caps without addressing the missing bridge.
