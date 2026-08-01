# Frontier reduction-shape classification

All 2032 terms of `unknowns_v2.txt` classified by the shape of their
normal-order (leftmost-outermost) reduction. Raw table:
`tools/cert/classify.csv`. Scanner: `src/bin/tracescan.rs`.

## Method and its limits

From-scratch normal-order stepper (1-indexed de Bruijn; contract the head
redex; reduce under lambdas), reduction discipline identical to
`tools/cert/loop32_trace.py`. Nodes cache tree size, max free index,
is-normal, and a 128-bit structural hash, which is what makes 20k steps x
2k terms tractable: closed subterms are shared by substitution, normal
subterms are skipped in O(1) by the redex search, and state/head identity
is O(1).

Agreement gates run before the sweep:

- `tracescan --verify-loop32`: loop32 lands in `ratchet-candidate` with
  head `0001011010000110110` = `A = \x. x x (\y. y x)`, arity k=1, milestone
  steps 1;3;7;13;21;31;43;57;73;91;111;133 and cycle gaps exactly 2n+2.
- State size / spine arity / head size at steps 10, 100, 1000 agree
  exactly with the Python reference on loop32 and two other frontier
  terms (`010001101000011000000110011110110`,
  `01000110100001100001010110001011010`).
- The `periodic` detector fires on Omega = `010001101000011010`
  (period 1) — so the zero count below is a real negative, not a dead check.
- Output is deterministic: the 300-term prefix is byte-identical at 6 and
  at 3 threads. (It was not at first — ties in the "best chain" and "most
  frequent head" selections were being broken by Rust's per-process-
  randomised HashMap iteration order, which left the *class* stable but
  the *reported head* varying between runs. All three selections now
  break ties on an explicit total order over the key.)

Budget: 20,000 steps; hard abort at 500,000 tree nodes; 1M-node per-step
allocation cap; 8e9-node per-term allocation meter. The meter is not
binding: at 4e8 exactly 71 terms ran out between steps 8k and 13k, and at
8e9 all 71 complete 20,000 steps and land in `opaque` — so no term in this
table is budget-truncated.

**No term reached a normal form.** `ANOMALY-nf` count = 0, as required: all 2,032 survived 10^7 beta of KN
plus the 2M-cap escalation engine, so any normal form here would have been
a stepper bug.

**Caveat on the cascade.** Classes are assigned first-match-wins in the
order below, and `blowup` sits *after* the structural classes. So a term
that both showed a recurring head and hit the node cap is reported under
the head class, not `blowup`.
In total 994/2032 (48.9%) terms hit the node cap; the
`hit_node_cap` column carries this per row. By class: `ratchet-candidate` 75, `head-recurrent-other` 237, `monotone-growth` 331, `blowup` 351.

## Class definitions (first match wins)

| class | criterion |
|---|---|
| `periodic` | the 128-bit structural hash of the *full state* recurs exactly |
| `ratchet-candidate` | some abstraction head `H` heads >=4 states of one arity `H x1 .. xk` with `x1` strictly growing **and** each `x1` a proper subterm of the next (nested growth) |
| `head-recurrent-other` | some spine-head hash recurs >=4 times, without nested growth |
| `monotone-growth` | >=90% of consecutive state-size deltas positive, no head recurring >=4 times |
| `blowup` | hit the 500k-node cap (or the 1M-node per-step allocation cap) with none of the above |
| `opaque` | 20,000 steps exhausted, none of the above |

## Counts by class

| class | count | share | of which hit node cap |
|---|---:|---:|---:|
| `ratchet-candidate` | 305 | 15.0% | 75 |
| `head-recurrent-other` | 450 | 22.1% | 237 |
| `monotone-growth` | 332 | 16.3% | 331 |
| `blowup` | 351 | 17.3% | 351 |
| `opaque` | 594 | 29.2% | 0 |
| **total** | **2032** | | **994** |

## Counts by term size (bits)

| size | n | `ratchet-candidate` | `head-recurrent-other` | `monotone-growth` | `blowup` | `opaque` |
|---:|---:|---:|---:|---:|---:|---:|
| 32 | 1 | 1 | 0 | 0 | 0 | 0 |
| 33 | 2 | 0 | 0 | 0 | 1 | 1 |
| 34 | 10 | 0 | 2 | 5 | 0 | 3 |
| 35 | 23 | 3 | 6 | 3 | 4 | 7 |
| 36 | 44 | 7 | 16 | 7 | 4 | 10 |
| 37 | 94 | 16 | 17 | 5 | 17 | 39 |
| 38 | 223 | 50 | 33 | 52 | 32 | 56 |
| 39 | 498 | 88 | 95 | 63 | 99 | 153 |
| 40 | 1137 | 140 | 281 | 197 | 194 | 325 |

## Ratchet families

The 305 `ratchet-candidate` terms are not 305 separate
discoveries. Grouping by the bit-encoding of the milestone head `H`:

| head bits (truncated) | terms | arity k values | typical |arg| step |
|---|---:|---|---|
| `0001011010000110110` | 45 | 1,2,3,4,5 | +3 (45) |
| `00010101000001110011011001000001110011011000...` | 15 | 1,2,3,5,6,10 | +32 (15) |
| `00011010` | 13 | 1 | +18 (2), +6 (2), +20 (2) |
| `00010101000001110010110101000000111001011010...` | 6 | 1,2 | +20 (3), +60 (2), +30 (1) |
| `00010101000001110010111010100000011100101110...` | 6 | 1 | +33 (2), +40 (1), +55 (1) |
| `00010110011000110000110110` | 4 | 1,4,5,6 | +3 (4) |
| `0000010101101000111010` | 4 | 2,3,4 | +1 (4) |
| `00010101000001110010110101100000011100101101...` | 4 | 1 | +33 (2), +40 (1), +45 (1) |
| `00010101000001110010110110100000011100101101...` | 4 | 1 | +33 (2), +40 (1), +45 (1) |
| `00010110000000010110000000010110000000010110...` | 3 | 1,2 | +7 (3) |

### The loop32 head `A` reaches 45 terms, not 1

45 frontier terms — sizes 32..40 bits — ratchet on the *identical* head
`0001011010000110110` = `A = \x. x x (\y. y x)`, with milestone argument size
stepping by exactly +3 every cycle (`|W[Z]| - |Z|` for `W[Z] = \y. y Z`).
Their cycle-gap sequences:

