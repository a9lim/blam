Lane "handlerlet" (wave 5): nonlinear lets inside a literal first handler.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md, then BRIEF5.md (updates and
HARD compute caps), then docs/classical/self-interpreter/class-bound.md §3,
then tmp/round4/loop/REPORT.md §6 and tmp/round4/needbinder/REPORT.md §§3–5
(how the whole-cell opener's nonlinear lets were closed: an exact
original-source budget, then a complete check of 18,640 sources with every
normalizer exception refuted in Lean).
Lane directory: /Users/a9lim/Work/blam/tmp/round4/handlerlet/ — write only there.

Problem. The loop lane proved: in a globally minimum reader
λs. s (λb. B) T1 … Tq below 46 with j outside B, every source redex inside
B has multiplicity 2–5 (erasing, linear and ≥ 6 excluded). The redex-free
case is closed (d1open), and so is the opener λs. s (λb t. B) j
(needbinder). Close the rest of this branch: B containing a nonlinear let
(λx. D) A with 2–5 uses, for every q, with j in some T_i — or construct a
reader with w ≤ 45 (splice into the 162 in place of `list I V NEXT`, NEXT
at the hole; battery; polish; report at once).
Route: the needbinder method. Derive the exact original-source budget for
B and the T_i from the price identity (loop/Prices.lean) and the arity
table of closed first handlers (adv5/REPORT.md: the zero and unary values
fix how many operands follow), so the inventory is small; then a complete
check per (q, multiplicity, position of c) cell under the caps, every cutoff
certified (Lean for normalizer exceptions, as needbinder did). If a cell
exceeds 100,000 terms, tighten its budget by hand first; if you cannot,
leave it open and say why.

Caps (hard, BRIEF5.md): ≤ 100,000 terms, ≤ 2 min, ≤ 1 GB, ≤ 2 threads per
check. State minimality wherever you use it. Append to NOTES.md as you go;
finish with REPORT.md in the BRIEF.md format.
