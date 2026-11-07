# Global lane: working record

Scope: theoretical lower bounds for the exact closed-source BLC interpreter
contract. Read BRIEF and all requested live documents, including the escape
lemma's corrected H0-H3 and review. No consults, layout sweeps, or term
enumerations. All new files stay in this directory.

## Pinned findings

- The current unconditional floor is 40; it is a handwritten classification
  with kernel-checked components, not a Lean numeric theorem.
- Width/live-capture/nonlinear source minima are jointly sharp. Output roles
  can all descend from one source binder. These rule out additive origin
  counting without a price for the applicative control.
- Full remainder projection has a hard transfer ceiling 62, witnessed by
  rem70. Zero-tower contracts plus arbitrarily late origin growth stop at
  37 after transfer, witnessed by tower45.
- The value projection costs +9, not +8: K has 7 bits, F has 6 bits.
  Full value-only bounds remain a genuinely open route; the existing 162
  supplies only the ceiling 171 - 9 = 162.
- Escape Lemma A is conditional on a continuation with only C free. Its
  conclusion alone needs no new source binder: kappa = C satisfies it.
  Neither H0 nor the single-C-channel H3 follows from the global contract.

## New pinned obstruction to class conversion

For closed E define G(E) = lambda c s. s K (E c s) s.
Its size is |E|+30. On a zero-headed stream it reduces to E C S;
on a one-headed stream it reduces to S itself. Every closed BLC source
starts with zero, so G(E) preserves the interpreter contract. However every
member of the separated class satisfies the root-variable law
E C U_1(N) =beta C U_0(N) N. The guarded interpreter violates that law.
Thus conversion of arbitrary interpreters into the class by beta equality
or beta reduction is impossible. This uses the familiar first-bit gate as
an obstruction witness, not as a proposed size improvement.

A conversion preserving only the required closed-source contract is much
weaker. If g is the global minimum and s the class minimum, existence of an
additive-overhead-d semantic conversion is equivalent to s <= g+d: necessity
uses a global minimizer; sufficiency is the constant map to a class minimizer.
This does not rule out useful syntax-directed conversions, but a bare
existence theorem is just the desired numeric lower bound in disguise.

Next: kernel-check the guard and projection bookkeeping; formulate every
numeric ceiling with its precise hypothesis envelope rather than claim a
barrier against all future refinements.

## Verified artifacts and new probe ceilings

GlobalBarriers.lean now checks the +9 value transfer, 171/162 value ceiling,
70/62 remainder ceiling, guard correctness (+30), failure of the root-variable
law, non-beta-equivalence to any term satisfying that law, and the abstract
minimum/conversion equivalence. Only propext/Quot.sound (the arithmetic
conversion equivalence has no axioms).

guard192.lam is exactly 192 bits as written and after two-cut letopt;
standard battery with two workers: 192 bits ok=667 skip=1 fail=0 (2.28 s).
It is a deliberate off-domain witness, not a size candidate.

TowerBarriers.lean checks three new, restricted-domain constructions:

- towerValue57: all lambda^n.I values, arbitrary suffix, 57 bits. Its two
  clauses are P(1 R)->I and P(00 R)->K(P R). Value-projection transfer from
  only these obligations stops at 48.
- towerBoth88: the FULL interpreter contract on all lambda^n.I, arbitrary
  continuation/suffix, 88 bits. Infinite tower test families alone therefore
  stop at 88 even when both outputs are used jointly.
- poisonValue84: all lambda^n.I values AND all lambda^n.Omega values,
  arbitrary suffix, 84 bits. This includes the escape lane's poison value;
  the corresponding restricted value-projection transfer stops at 75.

All three proofs are structural inductions on n, based on seven symbolic
clauses of 7-11 head steps; not bounded tests of the families. No one of
these three is a self-interpreter. Sizes match separately exported .lam and
.blc files. All final family theorems use only propext/Quot.sound.

Additional live direction: Church application spines M_n = lambda f x.f^n x
have code 0000 (01110)^n 10. A dedicated CPS reader can use r r r to discard
the four-bit unary block 1110 following each initial application zero, and
to discard the terminal zero on the variable case. The checked body costs 104;
a four-cell prefix adapter and exact outer value wrapper give 154 for the
full contract on this family. This would cap a genuinely varying generic
application-spine family below 162, not only I-applications (whose values
all collapse to I).

## Final state

SpineBarriers.lean proves the full Church-spine contract at 154 and the
value-only contract initially at 123, polished to 121. The latter is a
single inner beta expansion of the value constructor: Lean checks one
beta contraction from 121 to the proved 123 source. Thus the value transfer
ceiling is 112. All five restricted public witnesses have all-depth family
proofs and exact wires pinned in Lean. They are explicitly not general
self-interpreters. REPORT.md contains all derivations and scope limits.

Final three-file Lean check passes without warnings, no sorry or added
axioms; substantive results use propext/Quot.sound. Source exports compile
byte-identically to all seven public .blc files (including 123 and 121).
Only complete interpreter built: guarded 192, battery 667/1/0; its own full
contract is also proved. No new global floor: remains 40. Full value-only
lower bounds and size-aware contract-only conversions are left open.

Every tool run used at most two workers. Longest run was fixed-witness
letopt at 21.950 s; no layout/term census or consult. All lane-owned
processes have exited. The frozen binary is removed after validation; the
check/polish scripts recreate it if needed.
