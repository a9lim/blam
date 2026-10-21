Lane "reader-proof": prove the 165's reader optimal for every reader shape.
Your lane directory is /Users/a9lim/Work/blam/tmp/overnight/reader-proof/
(write only there). Read /Users/a9lim/Work/blam/tmp/overnight/BRIEF.md first,
then handler-bound.md, protocol-obstructions.md (the neutral-operand and inert
replacement parts) and the introduction and section list of cheap-tail-bound.md
in docs/classical/self-interpreter/.

Setting. Fix the 165's knot and NEXT region. The reader is any term
`λs. B` in the frame [s, next, cont, intL, x] (the 165's is
`λs. s H (s s s)`, 45 bits including its λ). The reader laws, on actual
streams, with next, cont, intL, x independent rigid variables and R, N rigid:

    B[cons K R / s]        =β R next
    B[1ⁿ0 ++ N / s]        =β cont (1ⁿ⁻¹0 ++ N) N        (n ≥ 1)

Known: readers of the form `s H T` with T ∈ {s s s, s, s s} cost ≥ 43 (body),
handwritten, independently reviewed (tens of pages of case analysis).
Neutral operands `s next`, `s cont`, `s (s s)` are dominated. Open: other
operands T (bare `next`, bare `cont`, operands containing λ), other spine
arities `s A1 … Ak` (k ≠ 2), bodies that are not in head normal form (a
β-redex at the head), and bodies whose head is reached only after reduction.

Goal: prove |B| ≥ 43 for EVERY B satisfying the laws, i.e. the theorem
"with the 165's knot and NEXT fixed, its reader is optimal", or delimit
precisely the residual cases you could not close. Prefer a UNIFORM argument
over another case explosion: e.g. (i) the variable law forces an unbounded
skip, which on a rigid-free frame forces a self-application of s (or of an
s-derived term) — price that; (ii) the two laws force head `R` on zero
streams and head `cont` on variables, which forces a dispatch whose result
depends on the first bit — price that; (iii) show these two requirements
cannot share syntax beyond what the 165 already shares. Use the existing
proven sub-results as lemmas where they apply. Rigour first: state exact
hypotheses; say what is handwritten versus checked. Small mechanical checks
of specific finite claims are fine (minutes, not hours); no enumeration of
reader bodies. Report as the brief says.
