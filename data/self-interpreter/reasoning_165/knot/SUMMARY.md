(•̀ᴗ•́) **No sub-165 result. A reader-carried knot does work:** I built a 192-bit interpreter whose only syntactic self-application is the existing `list list` inside the skip.

Full derivations and reproducible checks are in [derivations.txt](derivations.txt).

| Complete interpreter | Exact battery line | Idea |
|---|---|---|
| [reader_knot.lam](reader_knot.lam) | `192 bits  ok=667 skip=1 fail=0` | The reader manufactures the recursive diagonal; no separate syntactic `x x` knot. |
| [root_next.lam](root_next.lam) | `214 bits  ok=667 skip=1 fail=0` | Continuation-last NEXT lets the known-zero root use the Scott cell to supply the continuation application. |

Both also return the rigid suffix correctly when parsing Ω. These are finite checks, supplemented by the paper arguments below; no new Lean proof was checked.

A 189-bit attempted shrink, [one_binder_carrier.lam](one_binder_carrier.lam), exhausted the battery’s \(2^{20}\)-β budget on `I`. That is **unresolved**, not a refutation.

The useful identities use
\[
T_q=\lambda r.rq,\quad Z_q=\lambda u r.rq,\quad
H(q,c)=\lambda b.bZ_qc,\quad
R(q,c)=\lambda s.sH(q,c)(sss).
\]

**The reader can diagonalize a generator encoded as a zero arm:**
\[
R(q,c)Z_t\to^*tt.
\]
Indeed,
\[
R(q,c)Z_t
\to Z_tH(q,c)(Z_tZ_tZ_t)
\to^*T_tT_t
\to^*tt.
\]
Neither \(q\) nor \(c\) is evaluated. The handler can even be replaced by arbitrary \(A(s)\): `Z_t` discards it.

Consequently, for arbitrary reader instances,
\[
H_iR_j\to R_jZ_{q_i}c_i\to^*q_iq_ic_i.
\]
This genuinely escapes the handler-only exclusion by mixing the handler with a reader.

Two further extraction identities are:
\[
H(q,c)(\mathrm{cons}\ b\ r)\to^*rqc,
\]
by expanding the Scott cell, and, for \(s=\mathrm{cons}\ K\ r\),
\[
s(sH(q,c))\to^*q.
\]
For the latter, \(sH\to T_q\), hence \(s(sH)\to T_qKr\to q\). A leading-one cell instead gives \(crFr\).

The cross-composition law is
\[
H_iH_j\to^*c_jq_ic_i,
\]
because \(H_iH_j\to H_jZ_ic_i\to Z_iZ_jc_jc_i\). Therefore
\[
R_iR_j\to^*
c_jq_ic_i\,(c_iq_ic_iH_i)\,(R_jR_jR_j).
\]
Expand \(R_iR_j\) to \(H_iH_j(H_iH_iH_i)(R_jR_jR_j)\), then apply the preceding identity twice.

These identities were checked with small rigid-variable reductions; the unrestricted cross-composition law has the explicit proof above, since its final argument can prevent normalization.

The **192-bit construction** follows directly. Let \(B\,p\) denote the 165’s body with recursive parser \(p\), and define
\[
W=\lambda x.x\,I\,x\,Z_x,\qquad
G=\lambda x.B(Wx),\qquad E_*=WG.
\]
Then
\[
WG\to GIGZ_G
\to B(WI)GZ_G
\to R(Q(WI,G),G)Z_G
\to^*GG
\to B(WG).
\]
Thus \(E_*\to^*BE_*\). The provisional parser \(WI\) is never called during this bootstrap.

The usual structural parser induction therefore transfers, including divergent source programs. This does **not** assume that arbitrary fixed points are β-equal. Its cost is \((L,A,X)=(21,29,32)\): four extra lambdas, four extra applications and three index bits, totaling **+27 bits**.

There are two useful obstructions.

First, **a full parser cannot itself replace the encoded carrier** under this reader interface. For arbitrary
\[
P=\lambda c s.sH_c(sss),
\]
put \(T=PPP\). Head reduction gives
\[
T\to^*PH_PT\to^*T\,H_{H_P}\,(TTT).
\]
The same \(T\) returns at the head with additional arguments indefinitely. Head standardization therefore rules out a head normal form. Moreover,
\[
R_iP\to PH_i(PPP)\to^*T\,H_{H_i}\,(TTT),
\]
so that also diverges at the head. After unfolding, both the current parser and current NEXT have this two-lambda reader shape.

Second, **the current NEXT diagonal cannot replace \(E\,C\)**. Write
\[
A(f)=\lambda e a.f(\mathrm{cell}\ a\ e),\quad
V(f,g)=\lambda e.fe(ge),\quad
a_f=\lambda g.CV(f,g).
\]
For current NEXT \(q=q_C\),
\[
qq=Ek,\qquad kf=q(CA(f))(Ea_f)=Ed_f(Ea_f),
\]
where
\[
d_f=\lambda g.CA(f)(CA(g))(Ea_g).
\]
The cross-reader identity gives
\[
kf\to^*
C\,V(f,q_{d_f})\,d_f\,
(d_fq_{d_f}d_fH_{d_f})\,
((Ea_f)(Ea_f)(Ea_f)).
\]
On quoted `I` followed by \(N\), this produces **five arguments** at rigid head \(C\), versus the required two. β-reduction cannot remove that discrepancy.

A concrete checked separator uses \(C=\lambda a b c d e.e\): `q q` on quoted `I` returns \(N\), whereas `E C` returns a three-argument projection.

The shorter carrier \(T_t\) obeys a different law:
\[
R(q,c)T_t\to^*tZ_qc(ttT_t).
\]
It retains the active handler rather than manufacturing just \(tt\). This explains why deleting the unused binder from the 192’s carrier does not preserve its fixed-point proof.

The 214’s root shortcut is sound because every closed source starts with zero:
\[
(\mathrm{cons}\ K\ r)Z_QC\to rQC.
\]
Its shared parser and continuation-last NEXT satisfy the ordinary syntax recursion, but the additional argument plumbing overwhelms the shortcut.

My read is that **`R_i Z_t → t t` is a real remaining seam**. To beat 165, the generator carrier must also perform an existing semantic role—most naturally, the existing `Z_next` must serve as `Z_generator`. The obstructions above exclude using the current parser or NEXT unchanged. A successful construction would need different behavior on non-Boolean arguments while preserving NEXT’s Boolean cases and handling changing continuations.

All checks used at most two workers and completed in seconds. No enumeration was run; the repository remains unchanged.