| first 6 cycle gaps | terms | closed form |
|---|---:|---|
| 2, 4, 6, 8, 10, 12 | 34 | `2n+2` |
| 3, 5, 7, 9, 11, 13 | 10 | `2n+3` |
| 4, 6, 8, 10, 12, 14 | 1 | `2n+4` |

Every one is arithmetic with common difference 2 — the loop32 signature
(cycle n consumes the whole depth-n tower). Only the additive offset moves,
which is the INIT lead-in differing per term, not a different loop.

That is one `(A, W, C0)` certificate triple plus a per-term INIT check.

### The `\x. x x` head: 13 terms, and some grow *geometrically*

A second family ratchets on the bare self-application head
`00011010` = `\x. x x`. The nested-growth argument sizes are not
all arithmetic:

| term | k | chain | milestone |arg| |
|---|---:|---:|---|
| `010001101000010001101001011000001010` | 1 | 12 | 13, 31, 67, 139, 283, 571, 1147, 2299 |
| `0100011000011100101100000101000011010` | 1 | 12 | 13, 31, 67, 139, 283, 571, 1147, 2299 |
| `01000110100001000110100001100110001110` | 1 | 10 | 13, 19, 55, 163, 487, 1459, 4375, 13123 |
| `01000110100001000110100101100000001010` | 1 | 12 | 14, 34, 74, 154, 314, 634, 1274, 2554 |
| `01000110100001000110100101100110001010` | 1 | 5 | 14, 47, 146, 443, 1334 |
| `010001100001110000110011000111000011010` | 1 | 10 | 13, 19, 55, 163, 487, 1459, 4375, 13123 |
| `010001100001110010110000000101000011010` | 1 | 12 | 14, 34, 74, 154, 314, 634, 1274, 2554 |
| `010001100001110010110011000101000011010` | 1 | 5 | 14, 47, 146, 443, 1334 |
| `0100011000011100101100011100011000011010` | 1 | 12 | 16, 40, 88, 184, 376, 760, 1528, 3064 |
| `0100011001100000011110011000111000011010` | 1 | 15 | 16, 29, 56, 111, 222, 445, 892, 1787 |

Sequences like 13, 31, 67, 139, 283, 571 (`x -> 2x+5`) and
13, 19, 55, 163, 487, 1459 (`x -> 3x-2`) are wrappers `W` that
*duplicate* `Z`. SPEC.md section 3 already notes the glue proof
"nowhere needs W linear in Z", so these are in scope for the v1
checker — but they are the reason the discovery step must
anti-unify rather than assume a linear tower.

## Why `opaque` is opaque, and how big that family really is

All 594 `opaque` terms spend >90% of their observed
states with spine arity **k=0** — the state is a bare abstraction and
the whole reduction is happening *under a leading lambda*. Both
detectors used here are structurally blind there: the spine head is the
entire state, so head-recurrence degenerates to state-recurrence, and
state recurrence cannot hold while the term is growing.

All 594 fit a linear size envelope, yet
`pos_delta_frac` has median 0.168 (quartiles 0.010 / 0.500): the trace is a sawtooth
— one large expanding step then a long run of small decrements — so a
naive monotone-size argument does not apply either.

The k=0 shape is not confined to `opaque`. Across the whole frontier
**1320 terms (65.0%)** have k0_frac > 0.9:

| class | k0_frac > 0.9 | of class |
|---|---:|---:|
| `head-recurrent-other` | 94 | 450 |
| `monotone-growth` | 308 | 332 |
| `blowup` | 324 | 351 |
| `opaque` | 594 | 594 |

Caveat: for `blowup` rows this is measured over few states (they abort
in tens of steps), so it is weaker evidence there than in `opaque`,
where it is measured over all 20,000.

## A third axis: spine growth, not argument growth

180 terms reach a spine arity of 100 or more (max observed:
8228). By class: `ratchet-candidate` 8, `head-recurrent-other` 172.

That is 172 of the 450
`head-recurrent-other` terms, and it explains most of that class. The
state is `H t1 t2 ... tk` with `H` recurring exactly and *k itself*
climbing — arguments are being pushed onto the spine faster than they
are consumed. The nested-growth test looks at `t1` and sees no
growth, so these fall through to `head-recurrent-other`, but they are
as structured as the ratchets: a recurring head with a monotone
unbounded parameter. They are a ratchet along a different axis.

| term | class | head recurs | max spine arity | steps | notes |
|---|---|---:|---:|---:|---|
| `010001101000011001100000011001011101010` | `ratchet-candidate` | 10 | 8228 | 20000 |  |
| `0100010110101000000101010110100011101010` | `head-recurrent-other` | 6667 | 6671 | 20000 | argsz96->96/statesz1325->1325 |
| `0100010110101000000101011001110100010110` | `head-recurrent-other` | 889 | 2197 | 1815 | argsz12->12/statesz70->73 |
| `010001101000010110001001100001011101010` | `head-recurrent-other` | 2474 | 2149 | 6929 | argsz10->2/statesz4089->5015 |
| `0100011010000101100011000010101110101010` | `head-recurrent-other` | 89 | 1978 | 3997 | argsz15->22/statesz52->59 |
| `0100010110101000000101011101001110100010` | `head-recurrent-other` | 893 | 1744 | 1786 | argsz129->129/statesz27693->27693 |
| `0100011001100000010110011101011000011010` | `head-recurrent-other` | 1093 | 1623 | 2221 | argsz114->114/statesz19529->19529 |
| `0100011010010001101000000101100111010110` | `head-recurrent-other` | 1093 | 1623 | 2220 | argsz9->9/statesz19779->19779 |

A v1-style certificate cannot express this: its state shape is
`A W^n[C0]`, arity fixed at 1. The obligation would instead read
`H t1..tk ->h+ H t1'..tk' u` for all closed t, i.e. a lemma whose
conclusion has one more argument than its premise. That is a small,
well-defined extension — and on these counts it is worth more than
widening the ratchet.

## Exemplars

Excerpt lines are `step / state size in nodes / spine arity k / spine head
kind / head size / spine argument sizes` — structure only, no terms.

### `ratchet-candidate` (305 terms)

