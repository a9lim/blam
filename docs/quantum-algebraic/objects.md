# The qALC objects: `U`, `M`, and `Omega_qALC`

This note characterizes the three infinite objects induced by the implemented
qALC machine.  It separates consequences of the machine contract from finite
census evidence and from the stronger universality statements that remain
open.  The operational definitions are in `architecture.md`; the Rust
approximants are in `../../src/qalc/semantics.rs`.

## 1. The global step `U`

Let `P` be the prefix-free set of closed ordinary BLC programs.  Program
identity is part of every qALC basis configuration, so the reachable Hilbert
space and step split canonically as

```text
H_reach = direct-sum_p H_p,          U = direct-sum_p U_p.
```

The static selector fixes one `U_p` from `p`: a structural Gate-2 machine, a
validated Gate-1 carrier, or the conservative history lift.  In every case a
basis column has finite support in `Z[omega]/sqrt(2)^k`, selection terminates,
and one sparse step is computable.  Thus `U` is an effectively presented
isometry on the closed reachable span, not merely a family of finite census
runs.

The halt and error subspaces have an explicit invariant compression.  On a
halted block,

```text
U = identity_output tensor identity_garbage tensor
    identity_terminal_control tensor S_tick,
```

where `S_tick |k> = |k+1>` is the unilateral shift; error blocks have the same
form.  This is the exact source of monotone halt mass.  It does **not** imply
that `U` is unitary on an ambient Hilbert space.  Nor does it establish a
globally minimal or unique reversible realization: validated sectors have the
local predecessor-fibre minimality theorem, while rejected sectors retain the
complete conservative history.

So the useful current characterization is:

- exact, total, sectorwise computable isometry;
- explicit unilateral terminal tails;
- direct-sum superselection by source program; and
- machine-relative interference, fixed by the token clock and merge
  discipline.

Ambient unitarity, a canonical Wold decomposition of the complete running
part, and uniqueness of the merge discipline are separate questions.

## 2. The output operator `M`

For a size cutoff `N` and clock `tau`, define the mathematical finite
approximant

```text
M_(N,tau) = sum_(|p| <= N) 2^(-|p|) rho_p(tau).
```

Every approximant is a finite-rank positive operator with computable exact
algebraic entries.  Rust computes it exactly whenever its typed scalar,
support, and evolution capacities accept the run; a `Capacity` result is a
resource outcome, not a different approximant.  If `N <= N'` and
`tau <= tau'`, then

```text
0 <= M_(N,tau) <= M_(N',tau')                    (Loewner order).
```

Moreover,

```text
Tr M_(N,tau)
  = sum_(|p| <= N) 2^(-|p|) mu_p(tau)
  <= sum_p 2^(-|p|)
  <= 1.
```

Positive monotone convergence therefore gives a positive trace-class limit
`M`; along any computable cofinal sequence the convergence is in trace norm,
and

```text
Tr M = sum_p 2^(-|p|) mu_p = Omega_qALC.
```

This is the right effective statement: `M` has an increasing sequence of
finite-rank exact-algebraic approximants in Loewner order.  Individual complex
off-diagonal coordinates are not scalar "left-c.e." quantities; complex
numbers have no compatible one-dimensional order.  The positive-operator
order is load-bearing.

The terminal factorization also gives a concrete interpretation of the
matrix.  Each new equal-time, equal-garbage, equal-control halt block adds one
fixed outer product `v v*`.  Consequently its diagonal records output mass,
while an off-diagonal entry records a pair of output branches that erased all
traced which-path information and halted synchronously.

## 3. Constant-overhead classical diagonal embedding

There is already one exact domination theorem, requiring neither circuit
compilation nor self-interpretation.  For every closed ordinary BLC term `p`,
set

```text
W(p) = lambda h. lambda t. p.
```

The map is injective and, under the BLC wire code,

```text
|W(p)| = |p| + 4,                  W(p) h t ->beta^2 p.
```

Because `p` is closed, neither new binder is referenced.  The qALC run is
effect-free.  By effect-free conservativity, if classical strong
normalization sends `p` to the closed normal form `x`, then

```text
mu_W(p) = 1,                       rho_W(p) = |x><x|;
```

and if `p` has no normal form, `mu_W(p) = 0`.

Define the classical BLC output semidensity and halting probability by

```text
m_BLC(x) = sum_(p normalizes to x) 2^(-|p|),
D_BLC    = sum_x m_BLC(x) |x><x|,
Omega_BLC = Tr D_BLC.
```

The programs in the image of `W` form a literal subset of the programs summed
by `M`.  All remaining summands are positive, hence

