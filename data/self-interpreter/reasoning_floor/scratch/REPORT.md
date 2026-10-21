# Scratch lane: a 220-bit interpreter derived independently

The smallest interpreter found here is **220 bits**, in `best.lam` and
`best.blc`. It is byte-identical to `a7_shared_unary_update.lam` / `.blc`.
The supplied battery reports `220 bits ok=667 skip=1 fail=0`; the supplied
polishing script reports `smallest 220` with its two-cut search. This does
not improve on the supplied 165-bit calibration, and it is not a claim of
global minimality.

No existing interpreter was read or intentionally reconstructed. Only the
lane's own files were read under `tmp/overnight/`; the separately authorized
`self/polish.py` was executed without reading its source. No files under the
excluded documentation/data directories or reference `.lam` files were read.
All writes made by this lane are in this directory.

## Jobs and candidate representations

The initial design inventory was:

1. Destructure a Scott input cell to obtain its boolean and exact tail.
2. Dispatch `00`, `01`, and the initial `1`.
3. Consume the rest of a unary variable index through its terminating zero.
4. Turn that index into a lexical lookup operation.
5. Extend a lexical environment when constructing an abstraction.
6. Construct an application without evaluating the represented application.
7. Recur on the finite source syntax without demanding a source normal form.
8. Return the untouched input suffix with the represented term.
9. Supply the contract's extra unused outer binder.

Architectures A, B, and C were each constructed and battery-tested before
optimizing any one of them. D and E were subsequent attempts to remove whole
operations rather than just adjust binding placement.

### A. CPS parser producing functions of environments

The parser returns a semantic function `f : environment -> source value`,
together with the remaining stream. Environments are Scott pairs. A variable
compiles to a projection; abstraction extends the environment; application
combines two semantic functions pointwise.

The key representation saving is at the root: for a closed source term,
`f =β λenvironment. M`. Thus the environment argument itself supplies the
required `λz`; neither an initial environment nor a final wrapper is needed.
The first implementation was 345 bits. This architecture ultimately produced
the 220-bit candidate.

### B. Parse a Church-fold syntax tree, then interpret it

The first stage returns a tree and its exact remainder. Its constructors are
encoded as a fold over lambda/application/variable handlers. A second stage
folds that tree into the semantic functions from A. Unary selectors are leaf
payloads.

This cleanly separates syntax consumption from evaluation and passed at
507 bits. Its overhead shows exactly what A's fusion eliminates: constructor
packaging, handler plumbing, and a second traversal. This was a genuinely
separate implemented pipeline, not merely a renamed A continuation.

### C. Direct environment evaluator returning pairs

This parser takes an actual environment and returns `(value, remainder)`.
For abstraction it constructs the value

```
λx. first (parse (cons x environment) body_stream)
```

and obtains the remainder from a separate parse whose value is discarded.
The latter parse never needs to evaluate environment entries: variable
lookups remain in the discarded value component. Application likewise puts
the source application inside a lazy pair component.

This removes semantic compilation functions but duplicates body parsing
when abstraction is observed. It passed at 488 bits. Pair projections,
explicit environment threading, and lifting abstraction through a pair cost
more than the compiler representation saves.

### D. The grammar and environment are bit-reading tries

Define a node by

```
Node zero one stream = stream (λbit. bit zero one).
```

It reads one bit, chooses a child, and gives that child the exact tail. A
grammar state is `Node (Node lambda_branch application_branch) environment`.
An environment entry holding `x` with outer environment `e` is
`Node (Pair x) e`.

Consequently, the environment's own application reads the remaining unary
index and returns the selected value and exact suffix. There is no separate
unary recursion. The same constructor implements grammar dispatch, variable
lookup, and index skipping.

Abstraction uses a local function `f x` returning the body's value/remainder
pair. It returns `Pair (λx. first (f x)) (second (f f))`. The dummy argument
`f` is harmless because extracting a remainder never demands a source value.
This design passed at 299 bits. Its duplicate body parsing and pair-lifting
costs outweigh removal of the unary loop. The fallback let search found a
288-bit rendering, not separately battery-tested.