**`01000110001100001011010000110110`** (32 bits)  **<- loop32**
- nested chain 64, arity k=1, head seen 141x
- head `0001011010000110110`
- milestone steps 1;3;7;13;21;31;43;57;73;91;111;133
- milestone |arg| 10;13;16;19;22;25;28;31;34;37;40;43 (gaps [2, 4, 6, 8, 10, 12, 14, 16])
- sizes @0/1k/5k/10k/20k = 15|296|581|632|521, fit linear(r2=0.317), steps_run=20000, max_size=1295, hit_node_cap=0, k0_frac=0.0000, max_k=2

```
step=1 size=20 k=1 head=Lam head_size=9 args=[10]
step=3 size=23 k=1 head=Lam head_size=9 args=[13]
step=7 size=26 k=1 head=Lam head_size=9 args=[16]
step=13 size=29 k=1 head=Lam head_size=9 args=[19]
step=21 size=32 k=1 head=Lam head_size=9 args=[22]
```

**`01000110100001100001011000001111010`** (35 bits)
- nested chain 64, arity k=1, head seen 69x
- head `0001011000000001011000000001011000000001011000000001011000000001011000000001011000000001011000000001...`
- milestone steps 1893;2022;2155;2292;2433;2578;2727;2880;3037;3198;3363;3532
- milestone |arg| 235;242;249;256;263;270;277;284;291;298;305;312 (gaps [129, 133, 137, 141, 145, 149, 153, 157])
- sizes @0/1k/5k/10k/20k = 16|247|646|541|2510, fit linear(r2=0.714), steps_run=20000, max_size=2846, hit_node_cap=0, k0_frac=0.0000, max_k=3

```
step=1893 size=464 k=1 head=Lam head_size=228 args=[235]
step=2022 size=471 k=1 head=Lam head_size=228 args=[242]
step=2155 size=478 k=1 head=Lam head_size=228 args=[249]
step=2292 size=485 k=1 head=Lam head_size=228 args=[256]
step=2433 size=492 k=1 head=Lam head_size=228 args=[263]
```

**`010001101000010110011000110000110110`** (36 bits)
- nested chain 64, arity k=4, head seen 140x
- head `00010110011000110000110110`
- milestone steps 3;5;11;19;29;41;55;71;89;109;131;155
- milestone |arg| 13;16;19;22;25;28;31;34;37;40;43;46 (gaps [2, 6, 8, 10, 12, 14, 16, 18])
- sizes @0/1k/5k/10k/20k = 17|397|682|733|622, fit linear(r2=0.324), steps_run=20000, max_size=1828, hit_node_cap=0, k0_frac=0.0000, max_k=6

```
step=3 size=127 k=4 head=Lam head_size=12 args=[13, 54, 29, 15]
step=5 size=130 k=4 head=Lam head_size=12 args=[16, 54, 29, 15]
step=11 size=133 k=4 head=Lam head_size=12 args=[19, 54, 29, 15]
step=19 size=136 k=4 head=Lam head_size=12 args=[22, 54, 29, 15]
step=29 size=139 k=4 head=Lam head_size=12 args=[25, 54, 29, 15]
```

**`010001011010100000010101101000111010`** (36 bits)
- nested chain 64, arity k=3, head seen 6666x
- head `0000010101101000111010`
- milestone steps 3;6;9;12;15;18;21;24;27;30;33;36
- milestone |arg| 10;11;12;13;14;15;16;17;18;19;20;21 (gaps [3, 3, 3, 3, 3, 3, 3, 3])
- sizes @0/1k/5k/10k/20k = 17|373|1723|3373|6723, fit linear(r2=1.000), steps_run=20000, max_size=6723, hit_node_cap=0, k0_frac=0.0000, max_k=4

```
step=3 size=44 k=3 head=Lam head_size=10 args=[10, 11, 10]
step=6 size=45 k=3 head=Lam head_size=10 args=[11, 11, 10]
step=9 size=46 k=3 head=Lam head_size=10 args=[12, 11, 10]
step=12 size=47 k=3 head=Lam head_size=10 args=[13, 11, 10]
step=15 size=48 k=3 head=Lam head_size=10 args=[14, 11, 10]
```

**`0100011001101000011000000101101101110`** (37 bits)
- nested chain 64, arity k=3, head seen 133x
- head `0000010110110000001011011000000101101100000010110110000001011011000000101101100000010110110000110000...`
- milestone steps 228;264;295;334;369;412;451;498;541;592;639;694
- milestone |arg| 100;112;118;124;130;136;142;148;154;160;166;172 (gaps [36, 31, 39, 35, 43, 39, 47, 43])
- sizes @0/1k/5k/10k/20k = 17|364|1084|1309|1444, fit linear(r2=0.736), steps_run=20000, max_size=2161, hit_node_cap=0, k0_frac=0.0000, max_k=3

```
step=228 size=181 k=3 head=Lam head_size=52 args=[100, 10, 16]
step=264 size=277 k=3 head=Lam head_size=52 args=[112, 94, 16]
step=295 size=295 k=3 head=Lam head_size=52 args=[118, 106, 16]
step=334 size=295 k=3 head=Lam head_size=52 args=[124, 100, 16]
step=369 size=313 k=3 head=Lam head_size=52 args=[130, 112, 16]
```

**`0100011010000101100000011100111101010`** (37 bits)
- nested chain 64, arity k=1, head seen 3999x
- head `0001010001011000000111001111010100000011100100010110000001110011110101010010000011100100010110000001...`
- milestone steps 6;11;16;21;26;31;36;41;46;51;56;61
- milestone |arg| 12;31;50;69;88;107;126;145;164;183;202;221 (gaps [5, 5, 5, 5, 5, 5, 5, 5])
- sizes @0/1k/5k/10k/20k = 17|3850|19050|38050|76050, fit linear(r2=1.000), steps_run=20000, max_size=76056, hit_node_cap=0, k0_frac=0.0000, max_k=3

```
step=6 size=66 k=1 head=Lam head_size=53 args=[12]
step=11 size=85 k=1 head=Lam head_size=53 args=[31]
step=16 size=104 k=1 head=Lam head_size=53 args=[50]
step=21 size=123 k=1 head=Lam head_size=53 args=[69]
step=26 size=142 k=1 head=Lam head_size=53 args=[88]
```

