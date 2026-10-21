# Lane golf162 (Claude): golfing the 162-bit self-interpreter

(Saved by the coordinating seat from the lane's final message; the harness
refused the lane's own write.)

**No sub-162 interpreter found.** Inside the 162's architecture every component
sits at a local minimum that can either be proved by hand or pinned with a
bounded check, and the two moves that produced the 162 (the I-selection making
the zero arm free; NEXT as the trailing operand with the variable arm erasing
it) exhaust the cheap ways to route the second tag bit and the variable's
tail. A 161 needs a NEXT protocol or a recursion scheme the record has not
already priced at 166+.

Files: `lab.py` (harness), `ident1.py`, `ident2.py` (identity checks with
rigid names), `micro1.py` (two bounded sub-piece searches, 412 terms), four
`.lam` files. Computation: five batteries (2 threads, ~2 s each), one
`polish.py` run on three files (44 s wall), a dozen normalizations.

Notation: `K` = bit 0, `F` = bit 1, `[b]t = cons b t`, `s = [b]r` the whole
stream, `r = [b2]r2`, `N` the rest after a unary code. `V = λu. s (λq. cont)
(s s u)`, `NEXT = λbit1. intL (λexp. bit1 ABS APP)`.

## 1. Complete interpreters built

| file | bits | battery | letopt ≤3 cuts / `--no-inline` ≤2 | idea |
|---|---:|---|---:|---|
| `c163_selectfirst.lam` | 163 | `ok=667 skip=1 fail=0` | 163 / 163 | the 162 with select-first NEXT `intL (bit1 KA KB)`; +1 exactly as on the 165 |
| `c169_handlerI.lam` | 169 | `ok=667 skip=1 fail=0` | 169 / 169 | handler `λb. b I W`, `W = λr u. cont r (r r u)`, NEXT trailing |
| `c169_Vbind.lam` | 169 | `ok=667 skip=1 fail=0` | 169 / 169 | `V = λu. s (λq r. cont r (r r u))`: binding the tail instead of reopening |
| `c144_trailing.lam` | 144 | `ok=0 skip=1 fail=667` (fuel) | — | `s (λb. b I cont) NEXT`: the variable arm returns `cont r NEXT`; witness for §3.1 |

## 2. Exact identities (checked; rigid `cont`/`intL`/`N`/`NEXT`)

`E k s` is the 162's body `s I V_k NEXT_k` with the parser rigid.

1. **The parser is its own skip and tail extractor.** On every variable
   stream `E F (var n) = N` and `E K (var n) = r`.
2. **The parser on a Boolean is NEXT.** `E k K = E k F = NEXT_k`: a Boolean
   fed to the parser as its stream loses the bit.
3. `E k I = k`.
4. `E k (K X) = X (λu. X (X u)) NEXT_k`, `E k (K (K X)) = X NEXT_k`.
5. `E k [1]X = k X (X X NEXT_k)`, `E k [0]X = X NEXT_k`.
6. `s s u →* r` (0-tag) and `N` (variable) for every `u`;
   `s (λq. cont) = cont r` on both tags, so `V` is `cont r r` on a
   constructor and `cont r N` on a variable.

## 3. Obstructions and bounds (handwritten; leaves checked)

**3.1 Trailing-operand principle for the `s I` family.** In `s I O₁ … O_k`
the arms are `r O₂…O_k` and `O₁ O₂…O_k`; correctness forces `k = 2`,
`O₂ =_η NEXT`, `O₁ NEXT = cont r N`. With `k ≥ 3` the extra operands reach
the rigid `C` through a variable's return (`c144_trailing.lam`), or NEXT must
bind them (+8 before depth).

**3.2 `V` costs at least 28** (case analysis with a checked base). Of all 412
terms ≤ 14 bits over `[u, list, cont]`, the only one equal to `cont r` on
`var 1..3` is `list (λq. cont)` (12); those equal to `N` are `list list u`
(12), `list list list` (13), `list list cont`, `list list I` (14). So
`B = A₁' A₂` costs ≥ 26, plus `λu` = 28. `cont A₁ A₂` directly costs ≥ 31;
binding `r` ≥ 35; a `u`-headed body parses; a redex head adds a let. Not
exhaustive through 27 bits (248,614 terms; outside this lane's compute brief).

**3.3 The selector must be `I` or a handler.** Every other cheap `s X`
(`|X| ≤ 10`) loses `r` on the zero arm, puts the rigid `N` at the head on
the variable arm, or collides `var 1` with the constructor case.

**3.4 Handler forms stay ≥ 168 with NEXT as operand** (`λb r. b r W` is
Grok's 168; `λb. b I W` 169).

**3.5 Why NEXT keeps the +4 depth tax.** A let costs 7 and saves 4 (166);
one `cont` reference +8; APP's second parse cannot avoid the parser, so two
recursive references are forced and the `intL` let is optimal (the Lean knot
bound `26 + d₁ + d₂` is attained at depths 3, 4); binder exchanges +3 / +7.

**3.6 Thunked rests cannot be forced for free.** The root `C` cannot force
`K N`; forcing elsewhere costs ≥ +8 or breaks continuation uniformity.

**3.7 Nothing inside NEXT can use `list`** cheaply.

**3.8 Conditional minimality.** Under the 162's NEXT protocol, raw-tail
variable values and the knot, the reader costs ≥ 42 + 4 with `X = I`,
≥ 48 + 4 with a handler and NEXT as operand, ≥ 49 with NEXT let-bound, so
162 is minimal in this architecture up to the exhaustiveness of §3.2.

## 4. Honest read

Where a 161 could hide: a different second-tag object (an operand right for
both arms in a weaker sense than `r | N`); fewer recursive references (one
syntactic `intL` parsing both children, which needs the first child's value
carried into a re-entry); or a proof — §3.1–3.4 are mechanizable, and §3.2
becomes exhaustive with a 248,614-term hole check.
