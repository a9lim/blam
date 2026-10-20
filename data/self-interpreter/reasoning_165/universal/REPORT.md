# Universal-boundary result

No sub-175 non-strict machine, sub-187 strict machine, or sub-165 self-interpreter found. The concrete result is a 186-bit **non-strict** universal machine that survives all six existing strictness probes but is refuted by a 19-bit open program. There is an exact, size-independent obstruction for the entire environment family that produced it.

All artifacts are in this directory. Repository files were read only. Every battery used `battery.check(..., threads=2)` and unoptimized compilation. Each full battery took approximately 2.5 seconds. There were no enumeration runs.

## Complete constructions

Let P be the 165 with its skip changed from `list list list` to `list list next`; P has 166 bits. K and F denote the BLC zero and one booleans, respectively.

| File | Bits | Exact battery line | Idea |
|---|---:|---|---|
| `int166_skip_next.lam` | 166 | `166 bits ok=667 skip=1 fail=0 int166_skip_next.lam` | Change an erased skip argument to `next`, preserving all genuine-stream parsing while changing boolean-input behavior. |
| `uni186_skip_next_Kparser.lam` | 186 | `186 bits ok=667 skip=1 fail=0 uni186_skip_next_Kparser.lam` | `(\p. p (\v. v (\b. p))) P`, using K P as the base environment. |
| `uni188_skip_next_parser_parser.lam` | 188 | `188 bits ok=667 skip=1 fail=0 uni188_skip_next_parser_parser.lam` | `(\p. p (\v. v (p p))) P`, using P P as the base environment. |

Each source has a matching exact `.blc` file. `candidates.log` and `identities.log` contain the observations. Both universal machines are non-strict: on `(free_1 K) F` terminated by F, the 186 returns a finite Scott stream and the 188 returns I. All six existing nil-terminated strictness probes were CAPPED at 2^16 beta for both machines; those caps are not divergence proofs.

The 185-bit K-parser environment with the unmodified reader is already in the record after translating its 168-based size down by three. The new construction is the coordinated one-bit skip change, which changes all six strictness-filter outcomes. It is not offered as a new successful strict wiring.

## Correctness of the modified interpreter and both universal machines

The record proves the identity `s s = K rest`, where rest follows the first zero of a genuine finite bit prefix. Consequently **every** third argument T gives `s s T ->* rest`; T need not terminate. For completeness:

- If `s = cons K r`, then `s s ->* K r`.
- If `s = cons F r`, then `s s ->* r r`.

Induction over the leading ones reaches the first case. Replacing the third occurrence of `list` by `next` therefore leaves every parser transition on genuine encoded terms unchanged. Each recursive subterm also has a first zero before the arbitrary tail. The 165's structural parser proof consequently applies unchanged except for this skip reduction. This is a mathematical reduction argument, not a new Lean verification.

For closed M, P consequently returns `lambda env. M` and the exact tail N, including when M diverges. For any base environment A,

`P (lambda v. v A) (code(M) ++ N) ->* (lambda env. M) A N -> M N`.

Take A = K P or A = P P for the two complete machines. This proof does not rely on the finite battery or on M having a normal form.

## Exact off-protocol identities

Write a parser reader in the form

`P_Q c s = s H_c Q(c,s)`, with `H_c = lambda b. b Z_c c`.

Z and Q may contain the recursive parser, continuation, stream, and other captured terms. The following identity is independent of them:

`P_Q c K F -> K H_c Q F -> H_c F -> F Z_c c -> c`.

Thus **P_Q c K F =beta c** for this entire reader family.

For the skip family `Q(c,s) = s s T`, there is also

`P_T c F -> F H_c (F F T) -> T[c,s:=F]`.

In particular:

- original skip T = s: `P_s c F =beta F`;
- T = next: `P_next c F =beta next_c`;
- T = c: `P_c c F =beta c`;
- T = recursive parser: `P_p c F =beta p`.

`check_identities.py` verified all eight displayed specializations (the four F-input laws and four K/F laws) by exact beta normal forms with the recursive parser p and continuation c rigid. Substitution stability makes the identities valid when those rigid terms are replaced by the actual recursive parser and continuation.

## A strictness obstruction at every size

Consider **any** parser in the reader family above, preserving the ordinary variable and APP representation, with universal boundary

`U_Q = P_Q (lambda v. v (K P_Q))`.

Use the open program `M = (free_1 K) F` with arbitrary suffix N. Set

`R = code(K) ++ code(F) ++ N`, and `r = cons K R`.

The variable leaf returns exactly r. The two following closed arguments denote K and F, so the parsed closure is beta-equivalent to

`lambda e. (r e) K F`.

The universal boundary therefore reduces as follows:

`U_Q (code(M) ++ N)`
`=beta r (K P_Q) K F N`
`->* P_Q R K F N`
`->* R N`.

The last step is the preceding K/F identity. Taking N = F makes R F the finite Scott suffix after R's first bit. It has a normal form. A free index was evaluated and applied twice, so this refutes strictness in the required operational sense, not just syntactic rejection of open inputs.

The exact code of M is `0101100000110000010` (19 bits). The 186's computed normal form has 183 bits and is saved in `strictness_witness.nf.blc`. The entire identity was also checked with N rigid, not merely with N = F.

This obstruction holds for every Q and every term size within the stated reader and environment family. Changing only the third skip argument cannot repair the K-parser environment. It is not a lower bound for arbitrary machines.

A second exact obstruction is useful for the original 165. Since `P_s c F = F`, no partially applied parser `P_s a` can be a strict base environment: on open variable 2, with `r = cons F (cons K N)`,

`r (P_s a) N ->* P_s a F (cons K N) N ->* F (cons K N) N -> N`.

This holds for every a, even a dependent on the parsed value, because a is erased. It excludes that entire original-reader environment family, not only the six tested examples.

## Remaining prospects

The new one-bit change demonstrates that off-protocol behavior can move substantially while the complete parser contract remains fixed. This is a real degree of freedom for universal wirings, but the six existing strict probes can be fooled cheaply. The 19-bit witness above should accompany any candidate using parser-derived environments.

For a strict improvement along this route, a new design must avoid exposing the parser through K P, or change the handler/read structure enough to break `P c K F = c`. A different skip alone cannot do it. For the non-strict target, these constructions offer no saving: changing an environment that closed values erase cannot by itself remove the output decoder's cost. A coordinated value/control representation or reader/knot fusion remains the live boundary. No global optimality claim follows from this work.
