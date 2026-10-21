(•̀ᴗ•́) **No sub-165 interpreter found.** Full constructions, proofs, and reproduction scripts are in [REPORT.txt](REPORT.txt).

| Complete interpreter | Exact battery line | Idea |
|---|---|---|
| [abs_driver.lam](abs_driver.lam) | `193 bits  ok=667 skip=1 fail=0` | Share the ABS constructor with the recursion driver. |
| [tagged_optional.lam](tagged_optional.lam) | `203 bits  ok=667 skip=1 fail=0` | Give the optional second value a solvable Scott wrapper. |

Both also return the rigid suffix when discarding the interpreted Ω value. Batteries used two workers and took 2.8 and 2.5 seconds. No enumeration or repository modifications.

**The cell/APP alias has an all-size obstruction.** Write \(K=\lambda xy.x\), \(F=\lambda xy.y\), \(I=\lambda x.x\), and let the current raw variable values be
\[
X_1^R=\operatorname{cons}K R,\qquad
X_{n+1}^R=\operatorname{cons}F(X_n^R).
\]
For every environment \(e\),
\[
e(KI)X_n^R =_\beta eF X_n^R =_\beta X_{n+1}^R e.
\]
Consequently the cheap lift
\[
L(f,g)=\lambda e.e f g
\]
satisfies \(L(KI,X_n^R)=_\beta X_{n+1}^R\). This is β equality: expand the Scott cell; no η assumption is needed.

Thus it compiles `I (var n)` as `var (n+1)`. In particular, `λa b. I b` and `λa b. a` acquire equal body values and equal outputs through the same ABS constructor, although their required normal forms differ. Church–Rosser gives a contradiction.

**No cell of any size repairs this alias while preserving bare variable values, canonical closed values, and the current ABS interface.** The symbolic identity was checked with rigid environment and suffix in Python and Rust. A different internal value interface can escape this theorem.

**Changing the mode-free builder’s marker cannot help.** Suppose, for any chosen marker \(q_0\),
\[
W f q_0 e =_\beta \lambda a.f(\operatorname{cell}(a,e)),\qquad
W f g e =_\beta f e(g e)
\]
for all raw parsed values \(g\).

Choose \(f_0=K(KI)\), \(g=K\Omega\), and \(e=I\). APP requires
\[
W f_0(K\Omega)I =_\beta I.
\]
Since \(K\Omega\) is unsolvable, genericity implies that replacing this entire argument by **any** \(q_0\) preserves normal form \(I\). ABS instead requires \(K(KI)\), a different normal form. Contradiction.

This extends the recorded argument from marker \(K\) to every marker, including one chosen as a function of \(f,e\). Merely adding leading lambdas to the divergent payload does not escape it. This is a handwritten proof using the standard genericity lemma, without a new Lean check.

The precise escape is:
\[
\mathrm{None}=K,\qquad
\mathrm{Some}(g)=\lambda n\,s.s g,
\]
\[
W f q e =
q\;(\lambda a.f(\operatorname{cell}(a,e)))
  \;(\lambda g.f e(g e)).
\]
Both desired equations now follow by β reduction. Crucially, `Some(K Ω)` has a head normal form.

The 203-bit construction realizes this escape. Its ABS and APP NEXT branches reduce to the original continuations for the respective actual tag bits; these identities were checked with rigid parameters. The unchanged reader and structural parser induction establish correctness even for divergent source terms. Its cost makes this packing repair uncompetitive.

**A suffix-independent discriminator exists:**
\[
T=\lambda t.t K K K I.
\]
It satisfies
\[
TK=_\beta K,\quad TF=_\beta K,\quad
T(\operatorname{cons}b r)=_\beta F
\quad(b\in\{K,F\}).
\]
For the last equation,
\[
\operatorname{cons}b r\,K K K I
\to K b r K K I
\to b K K I
\to K I
\to F.
\]
The suffix is never evaluated. Python/Rust checks include rigid and divergent suffixes.

This costs **37 bits**, or **36** with explicit sharing:
```text
(\k \t. t k k k (\x.x)) (\x \y.x)
```
It distinguishes booleans from Scott **bit** cells, not arbitrary parsed closures.

There is a small conditional lower bound: in the unshared template `λt.t K A B C` with closed fillers and these exact outputs, the equations force \(B=_\beta K\), \(C=_\beta I\), \(AI=_\beta F\), and \(AKI=_\beta K\). Neither closed term below seven bits, \(I\) or \(F\), works for \(A\). Therefore the template needs at least 37 bits. Sharing leaves that template; this is no general discriminator lower bound.

**The ABS-driver construction is exactly β-equivalent to the 165.** Define
\[
A f e a=f(\operatorname{cell}(a,e)),\quad
\delta=\lambda h.hh,\quad
H=A(\lambda e.e B\delta),\quad E=\delta H,
\]
where \(B\,c\,p\) is the parser body using continuation \(c\), parser \(p\), and `A exp` for ABS. Then
\[
E c
\to (\lambda e.e B\delta)(\operatorname{cell}(c,H))
\to B c(\delta H)
=B cE.
\]
The environment cell supplies both continuation and recursion. The exact unfolding took seven head β steps in the symbolic check.

More strongly, after removing the helper let, its finite knot generator and the actual checked-in 165’s generator have identical β-normal forms in both Python and Rust. Congruence transfers the 165’s full contract. The explicit sharing nevertheless adds 28 bits.

My remaining hypothesis is **a solvable control carrier supplied implicitly by the reader or recursion**, retaining a visible head even when its value is Ω. A distinct internal interface could evade both impossibility arguments. Explicit packing costs too much, and the discriminator is too expensive as a separate helper; some existing Scott applications would need to supply that work. I have no concrete sub-165 realization or justified new local enumeration to recommend.

