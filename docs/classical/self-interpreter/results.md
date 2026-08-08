# Slot search results: VAR, ABS, APP are all exhaustively optimal

Measured on the M5 Max with `RAYON_NUM_THREADS=9`. Implementation:
`blam slots var|abs|app` (`src/cli/slots.rs`, behind the `lab` feature),
following the parametric contract of
`search-spec.md` §1 and the obligation-aware enumerator of §4. Full run logs
are in `data/self-interpreter/`.

## Verdict

| Slot | frame | reference | candidates ≤ ref size | survivors | residual unknowns | wall (9 threads) |
|---|---:|---:|---:|---:|---:|---:|
| VAR | 6 | 21 bits | 2,672 | **1** (= reference) | 0 | <0.01 s |
| APP | 8 | 41 bits | 10,200,572 | **1** (= reference) | 0 | 0.24 s |
| ABS | 8 | 43 bits | 1,430,813,728 | **1** (= reference) | 0 | 32.0 s |

No sub-reference survivor at any size, in any slot. Each reference slot is
the *unique* βη-class representative at its size and nothing smaller works:

```text
VAR  21  cont list1 (list1 list1 list1)
ABS  43  cont (\args arg. exp (\zx zy. zx arg (zy args)))
APP  41  intL (\exp2. cont (\args. exp args (exp2 args)))
```

There is no micro-trick hiding in the branch bodies. Sub-170 has to come
from somewhere else — which, with `design.md` already closing fixpoint
shape, continuation timing, cons-cell variants and binder placement, leaves
the global evaluator/continuation representation as the only open door.

## Method

For a candidate `C` at frame width `f` (8 for ABS/APP, 6 for VAR), build

```text
U(C) = \rest \a \intL \cont \list \bit0 \list1 \bit1 \exp. C rest
```

(the VAR slot sits outside `\bit1` and `\exp`, so `f = 6` and `U` has seven
binders), normalize with `Machine::normalize_capped` under *explicit* β and
transition budgets, and compare the streamed normal form bit-for-bit against
the golden. Equality is a proof of contextual correctness: β-equivalence is a
congruence, so `U(C) =β U(REF)` makes `C` interchangeable under every
instantiation of the frame. Applying to `rest` widens acceptance from β to
βη, which only strengthens a negative result.

Goldens (independently recomputed from `ref/AIT/ait/int.lam` via
`tools/blcc.py` + `lc.py`, and byte-identical to the two published in
`search-spec.md`):

```text
VAR  45 bits  000000000000000101011111010010110101011111110
ABS  73 bits  0000000000000000000101111111000000111100000010111011100110111101111111110
APP  71 bits  00000000000000000001011111111000011111111000010111101001110101111111110
```

All three normalize in **zero** β-steps.

### Enumeration

`Pending { depth, size, must, forbid }` exactly as specced; the App rule
partitions `must` over every subset `S`, forbidding `must \ S` on the left,
which makes the partition unique. Only the §4 hard-required masks are
enforced — `exp+cont` for ABS, `exp+cont+intL` for APP, and `cont+list1` for
VAR (same theorem: those variables stand rigidly in the golden normal form,
and β-reduction cannot invent a free variable). Nothing else is pruned; in
particular the frame variables *absent* from a golden are not forbidden,
since a candidate is free to erase them.

| slot | naive (all open terms over the frame) | obligation-pruned | ratio |
|---|---:|---:|---:|
| VAR ≤21 | 30,232 | 2,672 | 11× |
| APP ≤41 | 8,130,067,699 | 10,200,572 | 797× |
| ABS ≤43 | 29,148,078,982 | 1,430,813,728 | 20× |

Per-size tables are in the logs. Spot values, as regression anchors (all four
`search-spec.md` §4 published counts reproduce exactly, asserted in
`tests::spec_regression_counts`):

```text
all open, frame 8, size <= 40:   4,299,963,246
all open, frame 8, size <= 42:  15,388,221,349
ABS  exp+cont,      size <= 42:    740,485,972
APP  exp+cont+intL, size <= 40:      5,120,164
```

### Adjudication ladder

Never turns a cap into a rejection.