### E. A single recursive decoder with two states

A boolean distinguishes term parsing from unary parsing. In term state,
the first one changes state without shifting the projection. Further ones
compose a tail projection. A zero either reads the second term tag or emits
the head projection, depending on state.

This eliminates the separate recursive knot but adds state-dependent
branches, state arguments, and their deeper variable references. It passed
at 251 bits and polished to a reported 247. It lost to the two-loop design.

## How A reached 220 bits

The substantive transformations were:

- Both `00` and `01` parse a first child. Select its continuation before one
  common recursive call. Application's continuation schedules the second
  child. This and tail-continuation contraction reduced 345 to 250 bits.
- Select stream consumers before supplying the unread tail. A separate
  shared reader combinator was tried, but its extra binding did not win.
- Move the unary fixed point to its only syntactic use. The earlier distant
  binding made its two references expensive in de Bruijn encoding.
- Bind the main recursive parser once after its knot unfolds; also bind the
  second-tag handler outside the input-reading lambdas. These changes give
  a 231-bit interpreter using literal environment selectors.
- Reuse input bits as selectors. The zero ending a unary index is already
  `K = λx y. x`, the environment head selector. Each continuing one is already
  `F = λx y. y`, the environment tail selector. Both selector constants can
  therefore disappear. This gives 225 bits.
- Factor the unary loop's continuation update. Both branches compose a
  decoded suffix projection with `environment -> environment bit`. On zero,
  the suffix projection is `I`; on one, obtain it recursively. This gives
  220 bits.

The last two steps are the strongest reuse of a data operation found in this
lane: each input bit simultaneously controls recursion and performs the
environment operation required by that recursion.

## Readable equations for the final interpreter

These are defining equations for explanation, not size-free primitives in
the implementation. `best.lam` contains all fixed points, constructors,
continuations, and local bindings explicitly.

```
I              = λx. x
Pair x e       = λh. h x e

U k s = s (λb.
    b (λj. j I) U (λd. k (λe. d (e b))))

P k s = s (λb.
    b (λt. t (λc.
        P (c (λd. k (λe x. d (Pair x e)))
             (λf. P (λg. k (λe. f e (g e)))))))
      (U k))

E = P
```

Both `U` and `P` are realized with the explicit self-application knot
`(λself. self self) body`. The final implementation also binds the repeated
main recursive call and the second-tag handler. No implied optimizer is
needed to obtain the reported size.

## Structural correctness argument

This argument is independent of the finite test battery.

Let `K` and `F` be the given zero and one booleans. Define projections

```
π₁ e     = e K
πₙ₊₁ e   = πₙ (e F).
```

The unary loop has the invariant, for every `n >= 1`, arbitrary `k`, and
arbitrary suffix `N`,

```
U k (1^(n-1) 0 ++ N) =β k πₙ N.
```

For a terminal zero, the bit chooses `λj. j I`; applying the common
continuation to `I` returns `λe. I (e K)`, which beta-reduces to `π₁`.
For a one, the bit chooses the recursive `U`. Induction on the remaining
unary length yields `λe. πₙ (e F) = πₙ₊₁`. The returned suffix is unchanged
at each step. These are beta reductions; no eta equivalence is needed.

For a finite source term define the ordinary environment translation:

```
T[var n] e = πₙ e
T[λM] e    = λx. T[M] (Pair x e)
T[M N] e   = (T[M] e) (T[N] e).
```

Structural induction on the source syntax, using the unary invariant and
the three parser branches, gives

```
P C (code(M) ++ N) =β C (λe. T[M] e) N.
```

The lambda branch parses its body and constructs the environment-extension
function. The application branch parses left then right, threading their
exact remainders, and constructs a source application inside its semantic
function. Neither branch needs to contract that source application.

Under a stack `Pair x₁ (Pair x₂ ... base)`, a variable whose index is within
the stack reduces to its corresponding `xᵢ`. For closed `M`, every variable
is within the syntactically introduced stack; no projection ever reaches
`base`. Expanding interpreter overhead and those projections therefore
gives `λe. M`, up to alpha conversion. Hence

