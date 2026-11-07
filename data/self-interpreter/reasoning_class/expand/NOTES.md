# expand lane — running theory notes

## 1. Orientation and logical boundary

Read BRIEF.md, BRIEF5.md, the current class-bound §§2–4, STATUS's reader
entry, and rootlow/rootnl/root/shared/adv6/type reports. The current source
minimum is over all-length one-hole reader laws, ordered by (weight,
source lambda count, hole depth). No other lane is being consulted and all
writes stay in this directory.

The inherited LambdaFloor applies only to global minima. A first-lambda
endpoint repaired to one j has exact net expansion e, but positive e loses
minimality, and e=0 can lose the lambda/depth tie-break. An upper bound on
e alone is not sufficient. A no-minimality endpoint floor must dominate the
same source-to-endpoint cost, not merely supply 46.

There is an important quantifier issue in the proposed refutation: at a
fixed weight bound 45, scoped one-hole sources form a finite set modulo
alpha, and a reader necessarily has a finite first-lambda weak-head trace.
Consequently some finite maximum expansion exists. Unbounded expansion at
fixed 45 cannot refute its existence. A growing-budget construction can
refute a proposed constant/polynomial bound, but not every source-budget
bound. Nor would a correct reader above 45 refute a hypothesis restricted
to global minima below 46.

Work in progress: formulate the exact descent/charged-image implication;
investigate source control-flow, administrative lambda exposure, and
explicit expanding hand-offs. No new lower bound or counterexample yet.

## 2. A live, exponentially expanding hand-off

Let I=λa.a, F=λp x.p(x x), and
H=λv n s.s v (λu.s (λq.c) (s s u)) n. Let numeral m be λf p.f^m p,
X_0=I, X_(m+1)=X_m X_m. Then

    R_m = numeral m F H I j
        ->h* λs.s X_m (λu.s (λq.c) (s s u)) j = T_m.

X_m ->* I, so both laws hold at every unary length. Exact prices:
w(R_m)=84+5m, w(T_m)=40+6*2^m. The first-lambda trace takes 2m+4
head beta steps. At m=4: source 104, endpoint 136, expansion +32.

Compress the numeral by D_k=λx.x ... x (k uses) and Two=Church 2:
P_k=D_k Two F H I j. For k=2,3,4 its Church index is 4,16,65536,
and w(P_k)=96+4k, namely 104,108,112. First-lambda endpoint weights
are 136,393256,and 40+6*2^65536. Every source has j at depth 0 and
the requested root multiplicity k. No j is duplicated, so hole repair
does nothing. Only k=2 was expanded in computation; the larger endpoints
are mathematical formulas, not materialized data.

Every node of X_m is needed to produce I, and remains needed when used as
the first handler in each reader law: replacing a node by a fresh rigid
atom makes a persistent rigid head. Thus support alone cannot bound the
expansion. The source F can be replaced by I with the same laws (the
iteration on I then does nothing), saving 11 source bits. More globally,
the canonical 46 reader is beta-equivalent. These sources are explicitly
not global minima and are above 45. They refute neither the desired
below-46 theorem nor existence of an expansion maximum at fixed budget.

check_witnesses.py tested exactly the five literal sources m=0..4 and
compressed k=2 on Z,U1..U8, their exact first-lambda endpoints and prices,
and 88 small payload-node replacements in total. It priced k=3,4 without
expansion. Successful run: ~0.006 seconds, ~20.4 MB RSS, one thread.
The initial control assertion had the canonical leaf count written as 9
instead of 8; corrected before the successful run. No semantic test failed.

## 3. Kernel check and stronger growth statement

Expansion.lean now proves, for every natural m, payload reduction to I,
the exact endpoint price, literal R_m ->* T_m, full reader laws for both,
and w(R_m)=84+5m. It also proves the concrete two-use source's head trace
(104 -> 136), and the three-use 108 source's beta reduction to the
393256-weight endpoint and its full reader laws. The latter proof normalizes
only the small Church-numeral prefix to Church 16; it never materializes
the expanded endpoint. Literal R_m with F replaced by I is also a full
reader and saves exactly 11 source bits. Final compile: 0.36 s wall,
447,594,496 bytes maximum RSS, -j2. Printed axioms are only propext,
Classical.choice and Quot.sound. The proof of the first weak-head endpoint
for all m is handwritten; the exported general relation is Betas, while
the 104 example additionally has a checked 19-head-step trace.

There is an elementary-theory extension without any computation: let
M_t be t left-associated Church Twos, m_1=2 and m_(t+1)=2^m_t. Then
Q_t=(λx.x x) M_t F H I j has exactly two root uses, one depth-zero j,
source weight 86+18t, and endpoint T_(m_t^m_t). Its first-lambda endpoint
weight is 40+6*2^(m_t^m_t). This refutes every fixed-height elementary
source-size bound when minimality and the specific 45 ceiling are omitted.
The proof is Church exponentiation plus the R_m identity. It is handwritten,
not a new kernel theorem, and does not refute the remaining minimum case.

## 4. Exact missing claim and unsuccessful routes

The logically weakest remaining assertion is the absence of an all-law,
one-hole global minimum R of weight <=45 in the residual root grammar.
For a valid repaired first-lambda endpoint U with expansion e, the
pointwise charged floor w(U)>=46+e is equivalent to w(R)>=46. It is not
supplied by the ordinary endpoint floor and should not be relabelled a
weaker lemma. A usable factorization must independently cover the source
by endpoint families F_i, upper prices e<=E_i, and unconditional floors
for every one-hole reader U in F_i: w(U)>=46+E_i.

A descent alternative needs a law-preserving one-hole replacement S that
is lexicographically strictly smaller than R, or a lambda-rooted S no
larger in the full (weight, lambda count, depth) order. In terms of U,
the simplification must save more than e in weight, or exactly e with
the requisite lambda/depth comparison. There is no justification for
assuming that an expanded endpoint's local minimality filters hold.

Attempt outcomes: Lift prices only literal stream lambdas, and no
zero-cost transport through a general hand-off was derived. Role support
records which nodes must run but not when their behavior can be replaced
by a smaller library; the exploding identity trees need every node.
Replacing the stepper by I in this family shows the additional semantic
information a successful source-level argument must exploit. No universal
version for the remaining <=45 profiles has been proved.

## 5. Final boundary

REPORT.md is complete in the requested format. It states ROOT, its exact
charged-endpoint reformulation, the sufficient family/offset factorization,
and the full lexicographic descent alternative. The fixed-budget finiteness
argument sharpens to at most 23 syntax nodes at weight 45, without any
enumeration. No <=45 nonlinear cell is claimed closed. All files and the
successful final Lean log are confined to this lane. No other agent was
contacted. The final answer returns the findings, not a promise to solve
the remaining theorem.
