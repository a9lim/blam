# share46 working notes

Read the round-4 contract and requested source-bound, role, and factory records.
No consultation or coordination with other lanes. No enumeration.

## First paper result: a tightly priced factory-specialization family

Consider

    R = lambda s. ((lambda h. s (h F) (h B)) (lambda x. x A)) j,

where A is arbitrary over x,s,c, B arbitrary over h,s,c, neither contains j.
The selector specializes to I for every A: (lambda x.x A) F -> F A[F/x] -> I.
The full source price is exactly w=39+|A|_[x,s,c]+|B|_[h,s,c].
For w<=45, the operands total <=6. A c leaf costs 4, B c leaf costs 4;
any compound containing c costs at least 7. Therefore the necessary c can
occur only as a bare operand. The other operand must cost <=2 and is its
nearest binder: A=c,B=h or A=x,B=c. Both have w=45 and reduce to
lambda s.s I (c c) j. They satisfy zero but return c c j on unary.
This excludes the entire stated family at <=45, including arbitrary source
redexes in A,B; the budget prevents any such redex from appearing.
This is a source-price proof, not a price assigned to two expanded copies.

Next: check these two pinned boundary cases, compare the related external
let and delta-sharing contexts, and investigate stream-derived sharing.

## Second paper result: rigid absorber uniformity

If j is fresh for T,Y and T j =beta Y, substitution j:=A gives T A =beta Y
for every A. Thus a helper extracting N by absorbing j cannot specialize
at the same argument position to I or K c, and a full unary-arm helper
cannot specialize there to I either. This is unrestricted in lambda count,
source redexes, and the syntax of A; it does NOT cover a helper T B j versus
T A, or sharing the helper inside different surrounding applications.

## Additional constructions priced before checking

1. Delta sharing: T=lambda x.x x; T F=I, T s=s s, so
   lambda s.((lambda h.s(h F)(lambda u.s(lambda q.c)(h s u)))T)j.
   L=7,V=11,X=10,d=1, w=68. Correct by expansion to the canonical reader.
2. H_c sharing, fused return: T=lambda x.x(lambda q.c); T F=I and
   T s=s(lambda q.c), so
   lambda s.((lambda h.s(h F)(lambda u.h s(s s u)))T)j.
   L=7,V=11,X=11,d=1, w=69. Saves six versus the supplied factory-75
   construction by using h s instead of s(h I).
3. Put that T above lambda s: (lambda h s.s(h F)(lambda u.h s(s s u))j)T.
   L=7,V=11,X=8,d=2, w=70.
4. Put both lets above s with external hole:
   ((lambda h n s.s(h F)(lambda u.h s(s s u))n)T)j.
   L=8,V=12,X=11,d=0, w=71.
5. One-lambda c factory: T=lambda x.x c; T F=I,T K=lambda q.c.
   lambda s.((lambda h.s(h F)(lambda u.s(h K)(s s u)))T)j.
   Compared with the supplied factory-75, T saves three and K versus I
   costs three, so w=75. Correct by direct expansion.
6. Use the stream itself to provide the factory argument instead of a
   literal F: lambda s.((lambda h.s h(h c))(lambda x.x A))j,
   A free only in s. w=31+|A|_[x,s,c]+4. A=s s costs8: w=43;
   A=s I costs9: w=44. Both have the correct zero law. Neither has the unary
   law: if s=U_n and r=U_(n-1)=cons b' t, then s T=r, T c=c A,
   so the result is c A b' t j, a four-argument c spine. This excludes the
   entire stated family at every size, not merely these two choices of A.

## Let-placement arithmetic for the first family

External definition:
  (lambda h s.s(h F)(h B)j)(lambda x.x A)
has w=44+|A|_[x,c]+|B|_[s,h,c] >=49 if c occurs.
External definition and external hole:
  ((lambda h n s.s(h F)(h B)n)(lambda x.x A))j
has w=45+|A|_[x,c]+|B|_[s,n,h,c] >=50 if c occurs.
These prices are for these precise placements only. Other outer contexts
remain open; no claim that all hoisting is costly is justified.

## Completion

REPORT.md contains the complete source-family statements and proofs, exact
boundary cases, five successful beta-equivalent refactorings, and remaining
open mechanism. checks.py checked ten hand-selected sources in one process
(0.0017 seconds), with all predicted prices and outcomes matching. Separate
arithmetic spot-check of the external-hole factory source returned
(False,(50,50,0,6,9,6,1,1)), matching its lower-bound equality witness.
No passing candidate <=45; no complete interpreter, battery, polish, or Lean
claim. No other lane was contacted. All writes remained in share46/.

## Coordinator follow-up: capturing closures and Delta (paper derivations)