**`0100010110101000000101011011000111010`** (37 bits)
- nested chain 64, arity k=4, head seen 6666x
- head `0000000101011011000111010`
- milestone steps 5;8;11;14;17;20;23;26;29;32;35;38
- milestone |arg| 10;11;12;13;14;15;16;17;18;19;20;21 (gaps [3, 3, 3, 3, 3, 3, 3, 3])
- sizes @0/1k/5k/10k/20k = 17|714|3387|6714|13387, fit linear(r2=0.802), steps_run=20000, max_size=13387, hit_node_cap=0, k0_frac=0.0000, max_k=4

```
step=5 size=57 k=4 head=Lam head_size=11 args=[10, 11, 11, 10]
step=8 size=59 k=4 head=Lam head_size=11 args=[11, 12, 11, 10]
step=11 size=61 k=4 head=Lam head_size=11 args=[12, 13, 11, 10]
step=14 size=63 k=4 head=Lam head_size=11 args=[13, 14, 11, 10]
step=17 size=65 k=4 head=Lam head_size=11 args=[14, 15, 11, 10]
```

**`01000101011001101010100000011100110110`** (38 bits)
- nested chain 64, arity k=1, head seen 3333x
- head `0001010100000111001101100100000111001101100000011100110110000001110011011001100101000001110011011001...`
- milestone steps 6;12;18;24;30;36;42;48;54;60;66;72
- milestone |arg| 7;39;71;103;135;167;199;231;263;295;327;359 (gaps [6, 6, 6, 6, 6, 6, 6, 6])
- sizes @0/1k/5k/10k/20k = 18|5362|26706|53362|106706, fit linear(r2=1.000), steps_run=20000, max_size=106706, hit_node_cap=0, k0_frac=0.0000, max_k=3

```
step=6 size=74 k=1 head=Lam head_size=66 args=[7]
step=12 size=106 k=1 head=Lam head_size=66 args=[39]
step=18 size=138 k=1 head=Lam head_size=66 args=[71]
step=24 size=170 k=1 head=Lam head_size=66 args=[103]
step=30 size=202 k=1 head=Lam head_size=66 args=[135]
```


### `head-recurrent-other` (450 terms)

**`0100010101101010100000011100110110`** (34 bits)
- head recurs 4x, arity k=2, longest nested chain 1 (< 4)
- first->last: argsz15->7/statesz31->39
- sizes @0/1k/5k/10k/20k = 16|5354|26690|53354|106690, fit linear(r2=1.000), steps_run=20000, max_size=106693, hit_node_cap=0, k0_frac=0.9996, max_k=3

```
step=0 size=16 k=1 head=Lam head_size=8 args=[7]
step=3 size=31 k=2 head=Lam head_size=7 args=[15, 7]
step=4 size=42 k=1 head=Lam head_size=34 args=[7]
step=15000 size=80010 k=0 head=Lam head_size=80010 args=[]
step=20000 size=106690 k=0 head=Lam head_size=106690 args=[]
```

**`0100010110101000000101110100111010`** (34 bits)
- head recurs 1067x, arity k=2, longest nested chain 2 (< 4)
- first->last: argsz9->19/statesz29->59
- sizes @0/1k/5k/10k/20k = 16|160324|0|0|0, fit linear(r2=0.972), steps_run=2135, max_size=500009, hit_node_cap=1, k0_frac=0.0000, max_k=1022

```
step=1 size=29 k=2 head=Lam head_size=9 args=[9, 9]
step=2 size=34 k=1 head=Lam head_size=24 args=[9]
step=3 size=39 k=2 head=Lam head_size=9 args=[9, 19]
step=4 size=44 k=1 head=Lam head_size=24 args=[19]
step=5 size=59 k=2 head=Lam head_size=9 args=[19, 29]
```

**`01000110011000000110011101000011010`** (35 bits)
- head recurs 1728x, arity k=2, longest nested chain 3 (< 4)
- first->last: argsz7->20/statesz28->70
- sizes @0/1k/5k/10k/20k = 17|77094|0|0|0, fit linear(r2=0.971), steps_run=3500, max_size=500070, hit_node_cap=1, k0_frac=0.0000, max_k=844

```
step=3 size=28 k=2 head=Lam head_size=7 args=[7, 12]
step=4 size=25 k=1 head=Lam head_size=12 args=[12]
step=6 size=36 k=2 head=Lam head_size=7 args=[7, 20]
step=8 size=49 k=2 head=Lam head_size=7 args=[12, 28]
step=10 size=70 k=2 head=Lam head_size=7 args=[20, 41]
```

**`01000110100001011000000110011101010`** (35 bits)
- head recurs 2743x, arity k=60, longest nested chain 3 (< 4)
- first->last: argsz7->68/statesz7172->7440
- sizes @0/1k/5k/10k/20k = 17|38212|427975|0|0, fit linear(r2=0.972), steps_run=5554, max_size=500204, hit_node_cap=1, k0_frac=0.0000, max_k=1077

```
step=324 size=7172 k=60 head=Lam head_size=7 args=[7, 7, 68, 150, 158, 166]
step=326 size=7172 k=59 head=Lam head_size=7 args=[15, 68, 150, 158, 166, 174]
step=329 size=7230 k=58 head=Lam head_size=65 args=[84, 150, 158, 166, 174, 182]
step=331 size=7307 k=59 head=Lam head_size=12 args=[68, 145, 150, 158, 166, 174]
step=334 size=7440 k=60 head=Lam head_size=7 args=[68, 137, 145, 150, 158, 166]
```

**`01000110100001011000100001100111010`** (35 bits)
- head recurs 3403x, arity k=58, longest nested chain 3 (< 4)
- first->last: argsz89->97/statesz9378->9758
- sizes @0/1k/5k/10k/20k = 17|33801|370999|0|0, fit linear(r2=0.973), steps_run=6069, max_size=500020, hit_node_cap=1, k0_frac=0.0000, max_k=862

```
step=397 size=9378 k=58 head=Lam head_size=2 args=[89, 2, 97, 190, 198, 206]
step=406 size=9354 k=58 head=Lam head_size=2 args=[65, 2, 97, 190, 198, 206]
step=416 size=9327 k=57 head=Lam head_size=41 args=[2, 97, 190, 198, 206, 214]
step=426 size=9301 k=57 head=Lam head_size=2 args=[15, 97, 190, 198, 206, 214]
step=436 size=9758 k=58 head=Lam head_size=2 args=[97, 185, 286, 190, 198, 206]
```

