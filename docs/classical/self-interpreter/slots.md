# Parametric slot searches

`blam slots` (lab, `src/cli/slots.rs`) proves that each branch body of the
self-interpreter is the smallest term that works under *every* instantiation
of its frame. It covers the VAR, ABS, and APP slots in both Tromp's 170-bit
interpreter (`var`, `abs`, `app`) and Sean Palmer's 168-bit successor
(`var168`, `abs168`, `app168`). Logs are in `data/self-interpreter/`
(`slotsearch_*.log`). Fragments that only work because of what the frame
variables are at run time belong to the contextual searches of
`interpreter.md`.

## Results

In every slot and both frames the reference body is the unique survivor at
or below its own size. No candidate is left unresolved.

```text
VAR  cont list1 (list1 list1 list1)
ABS  cont (\args arg. exp (\zx zy. zx arg (zy args)))
APP  intL (\exp2. cont (\args. exp args (exp2 args)))
```

**The 170's frames** (VAR under six binders, ABS and APP under eight):

| slot | frame | reference | candidates ≤ reference | survivors | unknown | wall (9 threads) |
|---|---:|---:|---:|---:|---:|---:|
| VAR | 6 | 21 | 2,672 | 1 | 0 | < 0.01 s |
| APP | 8 | 41 | 10,200,572 | 1 | 0 | 0.2 s |
| ABS | 8 | 43 | 1,430,813,728 | 1 | 0 | 32.0 s |

**The 168's frames.** The 168 floats the zero-branch continuation out from
under `\list \bit0 \list1`, so ABS and APP sit under
`[exp bit1 cont intL a]` (frame 5) and VAR under
`[list1 bit0 list next cont intL a]` (frame 7). Every frame reference is
repriced, so the 170's certificates do not transfer and the search runs
again:

| slot | frame | reference | candidates ≤ reference | survivors | unknown | proved divergent | wall |
|---|---:|---:|---:|---:|---:|---:|---:|
| VAR | 7 | 22 | 2,750 | 1 | 0 | 0 | < 0.1 s |
| APP | 5 | 35 | 7,774,880 | 1 | 0 | 34 | 0.1 s |
| ABS | 5 | 40 | 1,071,355,016 | 1 | 0 | 90,001 | 21.6 s |

The bodies are the same terms in both interpreters. Their 8-bit saving
(105 → 97) is frame repricing alone; no shorter body exists in either frame.

## The contract

### Frame

Innermost to outermost, the 170's ABS/APP frame is:

| role | de Bruijn index | BLC variable size |
|---|---:|---:|
| `exp` | 1 | 2 |
| `bit1` | 2 | 3 |
| `list1` | 3 | 4 |
| `bit0` | 4 | 5 |
| `list` | 5 | 6 |
| `cont` | 6 | 7 |
| `intL` | 7 | 8 |
| `a` | 8 | 9 |

VAR sits outside `\bit1 \exp`, so its frame has width 6.

### The universal probe

For a candidate `C` at frame width `f`, build

```text
U(C) = \rest \a \intL \cont \list \bit0 \list1 \bit1 \exp. C rest
```

(seven binders for VAR). After decoding `C`, form `App(C, Var(f+1))` and wrap
it in `f+1` lambdas; `C`'s own indices still address the frame. Normalize
with `Machine::normalize_capped` under explicit β and transition budgets
(plain `normalize` floors transitions at `1 << 22`, and the machine does not
accept open roots), and compare the streamed normal form bit for bit with the
golden.

**Soundness.** If `U(C)` and `U(REF)` have the same normal form `N`, then
`U(C) =β N =β U(REF)`. β-equivalence is a congruence preserved by
substitution, so `C` is interchangeable with the reference under every
instantiation of the frame and the tail. Applying to `rest` widens acceptance
from β to βη, which only strengthens a negative result. A pass is a proof of
contextual correctness, not evidence from test markers. Closed Church terms
must never stand in for unrelated frame roles: that scheme produces false
positives.

**Goldens.** Recomputed from the 170-bit `ref/AIT/ait/int.lam` of tromp/AIT
`fd4e9b0` via `tools/blcc.py` and `lc.py`; all three normalize in zero
β-steps:

```text
VAR  45 bits  000000000000000101011111010010110101011111110
ABS  73 bits  0000000000000000000101111111000000111100000010111011100110111101111111110
APP  71 bits  00000000000000000001011111111000011111111000010111101001110101111111110
```

### Enumeration with obligations

Variables that stand rigidly in a golden normal form must occur in any
candidate, because β-reduction cannot introduce a free variable absent from
the source:

| slot | required frame variables |
|---|---|
| VAR | `cont`, `list1` |
| ABS | `exp`, `cont` |
| APP | `exp`, `cont`, `intL` |