```text
M >= (1/16) D_BLC,                 Omega_qALC >= (1/16) Omega_BLC.    (1)
```

This is operator domination, not a numerical pattern in the bounded census.
It says that qALC's output prior contains the entire classical BLC prior on a
diagonal corner at four bits of description overhead.  In particular the
8-bit term `lambda h. lambda t. lambda x. x` contributes `2^-8`, so
`Omega_qALC >= 1/256` independently of every census clock.

Proof boundary: the injection, wire length, and beta identity are syntactic;
the Rust regression pins the exact rank-one contribution.  The universal
semantic clause uses the effect-free-conservativity contract from
`architecture.md` section 6.  The existing finite battery exercises that
contract, but the all-program statement is not presently a Lean theorem.

## 4. `Omega_qALC`

`Omega_qALC` is a left-c.e. real: enumerate finite program sets and clocks,
take the exact increasing traces above, and rationalize each computable
algebraic value from below.  The unconditional characterization is therefore

```text
1/256 <= Omega_qALC <= sum_p 2^(-|p|) <= 1,
Omega_qALC = Tr M,
Omega_qALC >= Omega_BLC / 16.
```

The current census reports finite lower approximants and halt-plus-running
upper brackets.  Clock agreement through a bounded size is evidence about
those rows, not a computability or randomness theorem about the limit.

Equation (1) also sharpens the randomness question.  The wrapper image is
decidable syntactically by peeling two lambdas and checking that the body was
already closed, so at the semantic-contract level its programs can be split
from all other programs, giving

```text
Omega_qALC = Omega_BLC / 16 + gamma
```

for another left-c.e. real `gamma`.  Therefore, **if** the classical BLC
halting probability is Solovay complete among left-c.e. reals, then so is
`Omega_qALC`, and it is Martin-Lof random.  The antecedent is not established
in this repository.  A small self-interpreter or Turing completeness alone is
not enough: the standard theorem needs an optimal prefix machine with
additive description overhead.  The 170-bit BLC interpreter consumes an
encoded term and does not by itself discharge that coding theorem.

## 5. What “universal `M`” must mean

The strong Gacs-style target is:

```text
for every lower-semicomputable semidensity A on l2(NF),
there is c_A > 0 such that M >= c_A A.                         (2)
```

Gacs introduced quantum algorithmic entropy from such a universal
semicomputable semidensity operator.  Infinite-dimensional versions are
subtle: Takisaka obtains existence under an additional assumption and leaves
its removal open.  Since qALC's output space is countably infinite, those
issues apply directly; (2) must not be inferred from finite-dimensional
H/T/CNOT circuit universality.

There is, however, a precise compiler criterion.  Suppose a prefix-free
description family `q` has target outputs `sigma_q`, and an injective qALC
compiler `C` satisfies

```text
|C(q)| <= |q| + c,                 rho_C(q) = sigma_q.
```

Then the same subset-of-positive-summands argument gives

```text
M >= 2^(-c) sum_q 2^(-|q|) sigma_q.                            (3)
```

Thus the remaining universality problem is not vague.  One must choose the
effective infinite-dimensional semidensity class, build a synchronized clean
compiler with a uniform additive code overhead, and verify the equality in
(3).  Gate 2 supplies exact finite coherent circuits; it does not yet supply
that monotone simulator or its coding theorem.

Primary references:

- Peter Gacs, [Quantum Algorithmic Entropy](https://arxiv.org/abs/quant-ph/0011046).
- Toru Takisaka, [On Gacs' quantum algorithmic entropy](https://arxiv.org/abs/1412.8547).
- George Barmpalias and Andrew Lewis-Pye,
  [Differences of halting probabilities](https://arxiv.org/abs/1604.00216),
  for the standard coincidence between universal prefix-machine halting
  probabilities and Martin-Lof-random left-c.e. reals.

## 6. Sharpened docket

1. Promote the wrapper theorem's semantic clause from contract plus finite
   battery to an all-program formal theorem for the pure token/readback path.
2. Determine whether classical `Omega_BLC` is Solovay complete under the
   actual closed-term wire language, or prove that its code geometry prevents
   standard optimal-prefix universality.
3. Fix the target class in (2), including its effective basis and
   infinite-dimensional lower-semicomputability convention; then construct or
   rule out the compiler required by (3).
4. Seek constant-overhead clean translations between qALC and qBLC before
   claiming any ordering between `Omega_qALC` and `Omega_success`.
5. Characterize the running part of `U`: merge-equivalence classes,
   reachability of finite ring vectors, and whether any useful canonical
   shift/unitary decomposition survives the program-sector split.
