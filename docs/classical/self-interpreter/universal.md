# The universal machine

For algorithmic information theory the figure that matters is the universal
machine rather than the self-interpreter:

```text
U (⌜M⌝ ++ N) =β M N        for closed M
```

Tromp's two wirings (`ref/AIT/ait/uni.lam`) are

```text
non-strict:  (\x. x x) F (\x. x x)            = intL dbl
strict:      (\a. a F (\b. b (a a))) (\a. a a) = intL (\z. z Ω)
F = \x. (\intL. B) (x x)
```

where `B` is a parser body `\cont. …` whose only free variable is `intL`, used
twice. Around the 162's body (140 bits, `interpreter.md`) they are **172** and
**184** bits (`data/self-interpreter/machines/uni172.lam`, `uni184.lam`; both
pass the battery, the 184 all seven strictness probes, and `blam golf letopt`
finds no smaller rendering of either); around the 165's body (143 bits) they
are 175 and 187 (`uni175.lam`, `uni187.lam`), and around the 168's (146 bits)
Tromp's 178 and 190. *Strict* means, in BLC.tex's words, that "any attempt to
apply free indices diverges", so the machine forces closed programs; the
strict wiring gets this from an Ω base environment, which the 162's and the
165's readers leave untouched, since they change only how the code is read.
**No machine below 172, and no strict machine below 184, is known.** This
record states what has been searched; the self-interpreter's own record is
`interpreter.md`. Most of the searches below were run around the 168's body,
so their bounds are 178 and 190, and the rest around the 165's; §1 and §2 say
which. None has yet been run around the 162's body.

U's contract leaves the output boundary to the machine: there is no `λz` and
no external `C`. So a protocol that lost for the self-interpreter only at
that boundary could win here, and the self-interpreter's exclusions do not
transfer automatically. In particular the root environment under `dbl` is the
parsed value itself, `dbl v = v v`.

## 1. Wirings around the parser (`blam selfint wiring`)

Every U is `B` plus *wiring*: the fixpoint, the top-level continuation, the
base environment, and any sharing. `wiring` holds `B` fixed and enumerates
every closed context `C[·]` with one hole. The hole's `intL` may be bound to
any enclosing binder, the k-th costing 2k bits. Each `C[B]` must meet
`\n. C[B] (⌜M⌝ ++ n) = \n. M n` on 91 programs, with the reference's normal
forms as goldens. The 178 is a 32-bit context. Unless marked, the counts below
are around the 168's body.

**Around the 165's body.** Every context giving a machine of at most 174 bits,
14,856,126 in all, fails or is capped (68,017 capped, of which 16,144 are
certified divergent), so no non-strict machine of this shape is below 175
conditional on the remaining caps (`searches_165.json`). The four 32-bit
wirings below survive with the new body as four 175-bit ties.

**Non-strict.** All 28,373,474 contexts of at most 32 bits were searched. None
of at most 31 bits survives (14.9 million contexts, with the capped ones
below), and exactly four 32-bit wirings survive, all 178 bits:

```text
((\x. x x) F) (\x. x x)          Tromp's intL dbl
(\a. a F a) (\a. a a)            dbl shared with the knot
(\a. a a (\x. x x)) F            F F dbl
(\a. a a a) (\a. a F)            G G G = intL G; the continuation is
                                 G = \a. a F, the base environment is F
```

The 16,420 contexts of at most 31 bits that exhausted their budget on three
probes without failing one are resolved as follows. On `λx.x`, the halting
ladder proves 12,449 of them divergent, which refutes them, since the answer
has a normal form. Of the 4 that halt, 3 give the wrong answer; the fourth,
`λS. (λf. f (f (B f))) (λg. g S g)`, is right on `λx.x` and provably
divergent on `λλ1`. The remaining 3,961 are undecided on `λx.x`, `λλ1` and
`λx.x x`, and none halts within 10⁷ β on `λx.x`, where the 178 takes 37 β.
They are why "no machine of this shape below 178" is conditional on these
3,961 diverging.

**Strict.** `--strict` adds Tromp's convention: no normal form within 2¹⁶ β
on seven open programs that use their free variable (`1`, `2`, `\2`, `1 1`,
`1 1` followed by the data bits `10`, `\\4`, and `1 (\\2) (\\1)`), each
terminated by `nil`. The seventh is Codex's (below); the searches of this
section ran with the first six, and a further probe only removes survivors, so
their exclusions stand. `battery.py --uni --strict` runs the same seven.
The tail must be concrete. With a symbolic tail,
`intL (intL intL)` at 182 bits passes: its base environment is the parser's
own dispatch handler, so a free variable re-parses the leftover input, and
with a symbolic tail that gets stuck and looks divergent. Terminated by
`nil`, it halts with garbage on `1`, `\2`, and `1 1` while the 190 diverges.
The filter rejects the 178 and the 182 and passes the 190.

Contexts of 33..38 bits (strict machines up to 184 bits), 1,270,679,556 in
all, have no survivor, with 2,375,084 left capped, and all four 178-bit
wirings fail the strict check. So no strict machine of this shape is below 185
bits, conditional on the capped contexts. Contexts of 39..43 bits
(30,967,305,647, about 13 hours) are unsearched; the 190 is a 44-bit
context.