**`01000110100001100001011000100111010`** (35 bits)
- head recurs 12751x, arity k=48, longest nested chain 1 (< 4)
- first->last: argsz71->10/statesz2324->2263
- sizes @0/1k/5k/10k/20k = 17|4431|21329|41895|83727, fit linear(r2=1.000), steps_run=20000, max_size=83769, hit_node_cap=0, k0_frac=0.0000, max_k=679

```
step=488 size=2324 k=48 head=Lam head_size=2 args=[71, 121, 2, 132, 2, 140]
step=493 size=2311 k=49 head=Lam head_size=2 args=[2, 55, 121, 2, 132, 2]
step=499 size=2295 k=49 head=Lam head_size=2 args=[2, 39, 121, 2, 132, 2]
step=505 size=2279 k=49 head=Lam head_size=2 args=[2, 23, 121, 2, 132, 2]
step=511 size=2263 k=48 head=Lam head_size=2 args=[10, 121, 2, 132, 2, 140]
```

**`01000110100001100110000001100111010`** (35 bits)
- head recurs 1805x, arity k=68, longest nested chain 3 (< 4)
- first->last: argsz7->108/statesz12930->13358
- sizes @0/1k/5k/10k/20k = 17|69192|0|0|0, fit linear(r2=0.967), steps_run=3654, max_size=500310, hit_node_cap=1, k0_frac=0.0000, max_k=844

```
step=335 size=12930 k=68 head=Lam head_size=7 args=[7, 7, 108, 233, 238, 246]
step=337 size=12930 k=67 head=Lam head_size=7 args=[15, 108, 233, 238, 246, 254]
step=340 size=13028 k=66 head=Lam head_size=105 args=[124, 233, 238, 246, 254, 262]
step=342 size=13145 k=67 head=Lam head_size=12 args=[108, 225, 233, 238, 246, 254]
step=345 size=13358 k=68 head=Lam head_size=7 args=[108, 217, 225, 233, 238, 246]
```

**`01000110100100011010000001100111010`** (35 bits)
- head recurs 1728x, arity k=2, longest nested chain 3 (< 4)
- first->last: argsz7->20/statesz28->70
- sizes @0/1k/5k/10k/20k = 17|77286|0|0|0, fit linear(r2=0.971), steps_run=3499, max_size=500070, hit_node_cap=1, k0_frac=0.0000, max_k=844

```
step=2 size=28 k=2 head=Lam head_size=7 args=[7, 12]
step=3 size=25 k=1 head=Lam head_size=12 args=[12]
step=5 size=36 k=2 head=Lam head_size=7 args=[7, 20]
step=7 size=49 k=2 head=Lam head_size=7 args=[12, 28]
step=9 size=70 k=2 head=Lam head_size=7 args=[20, 41]
```


### `monotone-growth` (332 terms)

**`0100010110101000000111001011010110`** (34 bits)
- sizes @0/1k/5k/10k/20k = 16|0|0|0|0, fit n/a, steps_run=56, max_size=524288, hit_node_cap=1, k0_frac=0.9286, max_k=2

```
step=0 size=16 k=1 head=Lam head_size=6 args=[9]
step=14 size=266 k=0 head=Lam head_size=266 args=[]
step=28 size=4096 k=0 head=Lam head_size=4096 args=[]
step=42 size=32778 k=0 head=Lam head_size=32778 args=[]
NODE CAP at step 56 size=524288
```

**`000100010110101000000101110100111010`** (36 bits)
- sizes @0/1k/5k/10k/20k = 17|160325|0|0|0, fit linear(r2=0.972), steps_run=2135, max_size=500010, hit_node_cap=1, k0_frac=1.0000, max_k=0

```
step=0 size=17 k=0 head=Lam head_size=17 args=[]
step=533 size=63090 k=0 head=Lam head_size=63090 args=[]
step=1067 size=176860 k=0 head=Lam head_size=176860 args=[]
step=1601 size=325530 k=0 head=Lam head_size=325530 args=[]
NODE CAP at step 2135 size=500010
```

**`000100010110101000000111001011010110`** (36 bits)
- sizes @0/1k/5k/10k/20k = 17|0|0|0|0, fit n/a, steps_run=56, max_size=524289, hit_node_cap=1, k0_frac=1.0000, max_k=0

```
step=0 size=17 k=0 head=Lam head_size=17 args=[]
step=14 size=267 k=0 head=Lam head_size=267 args=[]
step=28 size=4097 k=0 head=Lam head_size=4097 args=[]
step=42 size=32779 k=0 head=Lam head_size=32779 args=[]
NODE CAP at step 56 size=524289
```

**`010001101000000110010111011001100010`** (36 bits)
- sizes @0/1k/5k/10k/20k = 17|376778|0|0|0, fit n/a, steps_run=1154, max_size=501441, hit_node_cap=1, k0_frac=0.9983, max_k=1

```
step=0 size=17 k=1 head=Lam head_size=4 args=[12]
step=288 size=31636 k=0 head=Lam head_size=31636 args=[]
step=577 size=125460 k=0 head=Lam head_size=125460 args=[]
step=865 size=281484 k=0 head=Lam head_size=281484 args=[]
NODE CAP at step 1154 size=501441
```

**`0001000110100001100001011110011101010`** (37 bits)
- sizes @0/1k/5k/10k/20k = 17|215127|0|0|0, fit n/a, steps_run=1763, max_size=500111, hit_node_cap=1, k0_frac=1.0000, max_k=0

```
step=0 size=17 k=0 head=Lam head_size=17 args=[]
step=440 size=63612 k=0 head=Lam head_size=63612 args=[]
step=881 size=178223 k=0 head=Lam head_size=178223 args=[]
step=1322 size=325811 k=0 head=Lam head_size=325811 args=[]
NODE CAP at step 1763 size=500111
```

**`00000100010110101000000101110100111010`** (38 bits)
- sizes @0/1k/5k/10k/20k = 18|160326|0|0|0, fit linear(r2=0.972), steps_run=2135, max_size=500011, hit_node_cap=1, k0_frac=1.0000, max_k=0

```
step=0 size=18 k=0 head=Lam head_size=18 args=[]
step=533 size=63091 k=0 head=Lam head_size=63091 args=[]
step=1067 size=176861 k=0 head=Lam head_size=176861 args=[]
step=1601 size=325531 k=0 head=Lam head_size=325531 args=[]
NODE CAP at step 2135 size=500011
```