1. KN at β 256 / transitions 16,384 (the spec's recommended first rung).
   Early abort on the first disagreeing bit — sound because KN readback emits
   the normal form in order, so a disagreeing bit proves the normal forms
   differ whether or not the run would have terminated.
2. `classical::oracle::no_nf` — cheap sound divergence proof.
3. KN at β 4,096 / transitions 262,144.
4. `classical::escalation::normal_form` at cap 2,000,000, engine config
   passed in as data (carries the self-feedback certificate).
5. KN at β 2²⁰ / transitions 2²².
6. Otherwise: reported as an honest `UNKNOWN`.

**Every** candidate that reached step 2 was ultimately *proved* to have no
normal form (93,702 for ABS, 34 for APP, 0 for VAR; `esc[3] = 0` in every log
row, i.e. rung 5 was never needed). So the exhaustiveness claim has no
residue: each of the 1.44 billion candidates is either a proven mismatch or a
proven diverger.

## Implemented refinements

1. **Zero-count branch pruning is load-bearing, not an optimization.** The
   spec mentions "use zero counts to skip branches" in passing; without it the
   sweep is ~350× slower (APP size 41 measured at 62.8 s vs 0.18 s). An App
   node offers `2^|must|` partitions at each of ~n/2 size splits and almost
   all are dead — you cannot fit `exp`, `cont` and `intL` into a 2-bit
   subterm — so the enumerator otherwise spends nearly all its life walking
   subtrees that emit nothing. The DP is therefore *dense* (`must`/`forbid`
   only ever range over subsets of the root mask, so the axes are ≤ 8 wide)
   and consulted before every branch, not just at task-split time.

2. **Task split is DP-weighted, not level-by-level.** Repeatedly expand the
   heaviest task (subtree weight = product of the DP counts of its pending
   obligations) until there are `threads × 64` of them. Subtree sizes span
   orders of magnitude at every depth, so the frontier-expansion approach used
   by `blc/enumerate.rs` (plus bit-reversal interleaving) balances badly here.

3. **Ladder shape.** The spec's rung 1 is used verbatim; rungs 2–5 above are
   new. They exist because escalation is where all the time would go, so the
   cheap sound oracle has to run before the expensive machinery.

4. **VAR slot added** as the harness validation target (it is not in the
   spec's slot table). Its `must` mask `cont+list1` is derived by the same
   §4 argument.

## Supporting engine behavior

- `Sink::CAN_ABORT` (associated const, default `false`) and
  `Sink::aborted()`; `normalize_inner` polls it once per transition **only**
  when `CAN_ABORT`, so monomorphization deletes the check for `SizeSink` /
  `StringSink` and the census path is unchanged instruction for instruction.
- New `OutOfFuel::Aborted`. It is *not* a resource verdict — the caller owns
  the reason. No existing match on `OutOfFuel` was exhaustive.
- `Pool::push` (`classical::machine`) made `pub`, so a decoded candidate can
  be spliced into a closing context without a second decode pass.

The final implementation passed `cargo test --release --all-features` (the
harness's own tests are behind the `lab` feature). Census spot-check
`n = 24..36` was bit-identical to the canonical table
on every column — closed, halt, diverge, unknown, escal, max|nf|,
beta_total — meeting the repo's verification bar for engine changes.

## Harness validation

- **VAR canary.** Reproduces the retired `search_var.py` probe's headline numbers: 30,232 naive
  candidates through 21 bits, unique survivor = the reference VAR slot. The
  Python probe reached that answer through closed Church markers (the scheme
  that produced the false positive the spec was written to kill); this run
  reaches it as a parametric proof.
- **Reference survives its own harness** in all three slots — asserted at
  startup of every run and in `tests::reference_slots_are_survivors`.
- **Positive control**: `(\x. x) REF` — β-equal to the reference but a
  different bit string — is also accepted, so the comparison is not
  accidentally matching input bits
  (`tests::beta_variants_of_the_reference_also_pass`).
- **Differential**: on every candidate through 28 bits (ABS/APP) and 21 bits
  (VAR), `adjudicate`'s verdict agrees with a plain `StringSink` full
  normalization with no early exit
  (`tests::adjudication_agrees_with_full_normalization`).
- **Obligation threading vs brute force**: through 17 bits, for frames 6 and
  8 and four must-masks, the obligation-aware enumerator produces exactly the
  set obtained by enumerating unconstrained and filtering on the generated
  term's actual occurrence mask (`tests::obligations_match_brute_force`).
- **Split coverage**: `split_tasks` at targets 1/7/64/1000 reproduces the
  direct enumeration exactly (`tests::split_covers_exactly`).
- **Source chain**: `ref/AIT/ait/int.lam` → `tools/blcc.py` → 170 bits → passes
  the 10-program battery in `harness.py`; the three slots at their syntactic
  positions in that term are exactly the 21/43/41-bit strings searched, and
  re-splicing the survivors reproduces the same 170 bits with the battery
  still green.

## Supporting Python tools

`search_var.py` and `search_abs.py` (the closed-Church-marker probes
the spec was written to kill) are superseded and deleted — git
history holds them. `lc.py`, `db.py` and `harness.py` remain live
(used above for the golden cross-check and source-chain battery),
as does `tools/self-interpreter/search_fix.py` (the knot search of `design.md`).

## What this does not cover

The parametric contract only. A fragment that works *only* because `bit1`,
`list1`, `a` and `intL` have their particular runtime relationships is
excluded by construction — that is `search-spec.md`'s contextual lane (§2),
which cannot support an optimality claim without splicing and exhaustive
small-program differential testing. `blam slots` has the hook for it: drop
the `must` mask to 0 and the enumerator sweeps every occurrence mask (ABS
then costs 29.1B candidates ≈ 11 min at the measured 45M candidates/s, APP
8.1B ≈ 3 min) — but a survivor there is a hypothesis, not a proof.