Nothing else is pruned. Frame variables absent from a golden are not
forbidden, since a candidate is free to erase them. The masks hold only for
the parametric contract; a context-dependent fragment could, say, rebuild
`exp` by reparsing `list1`.

Pending subterms carry `{ depth, size, must, forbid }`. A variable leaf is
accepted iff its occurrence bit misses `forbid` and covers `must`; a lambda
passes its obligations to the body. An application partitions `must` over
every subset `S`: the left side requires `S` and forbids `must \ S`, the
right side requires `must \ S`. A required variable goes left if it occurs
there, so the partition is unique and nothing is generated twice.

A dense saturating DP, `count(depth, size, must, forbid)`, uses the same
recurrence. It is consulted before every branch, which is load-bearing:
an App node offers `2^|must|` partitions at each of about n/2 size splits and
almost all are empty, so without zero-count pruning the sweep is about 350×
slower (APP at 41 bits: 62.8 s against 0.18 s). Tasks are split by DP weight,
repeatedly expanding the heaviest pending subtree until there are
`threads × 64`; the level-by-level split of `src/blc/enumerate.rs` balances
badly here.

| slot | all open terms over the frame | obligation-pruned | ratio |
|---|---:|---:|---:|
| VAR ≤ 21 | 30,232 | 2,672 | 11× |
| APP ≤ 41 | 8,130,067,699 | 10,200,572 | 797× |
| ABS ≤ 43 | 29,148,078,982 | 1,430,813,728 | 20× |

Regression anchors, asserted by `tests::spec_regression_counts`:

```text
all open, frame 8, size <= 40:   4,299,963,246
all open, frame 8, size <= 42:  15,388,221,349
ABS  exp+cont,      size <= 42:    740,485,972
APP  exp+cont+intL, size <= 40:      5,120,164
```

### Adjudication

A cap never becomes a rejection. Each candidate runs:

1. KN at β 256 / transitions 16,384, aborting at the first bit that disagrees
   with the golden. KN readback emits the normal form in order, so a wrong
   bit proves the normal forms differ whether or not the run would finish.
2. `classical::oracle::no_nf`.
3. KN at β 4,096 / transitions 262,144.
4. `classical::escalation::normal_form` at cap 2,000,000, with its
   `EngineCfg` passed as data.
5. KN at β 2²⁰ / transitions 2²².
6. Otherwise an explicit `UNKNOWN`.

Every candidate that reached step 2 was proved to have no normal form
(93,702 for ABS and 34 for APP in the 170's frames; none for VAR). Rung 5
never fired in any slot or frame.

The early abort uses `Sink::CAN_ABORT` (an associated const, default
`false`) and `Sink::aborted()`. `normalize_inner` polls it once per
transition only when `CAN_ABORT` is set, so monomorphization removes the
check from `SizeSink` and `StringSink` and leaves the census path unchanged.
`OutOfFuel::Aborted` is not a resource verdict; the caller owns the reason.
`Pool::push` is public so a decoded candidate can be spliced into its closing
context without a second decode.

## Validation

- **Reference survives.** Asserted at the start of every run and in
  `tests::reference_slots_are_survivors`.
- **Positive control.** `(\x. x) REF`, β-equal to the reference but a
  different bit string, also passes
  (`tests::beta_variants_of_the_reference_also_pass`).
- **Differential.** On every candidate through 28 bits (ABS/APP) and 21 bits
  (VAR), the ladder's verdict agrees with a plain full normalization without
  early exit (`tests::adjudication_agrees_with_full_normalization`).
- **Obligations against brute force.** Through 17 bits, for frames 5–8 and
  seven masks, the obligation-aware enumerator produces exactly the
  unconstrained enumeration filtered by actual occurrence mask
  (`tests::obligations_match_brute_force`, `tests::dp_matches_enumeration`).
- **Split coverage.** `split_tasks` at targets 1, 7, 64 and 1000 reproduces
  the direct enumeration (`tests::split_covers_exactly`).
- **Source chain.** `int.lam` at `fd4e9b0` compiles through `tools/blcc.py`
  to 170 bits and passes the 10-program battery in
  `tools/self-interpreter/harness.py`. The slots at their positions in that
  term are exactly the strings searched, and splicing the survivors back
  reproduces the same 170 bits.

## Scope

The parametric contract excludes, by construction, any fragment that works
only because `bit1`, `list1`, `a` and `intL` have their particular run-time
values. Dropping the `must` mask to 0 makes the enumerator sweep every
occurrence mask (ABS then has 29.1 billion candidates, about 11 minutes), but
a survivor of that sweep would be a hypothesis, not a proof. The contextual
lane is instead run by `blam selfint ctx`, which splices candidates into the
168 and checks the exact contract (`interpreter.md`).