**`00000100010110101000000111001011010110`** (38 bits)
- sizes @0/1k/5k/10k/20k = 18|0|0|0|0, fit n/a, steps_run=56, max_size=524290, hit_node_cap=1, k0_frac=1.0000, max_k=0

```
step=0 size=18 k=0 head=Lam head_size=18 args=[]
step=14 size=268 k=0 head=Lam head_size=268 args=[]
step=28 size=4098 k=0 head=Lam head_size=4098 args=[]
step=42 size=32780 k=0 head=Lam head_size=32780 args=[]
NODE CAP at step 56 size=524290
```

**`00010001101000000110010111011001100010`** (38 bits)
- sizes @0/1k/5k/10k/20k = 18|376779|0|0|0, fit n/a, steps_run=1154, max_size=501442, hit_node_cap=1, k0_frac=1.0000, max_k=0

```
step=0 size=18 k=0 head=Lam head_size=18 args=[]
step=288 size=31637 k=0 head=Lam head_size=31637 args=[]
step=577 size=125461 k=0 head=Lam head_size=125461 args=[]
step=865 size=281485 k=0 head=Lam head_size=281485 args=[]
NODE CAP at step 1154 size=501442
```


### `blowup` (351 terms)

**`010001011010100000011100101101010`** (33 bits)
- sizes @0/1k/5k/10k/20k = 16|0|0|0|0, fit n/a, steps_run=48, max_size=1062912, hit_node_cap=1, k0_frac=0.9167, max_k=2

```
step=0 size=16 k=1 head=Lam head_size=6 args=[9]
step=12 size=84 k=0 head=Lam head_size=84 args=[]
step=24 size=1488 k=0 head=Lam head_size=1488 args=[]
step=36 size=39396 k=0 head=Lam head_size=39396 args=[]
NODE CAP at step 48 size=1062912
```

**`00010001011010100000011100101101010`** (35 bits)
- sizes @0/1k/5k/10k/20k = 17|0|0|0|0, fit n/a, steps_run=48, max_size=1062913, hit_node_cap=1, k0_frac=1.0000, max_k=0

```
step=0 size=17 k=0 head=Lam head_size=17 args=[]
step=12 size=85 k=0 head=Lam head_size=85 args=[]
step=24 size=1489 k=0 head=Lam head_size=1489 args=[]
step=36 size=39397 k=0 head=Lam head_size=39397 args=[]
NODE CAP at step 48 size=1062913
```

**`010001101000000111001100101110110110`** (36 bits)
- sizes @0/1k/5k/10k/20k = 16|42014|210074|420014|0, fit linear(r2=1.000), steps_run=11903, max_size=500033, hit_node_cap=1, k0_frac=0.9998, max_k=1

```
step=0 size=16 k=1 head=Lam head_size=4 args=[11]
step=2975 size=125057 k=0 head=Lam head_size=125057 args=[]
step=5951 size=250049 k=0 head=Lam head_size=250049 args=[]
step=8927 size=375041 k=0 head=Lam head_size=375041 args=[]
NODE CAP at step 11903 size=500033
```

**`0000010001011010100000011100101101010`** (37 bits)
- sizes @0/1k/5k/10k/20k = 18|0|0|0|0, fit n/a, steps_run=48, max_size=1062914, hit_node_cap=1, k0_frac=1.0000, max_k=0

```
step=0 size=18 k=0 head=Lam head_size=18 args=[]
step=12 size=86 k=0 head=Lam head_size=86 args=[]
step=24 size=1490 k=0 head=Lam head_size=1490 args=[]
step=36 size=39398 k=0 head=Lam head_size=39398 args=[]
NODE CAP at step 48 size=1062914
```

**`0001000110011000000110011101000011010`** (37 bits)
- sizes @0/1k/5k/10k/20k = 18|77095|0|0|0, fit linear(r2=0.971), steps_run=3500, max_size=500071, hit_node_cap=1, k0_frac=1.0000, max_k=0

```
step=0 size=18 k=0 head=Lam head_size=18 args=[]
step=875 size=63701 k=0 head=Lam head_size=63701 args=[]
step=1750 size=178073 k=0 head=Lam head_size=178073 args=[]
step=2625 size=324688 k=0 head=Lam head_size=324688 args=[]
NODE CAP at step 3500 size=500071
```

**`0001000110100001011000000110011101010`** (37 bits)
- sizes @0/1k/5k/10k/20k = 18|38213|427976|0|0, fit linear(r2=0.972), steps_run=5554, max_size=500205, hit_node_cap=1, k0_frac=1.0000, max_k=0

```
step=0 size=18 k=0 head=Lam head_size=18 args=[]
step=1388 size=63294 k=0 head=Lam head_size=63294 args=[]
step=2777 size=178100 k=0 head=Lam head_size=178100 args=[]
step=4165 size=324896 k=0 head=Lam head_size=324896 args=[]
NODE CAP at step 5554 size=500205
```

**`0001000110100001011000100001100111010`** (37 bits)
- sizes @0/1k/5k/10k/20k = 18|33802|371000|0|0, fit linear(r2=0.973), steps_run=6069, max_size=500021, hit_node_cap=1, k0_frac=1.0000, max_k=0

```
step=0 size=18 k=0 head=Lam head_size=18 args=[]
step=1517 size=63357 k=0 head=Lam head_size=63357 args=[]
step=3034 size=177540 k=0 head=Lam head_size=177540 args=[]
step=4551 size=315527 k=0 head=Lam head_size=315527 args=[]
NODE CAP at step 6069 size=500021
```

**`0001000110100001100110000001100111010`** (37 bits)
- sizes @0/1k/5k/10k/20k = 18|69193|0|0|0, fit linear(r2=0.967), steps_run=3654, max_size=500311, hit_node_cap=1, k0_frac=1.0000, max_k=0

```
step=0 size=18 k=0 head=Lam head_size=18 args=[]
step=913 size=60207 k=0 head=Lam head_size=60207 args=[]
step=1827 size=173128 k=0 head=Lam head_size=173128 args=[]
step=2740 size=322733 k=0 head=Lam head_size=322733 args=[]
NODE CAP at step 3654 size=500311
```


### `opaque` (594 terms)

**`010001101000011000000110011110110`** (33 bits)
- sizes @0/1k/5k/10k/20k = 15|3369|15624|30513|61224, fit linear(r2=1.000), steps_run=20000, max_size=61518, hit_node_cap=0, k0_frac=0.9998, max_k=1