```
E C (code(M) ++ N) =β C (λz. M) N.
```

All inductions are on finite syntax or finite unary length. They do not
assume termination, weak-head normalization, or normalizability of `M`.
The proof uses a finite choice of beta reductions that expands interpreter
overhead while leaving source computation uncontracted. The leading
environment lambda is retained, including for a source abstraction.

The local let bindings in the final 220-bit file only factor subexpressions
of these equations; expanding them gives the displayed parser. In
particular, the required outer binder is not eta-contracted away.

## Results for every constructed candidate

Each battery line below is copied in substance from the corresponding
`*.battery.log`; only its path is omitted. Each file was also submitted to
the supplied `polish.py`. `*` means that script returned `smallest ?`
because let inlining did not terminate. The displayed fallback is the
minimum reported by an explicitly bounded `--no-inline --max-cuts 2` run;
that fallback rendering was not separately battery-tested.

| File | Battery line | Polished bits |
|---|---|---:|
| `a_env_cps.lam` | `345 bits ok=667 skip=1 fail=0` | 321* |
| `b_tree_fold.lam` | `507 bits ok=667 skip=1 fail=0` | 483* |
| `c_direct_pair.lam` | `488 bits ok=667 skip=1 fail=0` | 427* |
| `a2_shared_parse.lam` | `250 bits ok=667 skip=1 fail=0` | 243* |
| `d_trie_environment.lam` | `299 bits ok=667 skip=1 fail=0` | 288* |
| `a3_shared_read.lam` | `249 bits ok=667 skip=1 fail=0` | 246* |
| `a4_local_unary.lam` | `242 bits ok=667 skip=1 fail=0` | 231 |
| `a5_shared_recursion.lam` | `233 bits ok=667 skip=1 fail=0` | 231 |
| `e_unified_decoder.lam` | `251 bits ok=667 skip=1 fail=0` | 247 |
| `a5_polished.lam` | `231 bits ok=667 skip=1 fail=0` | 231 |
| `a6_input_selectors.lam` | `225 bits ok=667 skip=1 fail=0` | 225 |
| `a7_shared_unary_update.lam` | `220 bits ok=667 skip=1 fail=0` | 220 |
| `best.lam` | `220 bits ok=667 skip=1 fail=0` | 220 |

The final 231- and 220-bit renderings were both materialized and independently
passed through the battery and polishing script. The battery's one skipped
case is not counted as a pass; the general non-normalizing-source claim is
supported by the structural argument above, not by that skip.

`a7_shared_unary_update.letopt.log` contains the final optimizer result:

```
input 220 bits; core 231 bits (88 nodes)
smallest rendering over 0..=2 cuts: 220 bits
```

This is an optimum only within the optimizer's specified cut search over
that core. The original calibration and these measurements provide no lower
bound on a different architecture.

## Reproduction and operational limits

From the repository root:

```
python3 tmp/overnight/scratch/derive.py
python3 tmp/overnight/scratch/check.py best.lam
```

`derive.py` constructs the initial architectures and optimization stages from
named ASTs, independently counts their BLC encodings, and writes their source
and bit files. `check.py` invokes the two authorized checkers with 110-second
timeouts and worker limits of two. The final battery runs took approximately
two seconds each; the final direct let search took under a second. No
exhaustive interpreter sweep or long experiment was run.

All external compute invocations used `RAYON_NUM_THREADS=2`; direct letopt
also used `--threads 2`. One early battery/letopt pair briefly overlapped,
so the aggregate two-thread constraint was not strictly maintained at that
point. Subsequent compute runs were serialized.

The supplied polishing wrapper did not surface its early inlining errors;
the direct `*.letopt.log` records do. An additional tool quirk was observed:
with `--report-le 0`, the printed `best` term could remain the input although
the `smallest rendering` statistic was lower. No final artifact was taken
from that contradictory `best` line. The 220-bit candidate was constructed
directly and its normal-threshold optimizer output agrees with it.
