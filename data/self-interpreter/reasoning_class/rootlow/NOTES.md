# rootlow progress

## Orientation
Read BRIEF, BRIEF5, live class-bound section 3, rootnf/rootlet/root reports.
Scope is k+d<=4; rootcert owns k+d=5. No delegation or consult-back.
Prior memory was checked for proof/finite-evidence discipline only; current
files supersede its stale 165/162 status.

The existing SelfintLambdaSink already proves the suggested exact sink,
join, scope and hole preservation. Merely sinking through one lambda with
pending operands does not yield a lambda-rooted reader. Any extension must
pay for consuming or reifying pending arguments and preserve the single hole.
The root report explicitly refutes unpriced pre-stream contraction.

Plan: prove a general lambda exposure certificate with exact source order,
then a closed arithmetic bridge for syntactic lambda prefixes and independent
pulls. Treat hand-offs through explicit certified joins and costs; never
assume source normalization or a one-hole reduct. Use coefficient counts
before constructing any finite cell, and leave over-cap cells explicit.

## Linear roots: first concrete reduction
For k=1 and j-free A, write f=#c(A), M=depth of sole x in B,
b=#c(B). Exact root linear contraction requires (f-1)M>=7+b+4j_B.
Ownership gives V>=5+total_c, and A containing a lambda gives L>=M+2.
Together with w<=45, only (d,f,M,b,L,V,tax)=(0,3,4,0,6,8,4..5)
or (0,4,3,0,5,9,3) remain. A histogram grammar with exact local prices
leaves 1,236 sources. All fail zero, no exceptions.

For k=1,j in A at depth1, direct contraction and contract-hoist require
(f+3)M>=7+b and f(M+1)+c_C>=4. These leave 169 scalar count profiles.
Tracking exact binder multiplicities, every local source price, and the
literal lambda prefix that consumes pending operands yields 128,967 sources
in four semantically disjoint cells f=1,2,3,4, each below 100,000. The
prefix cut is: h>t+1 leaves an unconsumed lambda on zero; at h=t+1 the last
binder receives the stream and must be used. This does not assume B normal.
Checks found no hits. Exceptions await Lean certification. No nonlinear
k>=2 row has been enumerated.

## Coverage audit and complete linear result
The coverage audit identified the third root-linear branch: j inside A at
source depth zero, but not literally A=j. It is NOT covered by the depth-one
hoist calculation. Its direct charge is (f+3)M>=7+b; if f=c_C=0,
contract-and-hoist ties all three coordinates and reaches the already excluded
direct-hole family. Thus f+c_C>=1. With the same ownership and local rules,
plus the inherited direct-hole-at-depth-zero and rigid shielding cuts, its
complete envelope is 5,449 sources. All fail; the 85 normalizer exceptions
are 57 head loops and 28 incompatible rigid heads, and each is exported for
Lean refutation. No source is omitted on a failed normalization.

All root-linear cases below 46 are now covered, conditional only on the
established current minimum-reader structural and depth/direct-hole results:
1,236 (A j-free) + 5,449 (j in A at depth0) + 128,967 (j in A at depth1).
There are 118 exceptions overall, all with individual Lean certificates.
No interpreter has been built, and no nonlinear low-k source has been probed.

New general bridge: head-reduce to the first lambda, colour residual copies
of j, keep the colour surviving on zero, replace all others by c. Every law
replays; no source normalization assumption is needed. Each dropped copy at
absolute depth h saves 3h-2 exactly. The endpoint's net price is total local
beta expansion minus that saving, with lambda-count/depth ties still required.
The cost and order lemmas are kernel-checked; semantic colouring/head-exposure
is handwritten. The literal-prefix pending-operand bridge preserves lambda
count and raises depth by one when j is outside its prefix. This is always
the low-depth situation. A weight-neutral exposure therefore does NOT transfer
minimality; a new semantic bound on hand-off expansion is still missing.

Nonlinear grammar counts only, after these source cuts: (k,d)=(4,0) 319867;
(3,1) 461751; (3,0) 1475233; (2,1) 1396400; (2,0) 4305944. No term inventory
or law check was run over these over-cap envelopes. They are not reader
survivors and not a completed nonlinear exclusion.

## Final verification
All nine Lean files compiled on the final sources. The largest file used
566,329,344 bytes RSS and 4.566 seconds. validation.json verifies all 1,354
original-source theorem mappings and source hashes, all 118 exception
certificates, the complete check partitions, and the 135,652 total. The
independent small-cost grammar audit passed all 497 raw terms. Positive
controls passed. Nonlinear count-only files now include exact price/L rows;
all cells and price rows sum to their advertised totals. REPORT.md is the
final deliverable. The full nonlinear root-low branch is explicitly open.
