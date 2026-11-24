# Outside the separated class: the 2026-11-24 lanes

One session of reasoning lanes aimed at a sub-162 self-interpreter *outside*
the separated class of `docs/classical/self-interpreter/class-bound.md`. Each
lane was given one of the class's exits (§5 there) and asked for a
construction; the `forcing` lane was given a claimed argument that the
contract forces the 162's architecture and asked to break it. No interpreter
below 162 was found. The results are in `interpreter.md` §3 (the exact slot
checks) and §6 ("Variants outside the separated class"), and in
`class-bound.md` §5.

The tree keeps what those sections cite. `tools/self-interpreter/battery.py`
checks any `.lam` here; the failing ones are kept because their exact failure
is the result.

| path | what it is |
|---|---|
| `recursion/parser-return.lam` (`-u`, `-s`) | the variable arm returning through the parser, `\u. s (p c) (s s c)` (Codex): a correct 168; with the junk `u` or `s` it is 166 or 167 and fails |
| `recursion/left-diagonal.lam`, `borrow-generator.lam`, `next-as-seed.lam` | APP's second parse restarted from the left value (`f f`, `x f`), and the variable arm re-entering the generator on NEXT (Codex): 159, 163 and 161 bits, all failing |
| `returns/tag_tail_145.lam`, `next_marker_149.lam`, `parser_lookup_157.lam` | variable arms that return `k F r`, `k NEXT s`, and `k (p s) N` with a Scott-pair cell (Codex): all fail on `\x.x` |
| `stream/kform.lam` | the reader `s K (s F NEXT) (s (\q. c) (s s s))` with a junk-free variable arm (Claude): a correct 171 |
| `stream/sel_cell25.lam`, `sel_dual.lam`, `dual_inline.lam` | pairs of the 163-165 variants, built to check that their costs add: 164, 165, 164 |
| `forcing/shared-diagonal.lam` | one `h h` as the knot's diagonal on a 0-tag and the skip on a variable (Codex): a correct 173 |
| `forcing/child-suffix.lam`, `child-answer.lam` | callers that read their child's first bit and supply part of a variable child's return (Codex): 181 and 195 |
| `forcing/replay-unary.lam`, `replay-left.lam` | a variable's rest, and APP's left child, replayed through the parser (Codex): 181 and 189 |
| `forcing/tag-entry.lam`, `terminal-pointer.lam` | a worker with its own root adapter, 166 + 21, and a changed return protocol with one, 170 + 29 (Codex) |
| `timefree/skip-by-generator.lam`, `skip-by-parser.lam`, `skip-by-reparse.lam`, `skip-by-self-projection.lam` | the variable's skip as a parser call (Claude): `s x s` and `s (\q. p) s` are correct at 166 and 168; `s p` and `p F s` fail at 160 and 168 |
| `timefree/named-stream.lam` | the 162 with NEXT's stream named rather than passed by eta: 173, the baseline for a design that reads a child's stream twice |
| `consult/shared-lift.lam` | Gemini's combinator `\x \y. c (\e. x e (y e))` shared by APP and the variable arm, where `f F r = c r`: a correct 175 |
| `checks/hole_*.log` | `blam selfint hole` on the 162 with the real knot and NEXT in scope: the variable arm at 23-27 bits, the first operand and the arm jointly, APP at 31-36 bits |