```
step=0 size=15 k=1 head=Lam head_size=4 args=[10]
step=5000 size=15624 k=0 head=Lam head_size=15624 args=[]
step=10000 size=30513 k=0 head=Lam head_size=30513 args=[]
step=15000 size=45849 k=0 head=Lam head_size=45849 args=[]
step=20000 size=61224 k=0 head=Lam head_size=61224 args=[]
```

**`0001000110001100001011010000110110`** (34 bits)
- sizes @0/1k/5k/10k/20k = 16|297|582|633|522, fit linear(r2=0.317), steps_run=20000, max_size=1296, hit_node_cap=0, k0_frac=1.0000, max_k=0

```
step=0 size=16 k=0 head=Lam head_size=16 args=[]
step=5000 size=582 k=0 head=Lam head_size=582 args=[]
step=10000 size=633 k=0 head=Lam head_size=633 args=[]
step=15000 size=417 k=0 head=Lam head_size=417 args=[]
step=20000 size=522 k=0 head=Lam head_size=522 args=[]
```

**`0100010110011010100000011100110110`** (34 bits)
- sizes @0/1k/5k/10k/20k = 16|5354|26698|53354|106698, fit linear(r2=1.000), steps_run=20000, max_size=106701, hit_node_cap=0, k0_frac=0.9997, max_k=2

```
step=0 size=16 k=1 head=Lam head_size=8 args=[7]
step=5000 size=26698 k=0 head=Lam head_size=26698 args=[]
step=10000 size=53354 k=0 head=Lam head_size=53354 args=[]
step=15000 size=80034 k=0 head=Lam head_size=80034 args=[]
step=20000 size=106698 k=0 head=Lam head_size=106698 args=[]
```

**`0100011010000001110000111001111010`** (34 bits)
- sizes @0/1k/5k/10k/20k = 15|2379|10674|20643|41324, fit linear(r2=1.000), steps_run=20000, max_size=41618, hit_node_cap=0, k0_frac=0.9999, max_k=1

```
step=0 size=15 k=1 head=Lam head_size=4 args=[10]
step=5000 size=10674 k=0 head=Lam head_size=10674 args=[]
step=10000 size=20643 k=0 head=Lam head_size=20643 args=[]
step=15000 size=30971 k=0 head=Lam head_size=30971 args=[]
step=20000 size=41324 k=0 head=Lam head_size=41324 args=[]
```

**`00010001101000011000000110011110110`** (35 bits)
- sizes @0/1k/5k/10k/20k = 16|3370|15625|30514|61225, fit linear(r2=1.000), steps_run=20000, max_size=61519, hit_node_cap=0, k0_frac=1.0000, max_k=0

```
step=0 size=16 k=0 head=Lam head_size=16 args=[]
step=5000 size=15625 k=0 head=Lam head_size=15625 args=[]
step=10000 size=30514 k=0 head=Lam head_size=30514 args=[]
step=15000 size=45850 k=0 head=Lam head_size=45850 args=[]
step=20000 size=61225 k=0 head=Lam head_size=61225 args=[]
```

**`01000101101010000001110010110110110`** (35 bits)
- sizes @0/1k/5k/10k/20k = 16|15032|75032|150032|300032, fit linear(r2=1.000), steps_run=20000, max_size=300035, hit_node_cap=0, k0_frac=0.9998, max_k=2

```
step=0 size=16 k=1 head=Lam head_size=6 args=[9]
step=5000 size=75032 k=0 head=Lam head_size=75032 args=[]
step=10000 size=150032 k=0 head=Lam head_size=150032 args=[]
step=15000 size=225032 k=0 head=Lam head_size=225032 args=[]
step=20000 size=300032 k=0 head=Lam head_size=300032 args=[]
```

**`01000101101010000001110011001110110`** (35 bits)
- sizes @0/1k/5k/10k/20k = 16|20412|100412|200412|400412, fit linear(r2=1.000), steps_run=20000, max_size=400415, hit_node_cap=0, k0_frac=0.9998, max_k=2

```
step=0 size=16 k=1 head=Lam head_size=6 args=[9]
step=5000 size=100412 k=0 head=Lam head_size=100412 args=[]
step=10000 size=200412 k=0 head=Lam head_size=200412 args=[]
step=15000 size=300412 k=0 head=Lam head_size=300412 args=[]
step=20000 size=400412 k=0 head=Lam head_size=400412 args=[]
```

**`01000101101010000001110011100110110`** (35 bits)
- sizes @0/1k/5k/10k/20k = 16|16880|80256|159092|316608, fit linear(r2=1.000), steps_run=20000, max_size=316611, hit_node_cap=0, k0_frac=0.9998, max_k=2

```
step=0 size=16 k=1 head=Lam head_size=6 args=[9]
step=5000 size=80256 k=0 head=Lam head_size=80256 args=[]
step=10000 size=159092 k=0 head=Lam head_size=159092 args=[]
step=15000 size=237712 k=0 head=Lam head_size=237712 args=[]
step=20000 size=316608 k=0 head=Lam head_size=316608 args=[]
```


## Certificate reach

Upper bounds on *discovery* from a 20,000-step trace, not proofs — every
candidate still has to pass a checker.

| route | terms | share |
|---|---:|---:|
| (a) exact-recurrence certificate | 0 | 0.0% |
| (b) loop32-style ratchet (nested growth) | 305 | 15.0% |
| (c) neither | 1727 | 85.0% |

**(a) Exact recurrence: zero.** Not one of the 2,032 terms has its full
state hash repeat within 20,000 steps. The detector is live (it fires on
Omega at period 1), so this is a real negative, and it is a clean statement
of what the frontier is: `unknowns_v2.txt` is precisely the residue where
bounded-window recurrence has already failed. Generalising `redloop` from
syntactic self-application to arbitrary exact state recurrence would buy
nothing here — though this bounds only the first 20,000 steps, so it is
evidence about where to spend effort, not a theorem about these terms.

**(b) Ratchet: 305 terms (15.0%)** — but far fewer certificates.
They collapse into 189 distinct milestone heads, and the largest
family (45 terms) is loop32's own `A` with only the INIT offset
varying. The `(A, W, C0)` triple in SPEC.md section 3, checked once and
re-used with per-term INIT, discharges those 45 on its own.
151 of the 305 were still
extending their nested chain at the 64-milestone recording cap, i.e. showed
no sign of stopping inside the budget; the rest have chains of 4-27.
Arity is not always 1: k ranges over 1, 2, 3, 4, 5, 6, 10, 11, 13, 14, 17, 18, ... up to 57, so a checker fixed to `A Z` shape would miss most of them.

