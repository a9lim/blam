# qALC reference machine sketch

**Status: pre-formal.** This document captures the constructive shape of
the reversible abstract machine that `architecture.md` §4.1 requires and
§9 item 1 gates on. It is a design sketch to be formalized and then
attacked — nothing here is a contract yet, and the architecture document
wins wherever they disagree. Provenance and review history live in
`../ledger/2026-08.md`.

## 1. Substrate: environments, not substitution

A substitution step `(λb) a → b[a]` forgets the redex boundary, the
original binder, the occurrence map, and — under weakening — the erased
argument. Inverting it can require essentially the whole redex, and
duplication can make the residue larger than the destination. An explicit
environment/closure machine turns β mostly into reversible rearrangement:

- the body remains immutable code;
- the argument remains an explicit closure;
- binding is a persistent cons cell;
- application context remains a frame;
- lookup irreversibility is exposed at one named transition;
- erasure is exposed exactly where a cell becomes unreachable.

That is the right surface for the local-minimality theorem: each source of
irreversibility is one named transition, not a diffuse property of a
substitution relation. (Environment machines as the standard bridge from
explicit substitutions to Krivine-style execution: Biernacka–Danvy. The
reversible interaction-machine alternative — Danos–Regnier — is a
genuinely different dynamics and stays parked per the architecture.)

## 2. Reference configuration

```text
Cfg {
    program_sector,   // fixed p; common to every branch of one run
    absolute_clock,   // common τ, shifted every transition
    mode,             // Eval | Lookup | Quote | Return | Done
    focus: Closure,
    env_zipper,
    continuation,
    output_zipper,
    residue,
}
```

The inert `(p, τ)` spectator labels are cheap and useful: retaining `p`
separates collisions between different programs (harmless — `M` already
sums programs incoherently), and the explicit `τ` separates configurations
reached at different global stages without distinguishing branches present
at the same stage. Both are common to every branch of one `ψ_τ`, so
neither destroys intended same-time interference — and neither repairs
collisions between branches of one program at one time; the transition
table itself must do that.

## 3. The central residue rule

> For a deterministic target configuration `d`, every predecessor not
> already made orthogonal by a quantum transition requires an orthogonal
> residue label. Such a label may later be popped only when the live
> configuration reconstructs it uniquely.

Reversible push/pop pair:

```text
(c, g)        → (d, g · predecessor_tag(c))
(d', g · tag) → (e, g)     // only when d' itself determines tag
```

Appending tags forever is the probabilistic degeneration
(`architecture.md` §4.5); coherent popping is the economy qALC exists to
measure. "Minimal garbage" is claimed only in the local sense: within this
machine representation, residue must distinguish exactly each classical
predecessor fibre not already orthogonalized by a quantum transition. No
global-minimality claim over arbitrary reversible realizations is made —
that comparison class is unlikely to be canonical and may hide undecidable
semantic equivalence.

## 4. Transition audit (candidate table)

| Transition | Reversible shape | Residue requirement |
|---|---|---|
| Application descent | `Eval(App(f,a), e, K) ↔ Eval(f, e, Arg(a,e)::K)` | Usually none: the argument frame reconstructs the source. |
| β / binder entry | Move the argument closure into a persistent environment cell, enter the body | Potentially none locally, but only if the landing mode/range has a unique inverse; otherwise retain a β landing tag until it can be coherently popped. |
| Environment traversal | Move cells between sides of an environment zipper one at a time | None while the zipper stays live. |
| Variable dereference | `Lookup(i, origin-env, zipper)` enters the selected closure | Must retain the selecting index/origin path (or an equivalent predecessor-fibre label). This is exactly where round 1's KN Var witness bites. |
| Lambda under readback | Push `LamEnd`, add a rigid-level environment cell, extend the output zipper | Normally reversible from frame, cell, and zipper. |
| Neutral spine / readback | Convert argument frames to normalization jobs; build output through a zipper | Preserve constructor/order in the zipper; never stream destructively into an external sink. |
| Binding erasure | Drop an unused closure/environment cell | The erased closure enters residue unless already reconstructible; quantum-dependent erased data cannot be cleanly forgotten. |
| Contraction / duplication | Reuse an immutable closure from multiple occurrence continuations | Environment sharing preferred — it preserves call-by-name re-evaluation without materializing substituted copies. Do **not** memoize: memoization changes generator-duplication semantics. |
| H / T δ | Clean δ fibre `gate ⊗ J` (architecture §7) | `J` may add a common rule tag; nothing may depend on the input or output boolean. |
| Species error | Enter the typed error chain | Retain error kind and offending closure as error garbage; output coherence is irrelevant there. |
| Terminalization | Unique `RunDone(…) → Halt(…, 0)` | Entry injective; all traced spectator state frozen thereafter. |

## 5. Two load-bearing cautions

1. **No allocation identity in the basis.** Fresh heap addresses would
   distinguish otherwise-identical branches forever and silently decohere
   everything. The reference machine needs structural/canonical immutable
   closures and environments; a fast engine may hash-cons them, but
   branch-dependent allocation order must never become semantic identity.
2. **No destructive output sink.** The current KN machine streams
   constructors and pops frames; a reversible reference needs an explicit
   output zipper whose state participates in the inverse transition.

## 6. What formalization must produce

In order, per the architecture's gates:

1. the full transition table over `Cfg`, total on reachable
   configurations;
2. the orthonormal-columns proof (injectivity plus the clean-δ fibre
   orthogonality) on the reachable graph;
3. the local-minimality statement for `residue` in the predecessor-fibre
   sense, with the pop conditions made precise;
4. the invariant-sector lemma instantiated in this machine
   (`RunDone`/`Halt` typing, common-origin entry);
5. the effect-free projection lemma: term-projection of an effect-free run
   follows rigid-atom leftmost reduction modulo the administrative
   transitions, same fate;
6. the HH and H–NOT–H witnesses computed by hand in the formal machine —
   before any code exists.

Then the sketch goes back to the review thread as a formal object, and
only after that does `src/qalc/` get its first line.