The strict premium is a base environment with no normal form on lookup. The
cheap alternatives (`dbl`, `F`, the parser's own handler) all return values
or re-read input; Ω via a shared `dbl` (`\b. b (a a)`, 12 bits over the 178)
is the cheapest found. An environment with no normal form can still fail
strictness after object-level application: free indices alone diverge, but
`1 1` normalizes. Head divergence avoids that trap, and the 190 passes all seven
nil-terminated probes.

Logs: `wiring_uni.log`, `wiring_uni_strict.log`.

The probes are a filter, not a proof of strictness: a machine whose base
environment has no normal form can still return garbage on an open program
whose nil tail discharges the apparent recursion. The 187 and the 190 owe their
strictness to their base environment Ω, supplied by the top continuation
`λv. v Ω`: a free index looks itself up in Ω and diverges at the head. The
probes only corroborate it.

The seventh probe exists because the first six were not enough. Codex built
two machines around the 165 with the skip `list list next`:
`(\e. e (\v. v (\b. e))) P` at 186 bits (base environment `K P`) and
`(\e. e (\v. v (e e))) P` at 188 (base environment `P P`). Both meet the
contract and are capped on all six probes, but on `M = 1 K F` the variable
returns the selector `cons K R` with `R = ⌜K⌝ ++ ⌜F⌝ ++ N`, so
`U (⌜M⌝ ++ N) →* P R K F N →* R N`, a finite stream when `N` is nil. The 186
halts with a 183-bit normal form, the 188 with `I`. The argument uses only the
ordinary variable and APP values, so no skip expression makes a base
environment `K P_Q` strict, and for the 165's own parser no base environment
`P a` is strict either (open `2` reduces to `N`). Proofs and checks are in
`data/self-interpreter/reasoning_165/universal/`.

## 2. βη and let structure

`letopt` detects knots anywhere and lets identical subterms, knot heads
included, share a let (`letopt_uni.log`). On the 189-bit core of the 178 (510
candidate cuts) the best size is 180, 178, 178 at one, two, and three cuts:
`intL dbl` at two, the `dbl`-sharing form at three. On the 205-bit core of the
190 (528 candidate cuts) it is 196, 192, 190, with the 190 itself at three
cuts. `component` to slack 20 has 8,527,620 terms from the 178, nothing
below it and the two sharing forms as its only ties, and 5,563,972 terms from
the 190, nothing below it and no tie (`component_uni.log`). Around the 165's
body the 175's let structure through three cuts has minimum 175, and its
component at slack 16 has nothing below 175 and two ties
(`searches_165.json`).

## 3. Protocol constructions

Every construction below is a complete machine around the 168's body,
measured against the exact contract. None goes below 178.

| construction | bits | result |
|---|---:|---|
| `intL dbl` with `dbl` shared with the knot | 178 | tie |
| Triple self-pass `(\a. a a a) …` | 178 | tie |
| Alternating parser (below) | 179 | correct |
| Knot generator as the base environment | 179 | |
| `(\x. x x (x x x)) F`: a partially applied parser is a universal continuation | 180 | correct |
| The parser as its own continuation, `E (E E)` | 182 | |
| `(\e. e (\v. v (\b. e))) E` | 188 | not strict: open `1`, `2` reduce to `I` |
| `(\f. f f (\v. v (f dbl))) G` | 189 | not strict: nil erases Ω before it is forced |
| `(\e. e (\v. v (\b r. e))) E` | 191 | not strict: `1 1` reduces to `I` |
| Handler feedback, `H K v N = M N` | 206 / 204 | correct; handler recursion costs |
| A cell-returning parser fed back to itself, `(P input) P = M N` | 216 | correct; the transformer parser is too large |
| Parse under the binder (direct values) | 226 | correct |

The 180 works because every partially applied parser is a universal
continuation: `F y c (λz.M) N = M N`, since a value applied to the handler
gives M. The 165's reader breaks this: it applies the stream to the handler and
then to `s s s`, so a value read as a stream gives `P c (λz.M) = M (M (λz.M))`,
and `(\x. x x (x x x)) F` around the 165's body (177 bits) fails 648 of 667
programs (`merges.py`). Constructions that feed a value to the parser as its
input do not carry over to the new body.

**The alternating parser.** Let `B p` denote the parser body with recursive
entry `p`, and define

```text
A_x = λk. B (k x)
F   = λx. x A_x
E   = F F
R   = A_(A_F) F
U   = F F F = E F
```

Beta reduction gives `E = B R` and `R = B E`, so mutual structural induction
on the parsed syntax gives both E and R the ordinary parser law. Moreover
`F (λenv.M) = M` for closed M, so F is also the final universal continuation.
The machine is 179 bits and passes 667 exact normal-form probes, with one
skipped non-normalizing expected result. It changes the recursive carrier,
not just the wiring. Of 93 nearby consumer/knot variants, 16 pass a
91-program screen; sharing their recursive heads yields minima of 178, 179
and 180, the 178 being the known tie. Another 235 locally supplied-head and
459 collapsed-generator variants below 178 have no passing candidate at a
4,096-β screen. Those two screens did not retain separate wrong/capped counts,
so they are not exhaustive exclusions.

**Representation changes.** Checked against all closed programs through 18
bits plus deep-index extras, skipping the one expected result without a normal
form; finite batteries, not universal proofs:

| construction | raw → optimized bits | pass / fail |
|---|---:|---:|
| reference | 178 → 178 | 667 / 0 |
| alternating parser | 179 → 179 | 667 / 0 |
| forward raw final-variable suffix; skip at APP and output | 203 → 203 | 667 / 0 |
| curried lexical context; ABS is semantic identity | 462 → 378 | 667 / 0 |
| bare leaky cell | 176 → 176 | 3 / 664 |
| environment performs APP | 174 → 174 | 116 / 551 |
| diagonal cell with native APP | 174 → 165 | 86 / 581 |

The raw-suffix protocol saves eight bits in VAR, spends seventeen at APP, and
needs a different output continuation. It gains no laziness: under normal
order the original `cont s (s s s)` already delays skipping. A term with A
applications has A+1 variable leaves, matching A following-operand skips and
one final skip. The curried-context compiler represents a term at depth d by
abstraction over its d lexical arguments, so ABS only advances the context and
at depth zero the value is M itself, with output continuation I; the
generalized application, constant lifting and environment construction
needed to maintain that context overwhelm the saving. The diagonal negative
control uses `cell a e = λb r. b (e false a) r` and native APP `f g`; it
handles `λ1` and `λλ1` but fails `λλ2`, so its 165-bit optimized size is not a
universal machine. Handwritten and optimized forms were checked independently
on those counterexamples.

## 4. Joint searches

**Joint U-specific searches.** Complete machines of at most 177 bits on 91
rigid-tail probes, with no occurrence masks and no automatic escalation.
UNKNOWN means resource-capped, not refuted, and counts are candidate
assignments (different sketches can produce the same machine):

| coupled changes | assignments | survivors | unknown |
|---|---:|---:|---:|
| APP value × closed output continuation | 115,327 | 0 | 1 |
| cell × closed output continuation | 2,399,246 | 0 | 3,840 |
| whole VAR × closed output continuation | 710,347 | 0 | 1,530 |
| whole APP × closed output continuation | 2,081,609,943 | 0 | 92,578 |
| twelve APP spines × cell × variable value | 122,609,340 | 0 | 1,364,869 |

The output continuations range through 12 bits; each case's exact fill
limits are in `tools/self-interpreter/universal.py` and
`data/self-interpreter/universal.json`. The twelve spines are both
associations of all permutations of `env`, `f`, and `g`, each occurring once;
cell and variable value share a 29-bit budget, each at most 27. The sole APP
value/output cap is the literal Ω value with the ordinary output
continuation, which `I I` rejects analytically. The other caps are open.

**Strict wiring families.** Six scoped families around `E`, `G` or `dbl`,
through 189 bits: 310,283 fills, no strict machine below 190. One family, an
arbitrary context around `G` with up to 27 bits, leaves 282 capped. Bodies
changed by the self-interpreter's protocol variants: 1.68 million, no strict
survivor, 2,613 capped, and the sub-178 non-strict subset is clean. Whole-VAR
fills under five top continuations: 72,504,149, no strict survivor, 161,954
capped.

## 5. Algebraic constraints

**Diagonal decoding does not make native application free.** Suppose an
encoding e respects β-equivalence, translates application directly, and
decodes diagonally:

```text
e(M N) = e(M) e(N)       e(M) e(M) = M
```

Then `e(I) = e(I I) = I` and `e(K K) = K`. Because `(K K) I = K`,
`e(K) = e(K K) e(I) = K I`. But `(K I)(K I) = I`, contradicting the required
diagonal result K. A native-APP solution must therefore distinguish some
β-equivalent programs internally; the argument does not exclude such
intensional encodings.

**The cheap diagonal environment change is too costly.** With `h(e) = e e`,
transform a reader into `λe. f (e e)`. VAR grows from two to eleven bits, so a
replacement cell q must be at most fifteen bits even to tie, and it needs
`q q = cell x (e e)`. Of the 539 terms through fifteen bits in the two ambient
variables, 138 mention both; none satisfies even the weaker head law
`q q K N = x` with N rigid. All checks terminate, and the Python and Rust
normalizers agree exactly.

## 6. Boundaries

Open:

- the strict contexts of 39..43 bits around `B` (30,967,305,647);
- the 282 capped fills in the arbitrary-context-around-`G` family, and the
  capped assignments of §4;
- the 51,873 unexcluded caps among the wirings around the 165's body, and the
  strict wirings around it beyond Tromp's and the parser-applying base
  environments excluded in §1;
- a coordinated representation that exploits reachable relationships between
  control and values. The experiments above narrow several specific
  implementations of that idea; they do not prove 175 minimal.