Read close46 REPORT sections 1-2 and the relevant Lean statements; did not
rerun their Lean checks or contact the lane. Its exclusion closes the old
fixed-continuation factory grammar, not the new capturing helper below.

Capturing helper G_c=lambda x u.x C_1(x x u) obeys G_c F=I,
G_c I=C_1, G_c K=C_2, and G_c s=the canonical absorbing arm.
Definition price 30 in [c], 31 in [s,c]. Local shared reader
lambda s.((lambda g.s(g F)(g s))G_c)j has w=67 by 27+6+3+31.
External-definition version has w=70. These solve the different-closures
role equations, but their full context is much too expensive.

A repair restriction: D_AB(s)=s Delta A B_s j with A independent of s,j
and B_s j-free can NEVER be a j/N dual. Zero gives A j=j; substituting for
rigid j forces A X=X for every X. At n=1 the output is therefore
U_0 A B j=A K N B j=K N B j=N j, independently of B. This is an all-size
source-family impossibility, not a finite search or just a failed B choice.

Padding transformation: P_s=cons F s. Then P_s Delta=s and P_s P_s=s s,
so D(P_s)=s I(s s)j. It is r j on zero and N on EVERY positive unary input.
Thus the n=1 repair removes Delta but changes the zero-side result.
This is an exact identity; lambda s.s I(s s)j has w=24 versus old D's 34.
Combining with H_s=s(lambda b r.b I(c r)), which is I on zero / c r on unary,
gives a correct reader of w=54 (L5,V10,X4,d1). H_s costs28 in [s,c]; dual
body costs18 with j priced0, plus application2, stream binder2, hole tax4.
It does not beat 46; it is a complete priced repair, not a sub-162 claim.

Other direct captured-tail construction: lambda s.s(lambda b r.b r
(lambda u.c r(r r u)))j has w=52 (known Grok shape), with G K r=r and
G F r=lambda u.c r(r r u). Revisited only as the baseline for the new
capturing helper, not presented as a new algorithm.

Next: pin these exact sources and equations in a tiny checker; derive one
fixed all-length Delta repair that preserves j on zero, price it, and then
extend REPORT.md with all exact boundaries. No term enumeration.

Further paper result: a literal Delta replacement repairs its short case:
  D_K(s)=s K I(s s)j.
Zero: K I(ss)j=j. Unary: F I(ss)j=(ss)j=N, every n>=1.
K costs7 versus Delta8, so the dual reader weight drops34->33 and the
complete near-reader drops56->55. This is not a novel cheap algorithm:
reassociating the work as s K j(s s s) gives the known full reader53.
Neither beats46. K is expressly NOT an atom of close46's grammar; it builds
closures capturing arbitrary computed arguments, unlike fixed C_m.

A direct K closure captures the computed return:
  lambda s.s I(K(s C_1(s s s)))j.
The body s C_1(s s s) costs22, K+application9 gives arm31, so full w49.
It contracts to the already recorded ignore-u reader of weight47; it is not
a new algorithm. A K-sharing version uses F k=I and k A=K A:
  lambda s.((lambda k.s(F k)(k(s C_1(s s s))))K)j.
Predicted w60: six bits for I->F k, six capture-index bits, four let bits,
minus five for replacing the arm's literal K by k. No claimed general
minimum across different closures.

A postprocessor independent of s cannot repair D: if P j=j on zero, then
P X=X for every X by rigid substitution, in particular P(N j)=N j. A
stream-dependent repair can avoid this lemma but must receive more input
information, not merely the failed neutral value.

Pinned-check correction: shared_K is 67, not the paper estimate60. The
comparison forgot to charge the relocated 7-bit K definition after charging
replacement of the original arm's K by its bound reference. Correct delta
from49 is +6 selector +6 capture indices +4 let +7 definition -5 reference
replacement =+18. The first seven reader prices and outcomes matched.

Final helper-role diagnostic (handwritten, no further probes needed):
J_c=lambda x u.c x(x x u) has definition price27 in [c] and returns the
correct absorbing arm for a supplied tail r: J_c r=lambda u.c r(r r u).
But J_c A can NEVER be I: after applying a fresh v its result is rigid
c-headed, whereas I v=v. Thus direct tail capture saves three definition
bits versus G_c but destroys selector specialization. Similarly, a helper
Q_s=lambda x u.s C_1(x u) correctly captures x=s s on unary inputs but is
uniformly c-headed after its final application; no specialization is I.
These are exact template exclusions, not general closure lower bounds.

followup_checks.py final run: 8 fixed reader sources passed n1..3, four dual
sources had all predicted zero/n1/n2/n3 outputs, and seven exact source
identities normalized equally. One process, 0.0017 seconds. No enumeration,
Lean invocation, interpreter assembly, battery, or polish. Shared_K price
correction is documented above. Extend REPORT section6 now.
