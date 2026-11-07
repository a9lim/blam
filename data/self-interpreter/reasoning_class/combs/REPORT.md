# combs: the four P4 combinators are unsolvable (kernel-checked)

(Saved by the coordinator from the lane's returned report.)

All four closed terms `Hk Hk` left open by the shared lane's P4 cut-offs
(#103, #116, #207, #233) have no head normal form, so `λs. T C` has none for
any C. Kernel-checked in `Combs.lean` (main theorem
`Combs.P4_open_cutoffs_exact`, stated for the cut-offs as p4cert.txt writes
them, `λs. (λx. x x) Hk C`; also `P4_open_cutoffs` for `λs. Hk Hk C`).
Axioms: propext, Quot.sound only; `Solvable` is the project's
`Blc.SelfintProbe.Solvable`; compiles in ~1.3 s from lean/.

Common argument (`unsolvable_of_advance`): if every member of a family makes
at least one head step to another member, no member has a head normal form;
each Hk Hk enters its family after finitely many steps; `unsolvable_app`,
`lam_solvable`, `solvable_step` lift to `T C` and `λs. T C`.

- H4 = λy. y (y (λz. y)) (λz. z y): U₀ = λz. H, U_{n+1} = λz. z Uₙ;
  H U_{n+1} R →h(2n+6) H U_{n+2} R; base H H →h4 H U₁ R₀.
- H3 = λy. y B y, B = λz w. z (w z), P = B (B B) B: exact cycle
  B P Y B R →h6 B P (Y P) B R for any Y, R; base H H →h50
  λw. B P Y₀ B R₁ R₂ (w (H (B B) B)).
- H1 = λy. y A y, A = λz w. w (z w): N₀ = H, N_{j+1} = A N_j; Lemmas G, C;
  H A N_k R →h(10k+16) H A N_{k+1} Q P (N_{k−1} (A A N_k)) R; base H H →h16.
- H2 = λy. y I D_y, D_X = λz. z (X z): M₀ = H, M_{j+1} = I D_{M_j}; Lemmas
  G₂, C₂; H I D_{M_k} R →h(7k+11) H I D_{M_{k+1}} P (M_k (M_k M_{k+1})) R;
  base H H →h1 H I D_H.

Mechanical checks (check.py with its own head reducer lam.py, exact syntax
with free trailing arguments): every base reduction and lemma instance for
k ≤ 12 with the predicted step counts; 3000 head steps from each Hk Hk with
no hnf; under a second. H1, H2 grow the argument stack without bound (≈0.39
and 0.14 per step); H3 is an exact cycle; H4 a single growing counter.

Files: Combs.lean, check.py, lam.py, sim.py.