**(c) Neither: 1727 terms (85.0%).** Four qualitatively
different obstacles, which overlap — the counts below are not a partition:

- **Near-misses, 53 terms.** `head-recurrent-other` rows whose longest
  nested-growth chain is exactly 3 — one milestone short of the >=4
  threshold. These are the first place to look if the ratchet discovery is
  loosened (longer traces, or anti-unification that tolerates one
  non-nested milestone).
- **Spine growth, 180 terms**
  (max arity >= 100, overwhelmingly `head-recurrent-other`): a recurring
  head with an unboundedly growing *number of arguments*. Structurally as
  tractable as a ratchet, but on an axis the v1 state shape `A W^n[C0]`
  cannot express. See the section above.
- **Under-the-binder growth, 1320 terms** in route (c) whose states
  are bare abstractions (k0_frac > 0.9): no top-level spine exists to run
  a milestone argument on. 0 `ratchet-candidate` rows have this shape,
  which is the point — the ratchet detector *cannot* see them by
  construction. This is the largest single obstacle in the frontier,
  bigger than the whole ratchet family, and it is what SPEC.md section 5's
  v2 lemma system would have to reach. The cheapest first move is not a new
  proof system but a new *view*: strip leading lambdas before decomposing
  the spine, so a state `\x1..\xm. H t1 .. tk` is analysed at its real
  head. That is a change to discovery only, and it would re-run in minutes.
- **Fast blowup, 351 terms** hit the 500k-node cap before
  any structural detector fired, most within a few dozen steps
  (324 of them are also under-the-binder, so this
  bullet and the previous one overlap). A size-growth certificate — prove
  the state size is strictly increasing along a recurring redex pattern —
  is a different proof shape from either (a) or (b) and is the natural
  third lane. Note that `monotone-growth` is *not* that certificate: it is
  a trace observation, and 331 of its
  332 terms hit the node cap rather than showing
  20,000 steps of growth.


## The n=41 residue (2026-08-01, post-sweep)

`classify41.csv`: the 2,381 unresolved 41-bit terms (post-certificate),
same tracer, same coordinates. Counts: opaque 775, blowup 580,
head-recurrent-other 570, ratchet-candidate 231, monotone-growth 225.
The under-binder share keeps growing: 1,632 terms (68.6%) have
k0_frac > 0.9. 367 terms reach spine arity ≥ 100 (the third-axis
population at this size).

## The v3 map, measured (certdiag, 2026-08-01)

The docket said "anti-unifying discovery for duplicating wrappers" —
refuted by instrumentation. `certdiag` (src/bin/certdiag.rs) ran the
full discovery pipeline over all 456 live ratchet-candidates (225 at
4–40 + 231 at 41) and recorded where each dies:

- **387/456 produce a fully plug-consistent candidate triple** that
  the trusted verifier REJECTS (369 OPEN, 18 DESC). Discovery is not
  the gap; the certificate *shapes* are.
- Stage census (family names below): zfirst 131, resource 74,
  drift 63, other 53, passenger 48, badsrc 38, selfapp 26,
  descfail 17, no-nest 6.

The families, by the OPEN abort state and an HTR obligation probe:

- **zfirst, 131 terms** — OPEN aborts at exactly `Z W[Z]` (the HTR
  entry shape), and then HTR's SPREAD obligation aborts MetaHead.
  ~~The wrapper hands control to Z first~~ — WRONG, corrected by
  Codex's round-nine independent trace: SPREAD's abort is an
  *endpoint mismatch*, not a Z-headed abort. On the exemplar the
  wrapper is a **selector**: `W[Z] Q →ₕ Q P[Z] Q` (control to Q,
  carrying a second unary pattern `P`), and then
  `W[Q] P[Z] →ₕ⁺ Z` — the argument *selects* the next tower layer.
  The proposed class is the **SelectorRatchet**
  (BASE/OPEN/FAN/SELECT; rank cost FAN+SELECT, exemplar milestone
  gaps exactly 4n+1). The 131 bucket is an abort signature, NOT a
  class count — the exact four-obligation probe below measures the
  real size. Exemplar (35 bits):
  `01000110100001100001011000001111010`.
- **resource, 74** — the offered candidate's OPEN blows the symbolic
  budget (37 TooBig, 37 Budget at 2000 steps / 100k nodes): either
  giant cycles or wrong-family candidates.
- **drift, 63** — consecutive milestones nest but under a
  *different* wrapper each level (`generalize(x3,x2) ≠
  generalize(x2,x1)`): level-indexed wrappers Wₙ, the indexed-schema
  shape of SPEC §5. Exemplar: `0100011010000110000110011100111000110`.
- **passenger, 48** — OPEN aborts at `Z ⟨…⟩ W[Z]` with an
  interleaved spine argument. ~~Small fixed constants~~ — ALSO
  wrong (Codex round nine): on the exemplar the "constant" is
  `Z P[Z]`, metavariable-bearing and consumed by the tower head —
  it *controls* the descent, so folding passengers into HTR would
  hide a theorem union inside one record. Proposed class:
  **PassengerDiagonalRatchet** (SEED/OPEN/UNWRAP/DROP; diagonal
  descent `Xₘ₊₁ Xₘ₊₁ →⁺ Xₘ Xₘ`, exemplar core-cycle gaps 2n+4
  after an exceptional base cycle). Same caveat: probe before
  counting. Exemplar: `010001101000010110011000110000110110`.
- **selfapp, 26** — OPEN ends at bare `Z Z`: the cycle mints no
  wrapper at OPEN's end (growth lives elsewhere).
  Exemplar: `010001101000010001101001011000001010`.
- **badsrc, 38** — an OPEN source state is an abstraction: the chain
  cannot lift through a left spine as-is.
  Exemplar: `010001011010100000010101101000111010`.
- **descfail, 17 / no-nest, 6 / other, 53** — DESC-stage aborts,
  non-nesting windows, and mixed abort spines (`Z s8 Z`, …).

Raw per-term rows: certdiag CSV (rerun in ~2 min:
`certdiag <terms> --threads 8`); the exemplars above are the
smallest members of each family.
